@extends('layouts.admin')

@section('namaPage')
{{ $kategori->nama_kategori }}
@endsection

@section('main-content')
@if (session('success'))
<div class="alert alert-success border-left-success alert-dismissible fade show" role="alert">
    {{ session('success') }}
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
        <div class="d-flex align-items-center justify-content-between">
            <a href="{{ route('kategori-wakil.index') }}" class="btn btn-secondary btn-sm shadow">
                <i class="fas fa-arrow-left"></i> Kembali
            </a>
            <div>
                <a href="{{ route('kategori-wakil.edit', $kategori->id) }}" class="btn btn-primary btn-sm shadow mr-2">
                    <i class="fas fa-edit"></i> Edit
                </a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="mb-4">
                    <h4 class="font-weight-bold text-primary">Detail Kategori Wakil Pialang</h4>
                    <hr class="mt-2">
                </div>
                
                <div class="row mb-4">
                    <div class="col-md-2 font-weight-bold">ID Kategori</div>
                    <div class="col-md-10">{{ $kategori->id }}</div>
                </div>
                
                <div class="row mb-4">
                    <div class="col-md-2 font-weight-bold">Nama Kategori</div>
                    <div class="col-md-10">{{ $kategori->nama_kategori }}</div>
                </div>
                
                <div class="row mb-4">
                    <div class="col-md-2 font-weight-bold">Jumlah Wakil Pialang</div>
                    <div class="col-md-10">{{ $kategori->wakil_pialang_count ?? '0' }}</div>
                </div>
                
                <div class="row mb-4">
                    <div class="col-md-2 font-weight-bold">Dibuat Pada</div>
                    <div class="col-md-10">{{ $kategori->created_at->format('d F Y H:i:s') }}</div>
                </div>
                
                <div class="row">
                    <div class="col-md-2 font-weight-bold">Diperbarui Pada</div>
                    <div class="col-md-10">{{ $kategori->updated_at->format('d F Y H:i:s') }}</div>
                </div>
            </div>
        </div>
    </div>
</div>

@if(isset($kategori->wakilPialang) && $kategori->wakilPialang->count() > 0)
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Daftar Wakil Pialang</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Wakil Pialang</th>
                        <th>Email</th>
                        <th>Telepon</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($kategori->wakilPialang as $index => $wakil)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>{{ $wakil->name ?? 'N/A' }}</td>
                        <td>{{ $wakil->email ?? 'N/A' }}</td>
                        <td>{{ $wakil->phone ?? 'N/A' }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endif

@endsection
