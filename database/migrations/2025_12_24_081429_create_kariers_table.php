<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('kariers', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->string('lokasi');
            $table->string('tipe_pekerjaan');
            $table->text('deskripsi');
            $table->text('kualifikasi');
            $table->date('tanggal_berakhir');
            $table->string('status')->default('Dibuka');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kariers');
    }
};
