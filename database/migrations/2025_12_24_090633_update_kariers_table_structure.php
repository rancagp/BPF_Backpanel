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
        Schema::table('kariers', function (Blueprint $table) {
            // Rename existing columns to match new requirements
            $table->renameColumn('judul', 'posisi');
            $table->renameColumn('lokasi', 'nama_kota');
            $table->renameColumn('deskripsi', 'responsibilities');
            $table->renameColumn('kualifikasi', 'qualification');
            
            // Add new columns
            $table->string('slug')->after('posisi');
            $table->string('email')->after('qualification');
            
            // Remove columns that are no longer needed
            $table->dropColumn(['tipe_pekerjaan', 'tanggal_berakhir', 'status']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('kariers', function (Blueprint $table) {
            // Reverse the column renames
            $table->renameColumn('posisi', 'judul');
            $table->renameColumn('nama_kota', 'lokasi');
            $table->renameColumn('responsibilities', 'deskripsi');
            $table->renameColumn('qualification', 'kualifikasi');
            
            // Drop added columns
            $table->dropColumn(['slug', 'email']);
            
            // Add back the dropped columns with their original structure
            $table->string('tipe_pekerjaan');
            $table->date('tanggal_berakhir');
            $table->string('status')->default('Dibuka');
        });
    }
};
