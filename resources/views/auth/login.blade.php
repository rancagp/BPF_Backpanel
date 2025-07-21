@extends('layouts.auth')

@section('main-content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-10 col-lg-12 col-md-9">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-white">
                            <div class="h-100 d-flex flex-column align-items-center justify-content-center text-center">
                                <img src="{{ asset('img/logo-kpf.png') }}" alt="Logo KPF" class="img-fluid p-4"
                                    style="max-height: 200px; object-fit: contain;">
                                <h2 class="mt-3 mb-0 font-weight-bold text-dark">KontakPerkasa Futures</h2>
                            </div>
                        </div>
                        <div class="col-lg-6" style="background-color: #166534;">
                            <div class="p-5">
                                <div class="text-center">
                                                                        <h1 class="h4 text-white mb-4">{{ __('Login') }}</h1>
                                </div>

                                @if ($errors->any())
                                <div class="alert alert-danger border-left-danger" role="alert">
                                    <ul class="pl-4 my-2">
                                        @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                                @endif

                                <form method="POST" action="{{ route('login') }}" class="user">
                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">

                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user" name="email"
                                            placeholder="{{ __('E-Mail Address') }}" value="{{ old('email') }}" required
                                            autofocus>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" name="password"
                                            placeholder="{{ __('Password') }}" required>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" name="remember"
                                                id="remember" {{ old('remember') ? 'checked' : '' }}>
                                                                                        <label class="custom-control-label text-white" for="remember">{{ __('Remember Me')
                                                }}</label>
                                        </div>
                                    </div>

                                    <hr>

                                    <div class="form-group">
                                        <button type="submit"
                                            class="btn btn-primary text-light font-weight-bold btn-user btn-block">
                                            {{ __('Login') }}
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection