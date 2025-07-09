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
        // 'kategori_id',
        'alat',
        'bahan',
        'prosedur',
        'user_id', // Asumsi ada kolom user_id untuk penulis
        'sumber',
    ];

    // Relasi ke model User
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    
    // Relasi ke model Kategori
    public function kategoris()
    {
        return $this->belongsToMany(Kategori::class, 'kategori_resep');
    }
}
