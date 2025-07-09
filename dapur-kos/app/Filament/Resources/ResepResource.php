<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ResepResource\Pages;
use App\Filament\Resources\ResepResource\RelationManagers;
use App\Models\Resep;
use Filament\Forms;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
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
                TextInput::make('judul')
                    ->required(),
                FileUpload::make('foto')
                    ->directory('Foto_Resep'),
                TextInput::make('deskripsi')
                    ->label('Deskripsi')
                    ->maxLength(255),
                Select::make('kategori_id')
                    ->label('Kategori')
                    ->relationship('kategori', 'judul') // relasi Eloquent ambil dari tabel kategori
                    ->searchable()
                    ->preload()
                    ->required(),
                Textarea::make('alat')
                    ->columnSpanFull(),
                Textarea::make('bahan')
                    ->columnSpanFull(),
                Textarea::make('prosedur')
                    ->columnSpanFull(),
                TextInput::make('penulis'),
                TextInput::make('sumber'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul')
                    ->searchable(),
                ImageColumn::make('foto')
                    ->label('Foto Resep')
                    ->circular()
                    ->size(40),
                TextColumn::make('kategori.judul')   //tampilan nama pada kategori
                    ->label('Kategori')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('penulis')
                    ->searchable(),
                TextColumn::make('sumber')
                    ->searchable(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])

            ->filters([
                SelectFilter::make('kategori_id')
                    ->label('Kategori')
                    ->relationship('kategori', 'judul'),
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
