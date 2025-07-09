<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PenilaianResource\Pages;
use App\Filament\Resources\PenilaianResource\RelationManagers;
use App\Models\Penilaian;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PenilaianResource extends Resource
{
    protected static ?string $model = Penilaian::class;

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
                TextInput::make('rating')
                    ->label('Rating (1-5)')
                    ->numeric()
                    ->minValue(1)
                    ->maxValue(5)
                    ->default(0)
                    ->required(),
                Textarea::make('komentar')
                    ->label('Komentar')
                    ->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('profile.name')
                    ->label('Profile')
                    ->sortable(),
                TextColumn::make('resep.judul')
                    ->label('Resep')
                    ->sortable(),
                TextColumn::make('rating')
                    ->label('Rating')
                    ->sortable(),
                TextColumn::make('komentar')
                    ->label('Komentar')
                    ->limit(50)
                    ->sortable(),       
            ])
            ->filters([
                SelectFilter::make('rating')
                    ->label('Rating')
                    ->relationship('profile', 'name'),
            ])

            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            'index' => Pages\ListPenilaians::route('/'),
            'create' => Pages\CreatePenilaian::route('/create'),
            'edit' => Pages\EditPenilaian::route('/{record}/edit'),
        ];
    }
}
