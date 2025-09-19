<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BannerController extends Controller
{
    /**
     * Display a listing of active banners.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $banners = Banner::where('is_active', true)
            ->orderBy('order')
            ->get()
            ->map(function ($banner) {
                return [
                    'id' => $banner->id,
                    'title' => $banner->title,
                    'description' => $banner->description,
                    // Ubah jadi URL full
                    'image' => $banner->image ? url('storage/' . ltrim($banner->image, '/')) : null,
                    'order' => $banner->order,
                    'is_active' => $banner->is_active,
                    'created_at' => $banner->created_at,
                    'updated_at' => $banner->updated_at,
                ];
            });

        return response()->json([
            'success' => true,
            'data' => $banners
        ]);
    }

    /**
     * Store a newly created banner in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'order' => 'nullable|integer|min:0',
            'is_active' => 'required|boolean',
        ]);

        try {
            // Simpan gambar ke storage/app/public/banners
            $imagePath = $request->file('image')->store('banners', 'public');

            $banner = Banner::create([
                'title' => $validated['title'],
                'description' => $validated['description'],
                'image' => $imagePath, // simpan path relatif
                'order' => $validated['order'] ?? 0,
                'is_active' => $validated['is_active']
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Banner berhasil ditambahkan',
                'data' => $banner
            ], 201);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal menambahkan banner',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Display the specified banner.
     */
    public function show($id)
    {
        try {
            $banner = Banner::findOrFail($id);

            return response()->json([
                'success' => true,
                'data' => [
                    'id' => $banner->id,
                    'title' => $banner->title,
                    'description' => $banner->description,
                    'image' => $banner->image ? url('storage/' . ltrim($banner->image, '/')) : null,
                    'order' => $banner->order,
                    'is_active' => $banner->is_active,
                    'created_at' => $banner->created_at,
                    'updated_at' => $banner->updated_at,
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Banner tidak ditemukan',
                'error' => $e->getMessage()
            ], 404);
        }
    }

    /**
     * Update the specified banner in storage.
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'description' => 'sometimes|required|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg|max:2048',
            'order' => 'sometimes|integer|min:0',
            'is_active' => 'sometimes|boolean',
        ]);

        try {
            $banner = Banner::findOrFail($id);

            // Jika ada file baru
            if ($request->hasFile('image')) {
                // hapus gambar lama
                if ($banner->image && Storage::disk('public')->exists($banner->image)) {
                    Storage::disk('public')->delete($banner->image);
                }

                // upload gambar baru
                $validated['image'] = $request->file('image')->store('banners', 'public');
            }

            $banner->update($validated);

            return response()->json([
                'success' => true,
                'message' => 'Banner berhasil diperbarui',
                'data' => $banner
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal memperbarui banner',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Remove the specified banner from storage.
     */
    public function destroy($id)
    {
        try {
            $banner = Banner::findOrFail($id);

            // hapus file gambar
            if ($banner->image && Storage::disk('public')->exists($banner->image)) {
                Storage::disk('public')->delete($banner->image);
            }

            $banner->delete();

            return response()->json([
                'success' => true,
                'message' => 'Banner berhasil dihapus'
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal menghapus banner',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
