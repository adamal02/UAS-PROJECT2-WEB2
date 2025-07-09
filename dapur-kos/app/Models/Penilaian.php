<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Penilaian extends Model
{
    // protected $table = 'penilaians';
    protected $fillable = [
        'profiles_id', // relasi ke tabel profile
        'reseps_id', // relasi ke tabel resep
        'rating', // rating dari 1-5
        'komentar', // komentar dari pengguna
    ];
    
    // Relasi ke model Profile
    public function profile()
    {
        return $this->belongsTo(Profile::class, 'profiles_id'); // profiles_id di tabel penilaian   
}

    // Relasi ke model Resep
    public function resep()
    {
        return $this->belongsTo(Resep::class, 'reseps_id'); // reseps_id di tabel penilaian
    }
}