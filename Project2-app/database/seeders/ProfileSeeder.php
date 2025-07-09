<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProfileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('profiles')->insert([
            [
                'foto' => 'https://example.com/avatar1.jpg',
                'name' => 'Yaya',
                'email' => 'yaya@gmail.com',
                'password' => bcrypt('password123'),
                'role' => 'user',
                'aktif' => true,
            ]
            //tambahkan users lainnya sesuai kebutuhan
        ]);
    }
}
