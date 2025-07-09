<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArtikelResource\Pages;
use App\Filament\Resources\ArtikelResource\RelationManagers;
use App\Models\Artikel;
use Filament\Forms;
use Filament\Infolists\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ArtikelResource extends Resource
{
    protected static ?string $model = Artikel::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('judul')
                    ->required()
                    ->label('Judul Artikel'),
                Select::make('kategori_id')
                    ->label('Kategori')
                    ->relationship('kategori', 'judul') // relasi Eloquent ambil dari tabel kategori
                    ->searchable()
                    ->preload()
                    ->required(),
                Textarea::make('konten')
                    ->label('Konten Artikel')
                    ->columnSpanFull(),
                TextInput::make('penulis')
                    ->label('Penulis')
                    ->nullable(),
                TextInput::make('sumber')
                    ->label('Sumber')
                    ->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('kategori.judul')
                    ->label('Kategori')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('konten')
                    ->label('Konten')
                    ->wrap(),   // agar teks panjang bisa turun ke baris berikutnya
                TextColumn::make('penulis')
                    ->label('Penulis')
                    ->searchable(),
                TextColumn::make('sumber')
                    ->label('Sumber')
                    ->searchable()
            ])
            ->filters([
                SelectFilter::make('kategori_id')
                    ->label('Kategori')
                    ->relationship('kategori', 'judul'),
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

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Informasi Artikel')
                    ->schema([
                        TextEntry::make('judul')
                            ->label('Judul Artikel'),
                        TextEntry::make('kategori.judul')
                            ->label('Kategori'),
                        TextEntry::make('konten')
                            ->label('Konten Artikel'),
                        TextEntry::make('penulis')
                            ->label('Penulis'),
                        TextEntry::make('sumber')
                            ->label('Sumber'),
                    ]) ->columns(2) // Membagi informasi menjadi 2 kolom,
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
            'index' => Pages\ListArtikels::route('/'),
            'create' => Pages\CreateArtikel::route('/create'),
            'edit' => Pages\EditArtikel::route('/{record}/edit'),
        ];
    }
}
