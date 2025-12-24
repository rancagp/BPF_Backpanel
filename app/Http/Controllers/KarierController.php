<?php

namespace App\Http\Controllers;

use App\Models\Karier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class KarierController extends Controller
{
    public function index(Request $request)
    {
        $query = Karier::query();

        // Filter by status
        if ($request->has('status') && !empty($request->status)) {
            $query->where('status', $request->status);
        }

        // Order by created_at desc
        $karier = $query->latest()->paginate(10);

        return view('karier.index', compact('karier'));
    }

    public function create()
    {
        return view('karier.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'judul' => 'required|string|max:255',
            'lokasi' => 'required|string|max:255',
            'tipe_pekerjaan' => 'required|string|in:Full Time,Part Time,Kontrak,Magang',
            'deskripsi' => 'required|string',
            'kualifikasi' => 'required|string',
            'tanggal_berakhir' => 'required|date',
            'status' => 'required|in:Dibuka,Ditutup',
            'gambar' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        Karier::create($validated);

        return redirect()->route('karier.index')
            ->with('success', 'Lowongan berhasil ditambahkan');
    }

    public function show($id)
    {
        $karier = Karier::findOrFail($id);
        return view('karier.show', compact('karier'));
    }

    public function edit($id)
    {
        $karier = Karier::findOrFail($id);
        return view('karier.edit', compact('karier'));
    }

    public function update(Request $request, $id)
    {
        $karier = Karier::findOrFail($id);
        
        $validated = $request->validate([
            'judul' => 'required|string|max:255',
            'lokasi' => 'required|string|max:255',
            'tipe_pekerjaan' => 'required|string|in:Full Time,Part Time,Kontrak,Magang',
            'deskripsi' => 'required|string',
            'kualifikasi' => 'required|string',
            'tanggal_berakhir' => 'required|date',
            'status' => 'required|in:Dibuka,Ditutup',
        ]);


        $karier->update($validated);

        return redirect()->route('karier.index')
            ->with('success', 'Lowongan berhasil diperbarui');
    }

    public function destroy($id)
    {
        $karier = Karier::findOrFail($id);
        
        
        $karier->delete();

        return redirect()->route('karier.index')
            ->with('success', 'Lowongan berhasil dihapus');
    }
}
