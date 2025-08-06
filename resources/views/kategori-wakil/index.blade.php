@extends('layouts.admin')

@section('namaPage', 'Kategori Wakil Pialang')

@section('main-content')

@if (session('success'))
<div class="alert alert-success border-left-success alert-dismissible fade show" role="alert">
    {{ session('success') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session('error'))
<div class="alert alert-danger border-left-danger alert-dismissible fade show" role="alert">
    {{ session('error') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session('status'))
<div class="alert alert-success border-left-success" role="alert">
    {{ session('status') }}
</div>
@endif

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <div class="d-flex justify-content-between align-items-center">
            <h5 class="m-0 text-gray-800 font-weight-bold">Daftar Kategori Wakil Pialang</h5>
            <a href="{{ route('kategori-wakil.create') }}" class="btn btn-primary btn-sm shadow">
                <i class="fas fa-plus"></i> Tambah Kategori
            </a>
        </div>
    </div>
    <div class="card-body">
        @if($kategori->count() > 0)
            <div class="row">
                @foreach($kategori as $item)
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                    <div class="card border-left-success shadow h-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-folder-open fa-2x text-success mr-3"></i>
                                <div>
                                    <h5 class="font-weight-bold text-gray-800 mb-1">{{ $item->nama_kategori }}</h5>
                                    <span class="badge badge-info">{{ $item->wakil_pialang_count }} Wakil Pialang</span>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-end">
                                <a href="{{ route('wakil.index', $item->slug) }}" 
                                   class="btn btn-sm btn-success mx-1"
                                   title="Lihat Daftar">
                                    <i class="fas fa-eye"></i>
                                </a>
                                <a href="{{ route('kategori-wakil.edit', $item->id) }}" 
                                   class="btn btn-sm btn-primary mx-1"
                                   title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <button type="button" 
                                        class="btn btn-sm btn-danger mx-1" 
                                        data-toggle="modal" 
                                        data-target="#hapusModal{{ $item->id }}"
                                        title="Hapus">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Hapus -->
                <div class="modal fade" id="hapusModal{{ $item->id }}" tabindex="-1" role="dialog"
                    aria-labelledby="hapusModalLabel{{ $item->id }}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="hapusModalLabel{{ $item->id }}">Konfirmasi Hapus</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Apakah Anda yakin ingin menghapus kategori "{{ $item->nama_kategori }}"? 
                                Semua data wakil pialang dalam kategori ini juga akan dihapus.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                <form action="{{ route('kategori-wakil.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Hapus</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        @else
            <div class="text-center py-4">
                <i class="fas fa-folder-open fa-4x text-gray-300 mb-3"></i>
                <p class="text-muted">Tidak ada data Kategori Wakil Pialang.</p>
                <a href="{{ route('kategori-wakil.create') }}" class="btn btn-primary">
                    <i class="fas fa-plus"></i> Tambah Kategori
                </a>
            </div>
        @endif
    </div>
    
    @if($kategori->count() > 0)
    <div class="card-footer">
        <div class="text-right text-muted">
            <p class="mb-0"><strong>Jumlah Kategori:</strong> <span>{{ $kategori->count() }} Kategori</span></p>
        </div>
    </div>
    @endif
</div>

@endsection