@extends('layouts.auth')

@section('main-content')
<div class="auth-container">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="bg-white rounded-3 shadow p-4 border" style="border-color: #9B9FA7 !important;">
                <!-- Logo Section -->
                <div class="text-center mb-4">
                    <img src="{{ asset('img/ewf-logo.png') }}" alt="EWF Logo" class="img-fluid mb-3" style="max-height: 80px;">
                    <h1 class="h4 fw-bold mb-0" style="color: #4C4C4C;">EQUITYWORLD FUTURES</h1>
                    <p class="small text-muted mb-0">Login to your account</p>
                </div>

                <!-- Error Message Container -->
                @if ($errors->any())
                <div class="alert alert-danger py-2 px-3 mb-3" role="alert" style="font-size: 0.8rem; border-radius: 8px;">
                        <ul class="mb-0 ps-3">
                            @foreach ($errors->all() as $error)
                                <li style="font-size: 0.8rem;">{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <!-- Login Form -->
                <form method="POST" action="{{ route('login') }}" class="mt-4">
                    @csrf
                    
                    <div class="mb-3">
                        <label for="email" class="form-label small mb-1" style="color: #4C4C4C; font-weight: 500;">Email Address</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0"><i class="fas fa-envelope" style="color: #9B9FA7;"></i></span>
                            <input type="email" class="form-control border-start-0 ps-2" id="email" name="email" 
                                   value="{{ old('email') }}" required autofocus
                                   placeholder="Enter your email"
                                   style="border-color: #9B9FA7; height: 42px;">
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="d-flex justify-content-between align-items-center mb-1">
                            <label for="password" class="form-label small" style="color: #4C4C4C; font-weight: 500;">Password</label>
                            @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}" class="text-decoration-none small" style="color: #9B9FA7;">
                                    Forgot password?
                                </a>
                            @endif
                        </div>
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0"><i class="fas fa-lock" style="color: #9B9FA7;"></i></span>
                            <input type="password" class="form-control border-start-0 ps-2" id="password" name="password" required
                                   placeholder="Enter your password"
                                   style="border-color: #9B9FA7; height: 42px;">
                            <button class="btn btn-outline-secondary border-start-0 toggle-password" type="button" 
                                    style="background-color: white; border-color: #9B9FA7; color: #9B9FA7;">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <div class="form-check mb-4">
                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}
                               style="border-color: #9B9FA7;">
                        <label class="form-check-label small" for="remember" style="color: #4C4C4C;">
                            Remember me
                        </label>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn py-2 text-white fw-bold" 
                                style="background-color: #F2AC59; border: none; border-radius: 8px; font-size: 0.9rem;">
                            <i class="fas fa-sign-in-alt me-2"></i>Sign In
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
    document.querySelectorAll('.toggle-password').forEach(button => {
        button.addEventListener('click', function() {
            const passwordInput = this.previousElementSibling;
            const icon = this.querySelector('i');
            
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        });
    });
</script>
@endpush

<style>
    /* Additional styles specific to login page */
    .toggle-password {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        background-color: white;
        border: 1px solid #9B9FA7;
        border-left: none;
        transition: all 0.2s;
    }
    
    .toggle-password:hover {
        background-color: #f2f2f2;
        color: #4C4C4C !important;
    }
    
    .input-group-text {
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        border-right: none;
        background-color: white;
        border-color: #9B9FA7;
    }
    
    .form-control:focus {
        box-shadow: 0 0 0 0.2rem rgba(242, 172, 89, 0.25);
        border-color: #F2AC59;
    }
    
    .form-control:focus + .input-group-text {
        border-color: #F2AC59;
    }
</style>
@endsection