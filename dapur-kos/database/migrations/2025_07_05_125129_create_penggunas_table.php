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
        Schema::create('penggunas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')
                ->nullable() 
                ->constrained('users')
                ->cascadeOnDelete();
            $table->string('name'); // Nama pengguna
            $table->string('email')->unique(); // Tambahkan baris ini
            $table->string('gender');
            $table->string('password'); // Password pengguna
            $table->string('foto'); // Foto pengguna, bisa untuk path file gambar
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penggunas');
    }
};
