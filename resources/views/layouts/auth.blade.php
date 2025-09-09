<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Portal Admin') }} - Login</title>

    <!-- Favicon -->
    <link href="{{ asset('img/logo-kpf.png') }}" rel="icon" type="image/png">
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    
    <!-- Styles -->
    <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        :root {
            --primary-color: #166534;
            --secondary-color: #199447;
            --accent-color: #3b82f6;
            --light-bg: #f8fafc;
        }
        
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow-y: auto;
            min-height: 100vh;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            min-height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .auth-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
        }
        
        .login-container {
            width: 100%;
            max-width: 1000px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin: 0 15px;
        }
        
        .login-left {
            background: white;
            padding: 20px 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-right {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: white;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }
        
        .login-right::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            top: -100px;
            right: -100px;
        }
        
        .login-right::after {
            content: '';
            position: absolute;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            bottom: -50px;
            left: -50px;
        }
        
        .form-control {
            border-radius: 6px;
            padding: 6px 10px;
            border: 1px solid #e2e8f0;
            transition: all 0.3s;
            font-size: 0.85rem;
            height: auto;
        }
        
        .form-control:focus {
            border-color: var(--accent-color);
            box-shadow: 0 0 0 0.2rem rgba(59, 130, 246, 0.25);
        }
        
        .btn-login {
            background: var(--secondary-color);
            border: none;
            color: white;
            padding: 6px 16px;
            font-weight: 500;
            border-radius: 5px;
            transition: all 0.3s;
            font-size: 0.85rem;
        }
        
        .btn-login:hover {
            background: #14532d;
            transform: translateY(-2px);
        }
        
        .login-title {
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 30px;
            position: relative;
            display: inline-block;
        }
        
        .feature-list {
            list-style: none;
            padding: 0;
            margin-top: 30px;
        }
        
        .feature-list li {
            margin-bottom: 15px;
            padding-left: 30px;
            position: relative;
        }
        
        .feature-list li::before {
            content: '✓';
            position: absolute;
            left: 0;
            color: var(--secondary-color);
            font-weight: bold;
        }
        
        @media (max-width: 991.98px) {
            .login-right {
                display: none;
            }
        }
    </style>
</head>

<body>
    @yield('main-content')

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('js/sb-admin-2.min.js') }}"></script>
    
    @stack('scripts')
</body>

</html> 