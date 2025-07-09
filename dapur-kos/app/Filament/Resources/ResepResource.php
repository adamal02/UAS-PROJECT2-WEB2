<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ResepResource\Pages;
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
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;

class ResepResource extends Resource
{
    protected static ?string $model = Resep::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('judul')
                    ->label('Nama Resep')
                    ->required(),
                FileUpload::make('gambar')
                    ->label('Foto Masakan')
                    ->directory('Foto_Resep'),
                TextInput::make('deskripsi')
                    ->columnSpanFull(),
                Select::make('kategori_id')
                    ->label('Kategori')
                    ->relationship('kategori', 'judul')
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
                    ->label('Resep')
                    ->searchable(),
                ImageColumn::make('gambar')
                    ->label('Foto')
                    ->circular()
                    ->size(40),
                TextColumn::make('kategori.judul')
                    ->label('Kategori')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('alat')
                    ->label('Alat')
                    ->limit(50)
                    ->wrap(),
                TextColumn::make('bahan')
                    ->label('Bahan')
                    ->limit(50)
                    ->wrap(),
                TextColumn::make('prosedur')
                    ->label('Prosedur')
                    ->limit(50)
                    ->wrap(),
                TextColumn::make('penulis')
                    ->searchable(),
                TextColumn::make('sumber')
                    ->searchable(),
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
                Section::make('Informasi Resep')
                    ->schema([
                        TextEntry::make('judul')
                            ->label('Nama Resep'),
                        TextEntry::make('kategori.judul')
                            ->label('Kategori'),
                        TextEntry::make('deskripsi')
                            ->label('Deskripsi Resep'),
                        TextEntry::make('alat')
                            ->label('Alat'),
                        TextEntry::make('bahan')
                            ->label('Bahan'),
                        TextEntry::make('prosedur')
                            ->label('Prosedur'),
                        TextEntry::make('penulis')
                            ->label('Penulis'),
                        TextEntry::make('sumber')
                            ->label('Sumber'),
                    ])
                    ->columns(2),
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
