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
        // Create a new table with the desired column order
        Schema::create('kariers_new', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kota');
            $table->string('posisi');
            $table->string('slug');
            $table->text('responsibilities');
            $table->text('qualification');
            $table->string('email');
            $table->timestamps();
        });

        // Copy data from old table to new table
        \DB::statement('INSERT INTO kariers_new (id, nama_kota, posisi, slug, responsibilities, qualification, email, created_at, updated_at) 
                        SELECT id, nama_kota, posisi, slug, responsibilities, qualification, email, created_at, updated_at FROM kariers');

        // Drop the old table
        Schema::drop('kariers');

        // Rename the new table to the original table name
        Schema::rename('kariers_new', 'kariers');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Create a new table with the original column order
        Schema::create('kariers_old', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kota');
            $table->string('posisi');
            $table->string('slug');
            $table->text('responsibilities');
            $table->text('qualification');
            $table->string('email');
            $table->timestamps();
        });

        // Copy data back to the old structure
        \DB::statement('INSERT INTO kariers_old (id, nama_kota, posisi, slug, responsibilities, qualification, email, created_at, updated_at) 
                        SELECT id, nama_kota, posisi, slug, responsibilities, qualification, email, created_at, updated_at FROM kariers');

        // Drop the current table
        Schema::drop('kariers');

        // Rename the old table back to the original name
        Schema::rename('kariers_old', 'kariers');
    }
};
