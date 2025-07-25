<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $banners = Banner::orderBy('order')->get();
        return view('banner.index', compact('banners'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('banner.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:5120',
            'order' => 'nullable|integer|min:0',
            'is_active' => 'required|boolean',
        ]);

        try {
            // Upload gambar
            $imagePath = $request->file('image')->store('banners', 'public');
            
            // Simpan data banner
            Banner::create([
                'title' => $validated['title'],
                'description' => $validated['description'],
                'image' => $imagePath,
                'order' => $validated['order'] ?? 0,
                'is_active' => $validated['is_active']
            ]);

            return redirect()->route('banner.index')
                ->with('success', 'Banner berhasil ditambahkan');

        } catch (\Exception $e) {
            return redirect()->back()
                ->with('error', 'Gagal menambahkan banner: ' . $e->getMessage())
                ->withInput();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $banner = Banner::findOrFail($id);
        return view('banner.show', compact('banner'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $banner = Banner::findOrFail($id);
        return view('banner.edit', compact('banner'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $banner = Banner::findOrFail($id);
        
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'order' => 'nullable|integer|min:0',
            'is_active' => 'required|boolean',
        ]);

        try {
            $data = [
                'title' => $validated['title'],
                'description' => $validated['description'],
                'order' => $validated['order'] ?? 0,
                'is_active' => $validated['is_active']
            ];

            // Jika ada file gambar baru diupload
            if ($request->hasFile('image')) {
                // Hapus gambar lama jika ada
                if ($banner->image && Storage::disk('public')->exists($banner->image)) {
                    Storage::disk('public')->delete($banner->image);
                }
                
                // Upload gambar baru
                $data['image'] = $request->file('image')->store('banners', 'public');
            }

            $banner->update($data);

            return redirect()->route('banner.index')
                ->with('success', 'Banner berhasil diperbarui');

        } catch (\Exception $e) {
            return redirect()->back()
                ->with('error', 'Gagal memperbarui banner: ' . $e->getMessage())
                ->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $banner = Banner::findOrFail($id);
            
            // Hapus file gambar jika ada
            if ($banner->image && Storage::disk('public')->exists($banner->image)) {
                Storage::disk('public')->delete($banner->image);
            }
            
            $banner->delete();
            
            return redirect()->route('banner.index')
                ->with('success', 'Banner berhasil dihapus');
                
        } catch (\Exception $e) {
            return redirect()->route('banner.index')
                ->with('error', 'Gagal menghapus banner: ' . $e->getMessage());
        }
    }
}
