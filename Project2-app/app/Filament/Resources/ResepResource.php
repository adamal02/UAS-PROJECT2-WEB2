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
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions;
use Filament\Forms\Components\TextInput;

class ResepResource extends Resource
{
    protected static ?string $model = Resep::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('judul')
                    ->label('Judul Resep')
                    ->required()
                    ->maxLength(255),
                TextInput::make('deskripsi')
                    ->label('Deskripsi')
                    ->required()    
                    ->maxLength(500),
                TextInput::make('alat')
                    ->label('Alat')
                    ->required()
                    ->maxLength(255),  
                TextInput::make('bahan')
                    ->label('Bahan')
                    ->required()
                    ->maxLength(500),
                TextInput::make('langkah')
                    ->label('Langkah')
                    ->required()
                    ->maxLength(1000),
                TextInput::make('penulis')
                    ->label('Penulis')
                    ->required()
                    ->maxLength(255),
                TextInput::make('sumber')
                    ->label('Sumber')
                    ->required()
                    ->maxLength(255),   
                Forms\Components\Select::make('kategori_id')
                    ->label('Kategori Resep')
                    ->relationship('kategori', 'nama')
                    ->required()    
                    ->searchable()
                    ->preload()
                    ->options(function (Builder $query) {
                        return $query->pluck('nama', 'id');
                    }),
                Forms\Components\Select::make('publik')
                    ->label('Status Publik')
                    ->options([         
                        'Ya' => 'Ya',
                        'Tidak' => 'Tidak',
                    ])
                    ->default('Ya')
                    ->required()
                    ->searchable()  
                    ->preload()
                    ->options([
                        'Ya' => 'Ya',
                        'Tidak' => 'Tidak',
                    ])->default('Ya'),
                Forms\Components\TextInput::make('gambar')
                    ->label('Gambar Resep')
                    ->nullable()
                    ->maxLength(255)    
                    ->helperText('URL gambar resep, opsional')
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('ID')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('judul')
                    ->label('Judul Resep')
                    ->searchable(),
                TextColumn::make('deskripsi')
                    ->label('Deskripsi')
                    ->searchable(),
                 TextColumn::make('alat')
                    ->label('Alat')
                    ->searchable(),
                TextColumn::make('bahan')
                    ->label('Bahan')
                    ->searchable(),
                 TextColumn::make('langkah')
                    ->label('Langkah')
                    ->searchable(),
                 TextColumn::make('penulis')
                    ->label('Penulis')
                    ->searchable(),
                 TextColumn::make('sumber')
                    ->label('Sumber')
                    ->searchable(),
                 TextColumn::make('publik')
                    ->label('Publik')
                    ->searchable(),
                TextColumn::make('created_at')
                    ->label('Dibuat Pada')
                    ->dateTime(),  
            ])

            ->filters([
                 SelectFilter::make('kategori.nama')
                    ->label('Kategori Resep')
                    ->relationship('kategori', 'nama'),
                SelectFilter::make('publik')
                    ->label('Status Publik')
                    ->options([
                        'Ya' => 'Ya',
                        'Tidak' => 'Tidak',
                    ])->default('Ya'),
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
