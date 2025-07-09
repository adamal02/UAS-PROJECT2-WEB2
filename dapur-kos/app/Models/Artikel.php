<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;
    protected $fillable = [
        'judul',
        // 'kategori_id',
        'konten',
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
        return $this->belongsToMany(Kategori::class, 'artikel_kategori');
    }

}
