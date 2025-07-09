<?php

namespace App\Filament\Widgets;

use App\Models\Kategori;
use Filament\Widgets\ChartWidget;

class BlogPostsChart extends ChartWidget
{
    protected static ?string $heading = 'Statistik Kategori';

    protected function getData(): array
    {
        $kategoris = Kategori::with('reseps')->get();
        $labels = $kategoris->pluck('judul')->toArray(); // Pastikan 'judul' adalah nama kolom kategori Anda
        $data = [];

        foreach ($kategoris as $kategori) {
            $data[] = $kategori->reseps ? $kategori->reseps->count() : 0;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Resep per Kategori',
                    'data' => $data,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}
