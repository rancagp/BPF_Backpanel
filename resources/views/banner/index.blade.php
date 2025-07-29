@extends('layouts.admin')

@section('namaPage', 'kelola Banner')

@section('main-content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Daftar Banner</h3>
                    <div class="card-tools">
                        <a href="{{ route('banner.create') }}" class="btn btn-primary">
                            <i class="fas fa-plus"></i> Tambah Banner
                        </a>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session('success') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    
                    @if(session('error'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            {{ session('error') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    
                    <table id="bannerTable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Gambar</th>
                                <th>Judul</th>
                                <th>Urutan</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($banners as $index => $banner)
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>
                                    @if($banner->image)
                                        <img src="{{ asset('storage/' . $banner->image) }}" alt="{{ $banner->title }}" style="max-width: 100px; max-height: 50px; object-fit: cover;">
                                    @else
                                        <span class="text-muted">Tidak ada gambar</span>
                                    @endif
                                </td>
                                <td>{{ $banner->title }}</td>
                                <td>{{ $banner->order }}</td>
                                <td>
                                    <span class="badge {{ $banner->is_active ? 'bg-success' : 'bg-secondary' }}">
                                        {{ $banner->is_active ? 'Aktif' : 'Nonaktif' }}
                                    </span>
                                </td>
                                <td>
                                    <a href="{{ route('banner.edit', $banner->id) }}" class="btn btn-sm btn-warning" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <form action="{{ route('banner.destroy', $banner->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Apakah Anda yakin ingin menghapus banner ini?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" title="Hapus">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</div>
<!-- /.container-fluid -->
@endsection

@push('styles')
<!-- DataTables -->
<link rel="stylesheet" href="{{ asset('adminlte/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('adminlte/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
@endpush

@push('scripts')
<!-- DataTables  & Plugins -->
<script src="{{ asset('adminlte/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('adminlte/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('adminlte/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('adminlte/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>

<script>
    $(function () {
        $("#bannerTable").DataTable({
            "responsive": true,
            "autoWidth": false,
            "order": [[3, 'asc']], // Urutkan berdasarkan kolom order
        });
    });
</script>
@endpush