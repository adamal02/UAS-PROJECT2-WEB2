<?php

namespace App\Filament\Widgets;

use App\Models\Resep;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables\Actions\Action;

class ResepViral extends BaseWidget
{

    protected int|string|array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
        Resep::query()
                    ->whereHas('kategoris', fn ($query) =>
                        $query->where('judul', 'Makanan kekinian') 
                    )
                    ->with('kategoris')

            )
            ->paginated(false) //Menampilan data tanpa paginasi
            ->columns([
                TextColumn::make('judul')
                    ->label('Nama Resep')
                    ->sortable(),
                TextColumn::make('deskripsi')
                    ->label('Deskripsi')
                    ->limit(25), // Batasi panjang deskripsi yang ditampilkan,
            ])
            ->actions([
                Action::make('view')
                    ->label('Lihat')
                    ->icon('heroicon-o-eye')
                    ->url(fn ($record) => route('filament.admin.resources.reseps.view', ['record' => $record]))
            ]);
    }
}
