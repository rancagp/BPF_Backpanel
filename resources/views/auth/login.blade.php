@extends('layouts.auth')

@section('main-content')
<div class="auth-container" style="background-color: #f8f9fa; min-height: 100vh; display: flex; align-items: center;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="bg-white rounded-3 shadow p-4 border" style="border: 1px solid #e0e0e0;">
                <!-- Logo Section -->
                <div class="text-center mb-4">
                    <img src="{{ asset('img/bpf-logo.png') }}" alt="BPF Logo" class="img-fluid mb-3" style="max-height: 100px;">
                    <h1 class="h4 fw-bold mb-2" style="color: #2B1A6C;">BESTPROFIT FUTURES</h1>
                    <p class="small mb-0" style="color: #6c757d;">Login ke akun Anda</p>
                </div>

                <!-- Error Message Container -->
                @if ($errors->any())
                <div class="alert alert-danger py-2 px-3 mb-3" role="alert" style="font-size: 0.9rem; border-radius: 8px; background-color: #FFEBEE; border-left: 4px solid #FF0000; color: #B71C1C;">
                    <div class="d-flex align-items-center">
                        <i class="fas fa-exclamation-circle me-2"></i>
                        <div>
                            @foreach ($errors->all() as $error)
                                <div style="font-size: 0.9rem;">{{ $error }}</div>
                            @endforeach
                        </div>
                    </div>
                </div>
                @endif

                <!-- Login Form -->
                <form method="POST" action="{{ route('login') }}" class="mt-4">
                    @csrf
                    
                    <div class="mb-4">
                        <label for="email" class="form-label mb-2" style="color: #000000; font-weight: 500; font-size: 0.9rem;">Alamat Email</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0"><i class="fas fa-envelope" style="color: #2B1A6C;"></i></span>
                            <input type="email" class="form-control border-start-0 ps-2" id="email" name="email" 
                                   value="{{ old('email') }}" required autofocus
                                   placeholder="Masukkan alamat email"
                                   style="border-color: #ced4da; height: 46px; border-radius: 0 0.25rem 0.25rem 0 !important;">
                        </div>
                    </div>

                    <div class="mb-4">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <label for="password" class="form-label mb-0" style="color: #000000; font-weight: 500; font-size: 0.9rem;">Kata Sandi</label>
                            @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}" class="text-decoration-none" style="color: #2B1A6C; font-size: 0.85rem;">
                                    Lupa kata sandi?
                                </a>
                            @endif
                        </div>
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0"><i class="fas fa-lock" style="color: #2B1A6C;"></i></span>
                            <input type="password" class="form-control border-start-0 ps-2" id="password" name="password" required
                                   placeholder="Masukkan kata sandi"
                                   style="border-color: #ced4da; height: 46px; border-radius: 0 !important;">
                            <button class="btn btn-outline-secondary border-start-0 toggle-password" type="button" 
                                    style="background-color: white; border-color: #ced4da; color: #6c757d; border-radius: 0 0.25rem 0.25rem 0 !important;">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <div class="form-check mb-4">
                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}
                               style="border-color: #2B1A6C; margin-top: 0.2rem;">
                        <label class="form-check-label" for="remember" style="color: #000000; font-size: 0.9rem;">
                            Remember Me
                        </label>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn py-2 text-white fw-bold" 
                                style="background-color: #FF0000; border: none; border-radius: 8px; font-size: 1rem; height: 48px; transition: all 0.3s;"
                                onmouseover="this.style.backgroundColor='#e60000'; this.style.transform='translateY(-1px)';"
                                onmouseout="this.style.backgroundColor='#FF0000'; this.style.transform='translateY(0)';">
                            <i class="fas fa-sign-in-alt me-2"></i>MASUK
                        </button>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
<script>
    // Toggle password visibility
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.toggle-password').forEach(button => {
            button.addEventListener('click', function() {
                const inputGroup = this.closest('.input-group');
                const passwordInput = inputGroup.querySelector('input');
                const icon = this.querySelector('i');
                
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    icon.classList.remove('fa-eye');
                    icon.classList.add('fa-eye-slash');
                    this.style.color = '#2B1A6C';
                } else {
                    passwordInput.type = 'password';
                    icon.classList.remove('fa-eye-slash');
                    icon.classList.add('fa-eye');
                    this.style.color = '#6c757d';
                }
            });
        });
        
        // Add focus effects
        const inputs = document.querySelectorAll('.form-control');
        inputs.forEach(input => {
            input.addEventListener('focus', function() {
                this.style.borderColor = '#2B1A6C';
                this.style.boxShadow = '0 0 0 0.2rem rgba(43, 26, 108, 0.15)';
                this.previousElementSibling.style.borderColor = '#2B1A6C';
            });
            
            input.addEventListener('blur', function() {
                this.style.borderColor = '#ced4da';
                this.style.boxShadow = 'none';
                this.previousElementSibling.style.borderColor = '#ced4da';
            });
        });
    });
</script>
@endpush

<style>
    /* Additional styles specific to login page */
    body {
        background-color: #f8f9fa;
    }
    
    .auth-container {
        padding: 2rem 0;
    }
    
    .form-control {
        border-radius: 0.25rem;
        border: 1px solid #ced4da;
        transition: all 0.3s;
    }
    
    .form-control:focus {
        border-color: #2B1A6C;
        box-shadow: 0 0 0 0.2rem rgba(43, 26, 108, 0.15);
    }
    
    .input-group-text {
        background-color: #f8f9fa;
        border: 1px solid #ced4da;
        border-right: none;
        color: #2B1A6C;
    }
    
    .toggle-password {
        background-color: #f8f9fa !important;
        border: 1px solid #ced4da !important;
        border-left: none !important;
        color: #6c757d;
        transition: all 0.3s;
    }
    
    .toggle-password:hover {
        background-color: #e9ecef !important;
        color: #2B1A6C !important;
    }
    
    .btn-primary {
        background-color: #2B1A6C;
        border-color: #2B1A6C;
    }
    
    .btn-primary:hover {
        background-color: #1f1350;
        border-color: #1f1350;
    }
    
    a {
        color: #2B1A6C;
        text-decoration: none;
        transition: color 0.2s;
    }
    
    a:hover {
        color: #FF0000;
        text-decoration: underline;
    }
    
    /* Custom checkbox */
    .form-check-input:checked {
        background-color: #2B1A6C;
        border-color: #2B1A6C;
    }
    
    .form-check-input:focus {
        border-color: #2B1A6C;
        box-shadow: 0 0 0 0.25rem rgba(43, 26, 108, 0.25);
    }
    
    /* Animation for the login card */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    .auth-container .card {
        animation: fadeInUp 0.5s ease-out;
    }
</style>
@endsection