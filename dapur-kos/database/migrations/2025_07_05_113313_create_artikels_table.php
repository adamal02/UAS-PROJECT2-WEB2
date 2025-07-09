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
        Schema::create('artikels', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->foreignId('kategori_id') // relasi ke tabel kategoris
                ->constrained('kategoris')
                ->cascadeOnDelete();
            $table->text('konten'); // teks panjang untuk konten artikel
            $table->string('penulis')->nullable(); // nama penulis artikel
            $table->string('sumber')->nullable(); // sumber artikel jika ada
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('artikels');
    }
};
