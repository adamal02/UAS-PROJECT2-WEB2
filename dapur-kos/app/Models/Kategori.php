<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    // Nama tabel (opsional jika sesuai konvensi)
    protected $table = 'kategoris';

    // Kolom yang boleh diisi (mass assignment)
    protected $fillable = ['judul', 'deskripsi'];
}
