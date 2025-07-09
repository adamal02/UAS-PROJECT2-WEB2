<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Resep extends Model
{
    use HasFactory;

    // Kolom yang dapat diisi (mass assignable)
    protected $fillable = [
        'judul',
        'gambar',
        'deskripsi',
        'kategori_id',
        'alat',
        'bahan',
        'prosedur',
        'penulis',
        'sumber',
    ];

    // Relasi ke model Kategori
    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }
}
