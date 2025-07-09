<?php

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\Kategori;
use App\Models\Resep;
use App\Models\Artikel;
use App\Models\Pengguna;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        $activePenggunas = Pengguna::count(); 
        $activeKategoris = Kategori::count();
        $activeReseps = Resep::count();
        $activeArtikels = Artikel::count();

        return [
            Stat::make('User', $activePenggunas)
                ->description('Jumlah pengguna')
                ->descriptionIcon('heroicon-o-users')
                ->url(route('filament.admin.resources.penggunas.index'))
                ->color('success'),
            Stat::make('Kategori', $activeKategoris)
                ->description('Jumlah kategori')
                ->descriptionIcon('heroicon-o-bookmark-square')
                ->url(route('filament.admin.resources.kategoris.index'))
                ->color('secondary'),
            Stat::make('Resep', $activeReseps)
                ->description('Jumlah resep')
                ->descriptionIcon('heroicon-o-book-open')
                ->url(route('filament.admin.resources.reseps.index'))
                ->color('primary'),
            Stat::make('Artikel', $activeArtikels)
                ->description('Jumlah artikel')
                ->descriptionIcon('heroicon-o-document-text')
                ->url(route('filament.admin.resources.artikels.index'))
                ->color('secondary'),
        ];
    }
}
