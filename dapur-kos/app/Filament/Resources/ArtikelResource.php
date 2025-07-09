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

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationLabel = 'Artikel';

    protected static ?string $navigationGroup = 'Konten';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('judul')
                    ->required()
                    ->label('Judul Artikel'),
                Textarea::make('konten')
                    ->label('Konten Artikel')
                    ->columnSpanFull(),
               Select::make('kategoris')
                    ->label('Kategori')
                    ->relationship('kategoris', 'judul')
                    ->multiple()
                    ->searchable()
                    ->preload()
                    ->createOptionForm([
                        TextInput::make('judul')
                            ->label('Judul Kategori')
                            ->required(),
                        Textarea::make('deskripsi')
                            ->label('Deskripsi Kategori'),
                    ]),
                Select::make('user_id')
                    ->label('Penulis')
                    ->relationship('user', 'name')
                    ->searchable()
                    ->createOptionForm([
                        TextInput::make('name')
                            ->label('Nama User')
                            ->required(),
                        TextInput::make('email')
                            ->label('Email User')
                            ->required()
                            ->email(),
                        TextInput::make('password')
                            ->label('Password')
                            ->password()
                            ->required()
                            ->dehydrateStateUsing(fn ($state) => bcrypt($state))
                            ->visible(fn ($record) => is_null($record) || $record->password === null),
                    ]),
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
                TextColumn::make('konten')
                    ->label('Konten')
                    ->limit(30)
                    ->html()
                    ->formatStateUsing(fn ($state) => nl2br(e($state))),   
                TextColumn::make('kategoris')
                        ->label('Kategori')
                        ->getStateUsing(fn ($record) => $record->kategoris->pluck('judul')->join(', '))
                        ->searchable(),
                TextColumn::make('user.name')
                    ->label('Penulis')
                    ->searchable(),
                TextColumn::make('sumber')
                    ->label('Sumber')
                    ->searchable(),
            ])
            ->filters([
                SelectFilter::make('kategoris')
                    ->label('Kategori')
                    ->relationship('kategoris', 'judul'),
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
                        TextEntry::make('konten')
                            ->label('Konten Artikel')
                            ->html()
                            ->formatStateUsing(fn ($state) => nl2br(e($state))),
                        TextEntry::make('kategoris.judul')
                            ->label('Kategori'),
                        TextEntry::make('user.name')
                            ->label('Penulis'),
                        TextEntry::make('sumber')
                            ->label('Sumber'),
                    ])
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
