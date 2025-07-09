<?php

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\Kategori;
use App\Models\Resep;
use App\Models\Artikel;
use App\Models\Pengguna;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Auth;

class StatsOverview extends BaseWidget
{

     public static function canView(): bool
    {
        $user = Auth::user();
        return $user && $user->role === 'admin';
    }

    protected function getStats(): array
    {
        $activeUsers = User::count(); 
        $activeKategoris = Kategori::count();
        $activeReseps = Resep::count();
        $activeArtikels = Artikel::count();

        return [
            Stat::make('User', $activeUsers)
                ->description('Jumlah User')
                ->descriptionIcon('heroicon-o-users')
                ->url(route('filament.admin.resources.users.index'))
                ->color('success'),
            Stat::make('Kategori', $activeKategoris)
                ->description('Jumlah kategori')
                ->descriptionIcon('heroicon-o-rectangle-stack')
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
