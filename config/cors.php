<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Cross-Origin Resource Sharing (CORS) Configuration
    |--------------------------------------------------------------------------
    |
    | Here you may configure your settings for cross-origin resource sharing
    | or "CORS". This determines what cross-origin operations may execute
    | in web browsers. You are free to adjust these settings as needed.
    |
    | To learn more: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    |
    */

    'paths' => ['api/*', 'sanctum/csrf-cookie'],

    'allowed_methods' => ['*'],

    'allowed_origins' => [
        'http://localhost:3000',
        'http://127.0.0.1:3000',
        'http://localhost:8000',
        'http://127.0.0.1:8000',
        'https://kpf-officiall-ld8q.vercel.app',
        'https://bpf-official.vercel.app',
    ],

    'allowed_origins_patterns' => [],

    'allowed_headers' => [
        'Content-Type',
        'X-Requested-With',
        'Authorization',
        'X-CSRF-TOKEN',
        'X-XSRF-TOKEN',
        'Accept',
    ],

    'exposed_headers' => [
        'Authorization',
        'X-CSRF-TOKEN',
        'X-XSRF-TOKEN',
    ],

    'max_age' => 60 * 60 * 24, // 24 jam

    'supports_credentials' => false,

];
