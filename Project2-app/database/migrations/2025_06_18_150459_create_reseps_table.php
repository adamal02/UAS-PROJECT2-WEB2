<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('reseps', function (Blueprint $table) {
           $table->id();
            $table->string('judul');
            $table->string('gambar')->nullable();
            $table->text('deskripsi');
            $table->foreignId('kategori_id')->constrained()->onDelete('cascade');
            $table->text('alat'); // alat memasak
            $table->text('bahan'); // bahan memasak         
            $table->text('langkah'); // langkah-langkah memasak
            $table->string('penulis')->nullable(); // nama pembuat resep
            $table->string('sumber')->nullable(); // sumber resep, bisa berupa URL atau nama buku
            $table->timestamps();
        });
        
        $result = DB::select('SELECT id, nama FROM kategoris');
        echo $result[0]->id;
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reseps');
    }
};
