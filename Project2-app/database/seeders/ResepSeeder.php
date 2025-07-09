<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResepSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('reseps')->insert([
            [
                'judul' => 'Nasi Goreng Spesial',
                'gambar' => 'nasi_goreng.jpg',
                'deskripsi' => 'Nasi goreng dengan bumbu spesial dan tambahan telur.',
                'kategori_id' => 1,
                'alat' => 'Wajan, spatula, piring saji',
                'bahan' => 'Nasi, bawang merah, bawang putih, telur, kecap manis, garam, merica',
                'langkah' => '1. Panaskan wajan. 2. Tumis bawang merah dan bawang putih. 3. Tambahkan nasi dan kecap manis. 4. Aduk rata dan masak hingga panas. 5. Sajikan dengan telur mata sapi di atasnya.',
                'penulis' => 'Chef Joko',
                'sumber' => 'https://example.com/nasi-goreng-spesial',
            ],
            // Tambahkan resep lainnya sesuai kebutuhan
        ]);

        $result = DB::select('SELECT id, nama FROM kategoris');
        echo $result[0]->id; // Error: Undefined property: stdClass::$id
    }
}
