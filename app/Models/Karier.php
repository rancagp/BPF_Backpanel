<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Karier extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_kota',
        'posisi',
        'slug',
        'responsibilities',
        'qualification',
        'email'
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    /**
     * Boot the model.
     */
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($karier) {
            $baseSlug = \Illuminate\Support\Str::slug($karier->posisi . ' ' . $karier->nama_kota);
            $uniqueId = strtolower(\Illuminate\Support\Str::random(5));
            $karier->slug = $baseSlug . '-' . $uniqueId;
        });

        static::updating(function ($karier) {
            if ($karier->isDirty(['posisi', 'nama_kota'])) {
                $baseSlug = \Illuminate\Support\Str::slug($karier->posisi . ' ' . $karier->nama_kota);
                $uniqueId = strtolower(\Illuminate\Support\Str::random(5));
                $karier->slug = $baseSlug . '-' . $uniqueId;
            }
        });
    }
}
