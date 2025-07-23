@extends('layouts.auth')

@section('main-content')
<div class="container d-flex align-items-center" style="min-height: 100vh;">
    <div class="row justify-content-center w-100">
        <div class="col-lg-5 col-md-7">
            <div class="bg-white rounded shadow-sm p-4">
                <!-- Error Message Container - Fixed Height -->
                <div class="error-container" style="min-height: 40px; margin-bottom: 0.5rem;">
                    @if ($errors->any())
                        <div class="alert alert-danger py-1 px-2 mb-2" role="alert" style="font-size: 0.75rem; line-height: 1.2;">
                            <ul class="mb-0 ps-3">
                                @foreach ($errors->all() as $error)
                                    <li style="font-size: 0.75rem;">{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                
                <!-- Register Form -->
                <div class="text-center mb-3">
                    <img src="{{ asset('img/logo-kpf.png') }}" alt="Logo KPF" class="img-fluid" style="max-height: 50px;">
                    <h2 class="h5 mt-2 mb-1 fw-bold" style="color: #2c3e50;">Buat Akun Baru</h2>
                    <p class="text-muted small mb-0">Isi data berikut untuk mendaftar</p>
                </div>

                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    
                    <div class="row g-2">
                        <div class="col-md-6">
                            <div class="mb-2">
                                <label class="form-label fw-500 small mb-1">Nama Depan</label>
                                <div class="input-group input-group-sm">
                                    <span class="input-group-text bg-light"><i class="fas fa-user text-muted"></i></span>
                                    <input type="text" class="form-control form-control-sm" name="name" value="{{ old('name') }}" required autofocus>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-2">
                                <label class="form-label fw-500 small mb-1">Nama Belakang</label>
                                <div class="input-group input-group-sm">
                                    <span class="input-group-text bg-light"><i class="fas fa-user text-muted"></i></span>
                                    <input type="text" class="form-control form-control-sm" name="last_name" value="{{ old('last_name') }}" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-2">
                        <label class="form-label fw-500 small mb-1">Alamat Email</label>
                        <div class="input-group input-group-sm">
                            <span class="input-group-text bg-light"><i class="fas fa-envelope text-muted"></i></span>
                            <input type="email" class="form-control form-control-sm" name="email" value="{{ old('email') }}" required>
                        </div>
                    </div>

                    <div class="mb-2">
                        <label class="form-label fw-500 small mb-1">Password</label>
                        <div class="input-group input-group-sm">
                            <span class="input-group-text bg-light"><i class="fas fa-lock text-muted"></i></span>
                            <input type="password" class="form-control form-control-sm" name="password" required>
                            <button class="btn btn-outline-secondary toggle-password" type="button" style="font-size: 0.8rem;">
                                <i class="fas fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-500 small mb-1">Konfirmasi Password</label>
                        <div class="input-group input-group-sm">
                            <span class="input-group-text bg-light"><i class="fas fa-lock text-muted"></i></span>
                            <input type="password" class="form-control form-control-sm" name="password_confirmation" required>
                            <button class="btn btn-outline-secondary toggle-password" type="button" style="font-size: 0.8rem;">
                                <i class="fas fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn-login btn-sm py-2 mt-1">
                            <i class="fas fa-user-plus me-2"></i>Daftar Sekarang
                        </button>
                    </div>
                </form>

                <div class="text-center mt-4 pt-3 border-top">
                    <p class="small text-muted mb-0">
                        Sudah punya akun? 
                        <a href="{{ route('login') }}" class="text-primary text-decoration-none fw-medium">
                            Masuk disini
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
<script>
    // Toggle password visibility
    document.querySelectorAll('.toggle-password').forEach(button => {
        button.addEventListener('click', function() {
            const input = this.parentElement.querySelector('input');
            const icon = this.querySelector('i');
            
            if (input.type === 'password') {
                input.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                input.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        });
    });
</script>
@endpush
@endsection
