<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

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
                    'image' => basename($banner->image),
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
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:' . config('filesystems.max_file_size', 5120),
            'order' => 'nullable|integer|min:0',
            'is_active' => 'required|boolean',
        ]);

        try {
            // Upload gambar ke public/img/banners
            $image = $request->file('image');
            $originalName = $image->getClientOriginalName();
            $imageName = now()->format('Ymd-His') . '-' . uniqid() . '-' . $originalName;
            $targetPath = 'img/banners';
            
            // Buat direktori jika belum ada
            if (!File::exists(public_path($targetPath))) {
                File::makeDirectory(public_path($targetPath), 0755, true);
            }
            
            $image->move(public_path($targetPath), $imageName);
            
            // Simpan data banner
            $banner = Banner::create([
                'title' => $validated['title'],
                'description' => $validated['description'],
                'image' => $imageName,
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
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
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
                    'image' => basename($banner->image),
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
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'description' => 'sometimes|required|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg|max:' . config('filesystems.max_file_size', 5120),
            'order' => 'sometimes|integer|min:0',
            'is_active' => 'sometimes|boolean',
        ]);

        try {
            $banner = Banner::findOrFail($id);
            
            // Update gambar jika ada
            if ($request->hasFile('image')) {
                // Hapus gambar lama jika ada
                if ($banner->image) {
                    $oldImagePath = public_path('img/' . $banner->image);
                    if (File::exists($oldImagePath)) {
                        File::delete($oldImagePath);
                    }
                }
                
                // Upload gambar baru
                $image = $request->file('image');
                $originalName = $image->getClientOriginalName();
                $imageName = now()->format('Ymd-His') . '-' . uniqid() . '-' . $originalName;
                $targetPath = 'img/banners';
                
                // Buat direktori jika belum ada
                if (!File::exists(public_path($targetPath))) {
                    File::makeDirectory(public_path($targetPath), 0755, true);
                }
                
                $image->move(public_path($targetPath), $imageName);
                $validated['image'] = $imageName;
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
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        try {
            $banner = Banner::findOrFail($id);
            
            // Hapus gambar jika ada
            if ($banner->image && File::exists(public_path('img/' . $banner->image))) {
                File::delete(public_path('img/' . $banner->image));
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
