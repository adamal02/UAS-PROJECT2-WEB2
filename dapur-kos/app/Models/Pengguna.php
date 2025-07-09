<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
   use HasFactory;

    // Kolom yang dapat diisi (mass assignable)
    protected $fillable = [
        'user_id', // ID pengguna yang berelasi dengan model User
        'name', 
        'email', 
        'gender', 
        'password', 
        'foto'
    ];
   

    // Relasi ke model User
    public function kategori()
    {
        return $this->belongsTo(User::class);
    }
}
