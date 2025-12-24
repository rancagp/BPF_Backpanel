<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Karier extends Model
{
    use HasFactory;

    protected $fillable = [
        'judul',
        'lokasi',
        'tipe_pekerjaan',
        'deskripsi',
        'kualifikasi',
        'tanggal_berakhir',
        'status'
    ];

    protected $casts = [
        'tanggal_berakhir' => 'date',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
}
