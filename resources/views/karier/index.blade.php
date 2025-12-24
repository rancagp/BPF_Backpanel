@extends('layouts.admin')

@section('namaPage', 'Manajemen Karier')

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
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
            <h5 class="m-0 text-gray-800 font-weight-bold">Daftar Lowongan Pekerjaan</h5>
            <a href="{{ route('karier.create') }}" class="btn btn-primary btn-sm shadow">
                Tambah Lowongan
            </a>
        </div>
    </div>
    <div class="card-body">
        
        <div class="table-responsive rounded overflow-hidden m-0 border shadow">
            <table class="table table-striped table-hover mb-0" width="100%" cellspacing="0">
                <thead class="thead-dark">
                    <tr>
                        <th width="5%" class="text-center align-middle">No</th>
                        <th width="20%" class="text-left align-middle">Kota</th>
                        <th width="40%" class="text-left align-middle">Posisi</th>
                        <th width="20%" class="text-left align-middle">Email</th>
                        <th width="15%" class="text-center align-middle">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($karier as $item)
                    <tr>
                        <td class="text-center align-middle">{{ $loop->iteration }}</td>
                        <td class="text-left align-middle">{{ $item->nama_kota }}</td>
                        <td class="text-left align-middle">
                            {{ $item->posisi }}
                        </td>
                        <td class="text-left align-middle">
                            {{ $item->email }}
                        </td>
                        <td class="align-middle">
                            <div class="d-flex justify-content-center">
                                <a href="{{ route('karier.edit', $item->id) }}" 
                                   class="btn btn-sm btn-primary w-100 mx-1" title="Edit">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                <button type="button" class="btn btn-sm btn-danger w-100 ml-1" data-toggle="modal"
                                    data-target="#deleteModal{{ $item->id }}" title="Hapus">
                                    <i class="fas fa-trash"></i> Hapus
                                </button>
                            </div>

                            <!-- Modal Konfirmasi Hapus -->
                            <div class="modal fade" id="deleteModal{{ $item->id }}" tabindex="-1" role="dialog"
                                aria-labelledby="deleteModalLabel{{ $item->id }}" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="deleteModalLabel{{ $item->id }}">Konfirmasi
                                                Hapus</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Tutup">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Apakah Anda yakin ingin menghapus lowongan <strong>"{{ $item->posisi }}"</strong> di <strong>{{ $item->nama_kota }}</strong>?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Batal</button>
                                            <form action="{{ route('karier.destroy', $item->id) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">Ya, Hapus</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Modal -->
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="5" class="text-center">Belum ada lowongan pekerjaan.</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
        
    </div>
    <div class="card-footer">
        <div class="text-right text-muted">
            <p class="mb-0"><strong>Jumlah Lowongan:</strong> <span>{{ $karier->total() }} Lowongan</span></p>
        </div>
    </div>
</div>
@endsection

@push('styles')
<style>
    .table th {
        font-size: 0.9rem;
    }
    .btn-sm {
        padding: 0.25rem 0.5rem;
        font-size: 0.875rem;
        line-height: 1.5;
        border-radius: 0.2rem;
    }
    .badge {
        font-size: 85%;
        padding: 0.35em 0.65em;
    }
</style>
@endpush

@push('scripts')
<script>
    // Auto close alert after 5 seconds
    $(document).ready(function(){
        window.setTimeout(function() {
            $(".alert").fadeTo(500, 0).slideUp(500, function(){
                $(this).remove(); 
            });
        }, 5000);
    });
</script>
@endpush