<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('kategoris')->insert([
            [
                'nama' => 'Sayuran',
                'deskripsi' => 'Kategori untuk berbagai jenis sayuran.',
            ],
            // Tambahkan kategori lainnya sesuai kebutuhan
        ]);
    }
}
