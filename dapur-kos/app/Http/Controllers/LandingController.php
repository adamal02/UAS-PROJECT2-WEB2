<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LandingController extends Controller
{
    public function index()
    {
        $reseps = [
            [
                "judul" => "Puding Coklat Simpel",
                "deskripsi" => "Hanya 3 bahan, cocok buat yang baru belajar masak. Bisa ditambah susu atau topping kesukaan.",
                "gambar" => asset('landing/images/puding-coklat.jpg')
            ],
            [
                "judul" => "Pisang Nugget Viral",
                "deskripsi" => "Tanpa oven, tanpa telur. Renyah di luar, lembut di dalam. Pas buat cemilan kos!",
                "gambar" => asset('landing/images/pisang-nuget.jpg')
            ],
            [
                "judul" => "Mie Creamy Pedas",
                "deskripsi" => "Mie instan dengan twist creamy pedas manis. Kombinasi susu dan cabai bikin nagih!",
                "gambar" => asset('landing/images/mie-creamy.jpg')
            ]
        ];

        $anggota = [
            ["nama" => "Adam Al Muharrom", "nim" => "0110124017"],
            ["nama" => "Alya Az-Zahra", "nim" => "0110124123"],
            ["nama" => "Helma Hafiza", "nim" => "0110124028"],
            ["nama" => "Hilwah Qurrotul A.", "nim" => "0110124057"],
            ["nama" => "Harum Hoirunisa", "nim" => "0110124058"]
        ];

        return view('welcome', compact('reseps', 'anggota'));
    }
}
