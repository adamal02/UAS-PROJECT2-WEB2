<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Koleksi extends Model
{
    protected $fillable = [
        'profiles_id', // relasi ke tabel profile
        'reseps_id', // relasi ke tabel resep
    ];

    // Relasi ke model Profile
    public function profile()
    {
        return $this->belongsTo(Profile::class, 'profiles_id');
    }

    // Relasi ke model Resep
    public function resep()
    {
        return $this->belongsTo(Resep::class, 'reseps_id');
    }
}
