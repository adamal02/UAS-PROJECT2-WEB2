<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
     // Nama tabel (opsional jika sesuai konvensi)
    protected $table = 'profiles';

    // Kolom yang boleh diisi (mass assignment)
    protected $fillable = ['name', 'gender', 'email', 'password', 'foto_profile'];
}
