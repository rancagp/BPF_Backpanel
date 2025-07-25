@extends('layouts.admin')

@section('title', 'Detail Banner: ' . $banner->title)

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h3 class="card-title">Detail Banner: {{ $banner->title }}</h3>
                    <div>
                        <a href="{{ route('banner.edit', $banner) }}" class="btn btn-warning">
                            <i class="fas fa-edit"></i> Edit
                        </a>
                        <a href="{{ route('banner.index') }}" class="btn btn-secondary">
                            <i class="fas fa-arrow-left"></i> Kembali
                        </a>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="text-center mb-4">
                                @if($banner->image && Storage::disk('public')->exists($banner->image))
                                    <img src="{{ asset('storage/' . $banner->image) }}" alt="{{ $banner->title }}" class="img-fluid rounded" style="max-height: 300px;">
                                @else
                                    <div class="alert alert-warning">Gambar tidak ditemukan</div>
                                    <div class="bg-light d-flex align-items-center justify-content-center rounded" style="height: 200px;">
                                        <span class="text-muted">Tidak ada gambar</span>
                                    </div>
                                @endif
                            </div>
                            <table class="table table-bordered">
                                <tr>
                                    <th>Status</th>
                                    <td>
                                        <span class="badge {{ $banner->is_active ? 'bg-success' : 'bg-secondary' }}">
                                            {{ $banner->is_active ? 'Aktif' : 'Tidak Aktif' }}
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Urutan</th>
                                    <td>{{ $banner->order }}</td>
                                </tr>
                                <tr>
                                    <th>Dibuat</th>
                                    <td>{{ $banner->created_at->format('d M Y H:i') }}</td>
                                </tr>
                                <tr>
                                    <th>Diperbarui</th>
                                    <td>{{ $banner->updated_at->format('d M Y H:i') }}</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-8">
                            <h4>{{ $banner->title }}</h4>
                            <hr>
                            <div class="mb-4">
                                <h5>Deskripsi:</h5>
                                <p class="text-justify">{{ $banner->description }}</p>
                            </div>
                            
                            <div class="mt-4">
                                <form action="{{ route('banner.destroy', $banner) }}" method="POST" class="d-inline" onsubmit="return confirm('Apakah Anda yakin ingin menghapus banner ini?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">
                                        <i class="fas fa-trash"></i> Hapus Banner
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
</div>
@endsection
