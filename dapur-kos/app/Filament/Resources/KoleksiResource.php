<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KoleksiResource\Pages;
use App\Filament\Resources\KoleksiResource\RelationManagers;
use App\Models\Koleksi;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KoleksiResource extends Resource
{
    protected static ?string $model = Koleksi::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('profiles_id')
                    ->label('Profile')
                    ->relationship('profile', 'name')
                    ->required(),
                Select::make('reseps_id')
                    ->label('Resep')
                    ->relationship('resep', 'judul')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul'),
                TextColumn::make('profile.name')
                    ->label('Profile')
                    ->sortable(),
                TextColumn::make('resep.judul')
                    ->label('Resep')
                    ->sortable(),
            ])
            ->filters([
                //
            ])

            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\ViewAction::make(),
            ])
            
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListKoleksis::route('/'),
            'create' => Pages\CreateKoleksi::route('/create'),
            'edit' => Pages\EditKoleksi::route('/{record}/edit'),
        ];
    }
}
