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
        Schema::create('reseps', function (Blueprint $table) {
            $table->id();
            $table->string('judul'); // teks pendek
            $table->string('gambar')->nullable(); // bisa untuk path file gambar
            $table->text('deskripsi')->nullable(); // teks panjang

            $table->foreignId('kategori_id') // relasi ke tabel kategoris
                ->constrained('kategoris')
                ->cascadeOnDelete();

            $table->text('alat'); // teks panjang
            $table->text('bahan'); // teks panjang
            $table->text('prosedur'); // teks panjang

            $table->string('penulis')->nullable();
            $table->string('sumber')->nullable();           
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reseps');
    }
};
