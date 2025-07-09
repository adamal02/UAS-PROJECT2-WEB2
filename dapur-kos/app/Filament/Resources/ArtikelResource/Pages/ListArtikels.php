<?php

namespace App\Filament\Resources\ArtikelResource\Pages;

use App\Filament\Resources\ArtikelResource;
use Filament\Actions;
use Filament\Forms\Components\Tabs\Tab;
use Filament\Resources\Pages\ListRecords;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\Tab as FiltersTab; // Tambahkan import ini
use Illuminate\Database\Eloquent\Builder; // Tambahkan import ini

class ListArtikels extends ListRecords
{
    protected static string $resource = ArtikelResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTitle(): string
    {
        return 'Artikel';
    }

    // public function getTabs(): array // Ubah dari getTab() ke getTabs()
    // {
    //     return [
    //         'all' => Tab::make('Semua'),
    //         'draft' => Tab::make('Draft')
    //             ->query(fn (Builder $query) => $query->where('status', 'draft')),
    //         'published' => Tab::make('Dipublikasikan')
    //             ->query(fn (Builder $query) => $query->where('status', 'published')),
    //     ];
    // }
}
