<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $fillable = [
        'foto',
        'name',
        'email',
        'password',
        'role', // misalnya: admin, user, dsb.
    ];
    
    public function reseps()
    {
        return $this->hasMany(Resep::class);
    }
}
