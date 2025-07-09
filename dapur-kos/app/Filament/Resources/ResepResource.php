<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ResepResource\Pages;
use App\Filament\Resources\ResepResource\RelationManagers;
use App\Models\Resep;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ResepResource extends Resource
{
    protected static ?string $model = Resep::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('judul')
                    ->required(),
                Forms\Components\TextInput::make('gambar'),
                Forms\Components\Textarea::make('deskripsi')
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('kategori_id')
                    ->required()
                    ->numeric(),
                Forms\Components\Textarea::make('alat')
                    ->columnSpanFull(),
                Forms\Components\Textarea::make('bahan')
                    ->columnSpanFull(),
                Forms\Components\Textarea::make('prosedur')
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('penulis'),
                Forms\Components\TextInput::make('sumber'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('judul')
                    ->searchable(),
                Tables\Columns\TextColumn::make('gambar')
                    ->searchable(),
                Tables\Columns\TextColumn::make('kategori_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('penulis')
                    ->searchable(),
                Tables\Columns\TextColumn::make('sumber')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListReseps::route('/'),
            'create' => Pages\CreateResep::route('/create'),
            'edit' => Pages\EditResep::route('/{record}/edit'),
        ];
    }
}
