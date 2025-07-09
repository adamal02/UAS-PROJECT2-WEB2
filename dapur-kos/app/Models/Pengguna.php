<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Models\Role;

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
        'roles', // Peran yang dimiliki pengguna 
        'foto'
    ];
   

    // Relasi ke model User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi ke model Role
    public function role()
    {
        return $this->belongsToMany(Role::class);   
    }
}