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
use Filament\Infolists\Components\ImageEntry;
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

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationLabel = 'Resep';

    //  protected static ?string $navigationGroup = 'Konten';

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
                Textarea::make('alat')
                    ->columnSpanFull(),
                Textarea::make('bahan')
                    ->columnSpanFull(),
                Textarea::make('prosedur')
                    ->columnSpanFull(),
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
                            ->required(),
                        TextInput::make('password')
                            ->label('Password')
                            ->password()
                            ->required()
                            ->dehydrateStateUsing(fn ($state) => bcrypt($state))
                            ->visible(fn ($record) => is_null($record) || $record->password === null),
                    ]),
                TextInput::make('sumber'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul')
                    ->label('Resep')
                    ->searchable()
                    ->sortable(),
                ImageColumn::make('gambar')
                    ->label('Foto')
                    ->circular()
                    ->size(40),
                TextColumn::make('deskripsi')
                    ->label('Deskripsi')
                    ->limit(20)
                    ->html()
                    ->formatStateUsing(fn ($state) => nl2br(e($state))),
                TextColumn::make('alat')
                    ->label('Alat')
                    ->limit(50)
                    ->html()
                    ->formatStateUsing(fn ($state) => nl2br(e($state))),
                TextColumn::make('bahan')
                    ->label('Bahan')
                    ->limit(50)
                    ->html()
                    ->formatStateUsing(fn ($state) => nl2br(e($state))),
                TextColumn::make('prosedur')
                    ->label('Prosedur')
                    ->limit(50)
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
                Section::make('Informasi Resep')
                    ->schema([
                        TextEntry::make('judul')
                            ->label('Nama Resep'),
                        ImageEntry::make('gambar')
                            ->label('Foto Resep')
                            ->circular(),
                        TextEntry::make('kategoris.judul')
                            ->label('Kategori'),
                        TextEntry::make('deskripsi')
                                ->label('Deskripsi Resep'),
                        TextEntry::make('alat')
                                ->label('Alat')
                                ->html()
                                ->formatStateUsing(fn ($state) => nl2br(e($state))),
                        TextEntry::make('bahan')
                                ->label('Bahan')
                                ->html()
                                ->formatStateUsing(fn ($state) => nl2br(e($state))),
                        TextEntry::make('prosedur')
                            ->label('Prosedur')
                            ->html()
                            ->formatStateUsing(fn ($state) => nl2br(e($state))),
                        TextEntry::make('user.name')
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
            'view' => Pages\ViewResep::route('/{record}'),
        ];
    }
}
