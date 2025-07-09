<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProfileResource\Pages;
use App\Filament\Resources\ProfileResource\RelationManagers;
use App\Models\Profile;
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
use Filament\Tables\Columns\BooleanColumn;
use Filament\Forms\Components\TextInput;

class ProfileResource extends Resource
{
    protected static ?string $model = Profile::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->label('Nama Pengguna')
                    ->required()
                    ->maxLength(255),
                TextInput::make('email')
                    ->label('Email Pengguna')
                    ->required()
                    ->email()
                    ->maxLength(255),
                TextInput::make('password')
                    ->label('Password')
                    ->required()
                    ->maxLength(255),
                TextInput::make('foto')
                    ->label('Foto Pengguna')
                    ->maxLength(255)
                    ->nullable(),
                Forms\Components\Select::make('role')
                    ->label('Peran Pengguna')
                    ->options([
                        'admin' => 'Admin',
                        'user' => 'User',
                    ])
                    ->default('user')
                    ->required(),
                ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                 Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->searchable(),
                Tables\Columns\TextColumn::make('foto')
                    ->label('Foto Pengguna'),
                Tables\Columns\TextColumn::make('name')
                    ->label('Nama Pengguna')
                    ->searchable(),
                Tables\Columns\TextColumn::make('email')
                    ->label('Email Pengguna')
                    ->searchable(),
                Tables\Columns\TextColumn::make('role')
                    ->label('Peran Pengguna')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Dibuat Pada')
                    ->dateTime(),
            ])

            ->filters([
                SelectFilter::make('role')
                    ->label('Peran Pengguna')
                    ->options([
                        'admin' => 'Admin',
                        'user' => 'User',
                    ]),
                SelectFilter::make('created_at')
                    ->label('Tanggal Dibuat')
                    ->options([
                        '7_hari_terakhir' => '7 Hari Terakhir',
                        '30_hari_terakhir' => '30 Hari Terakhir',
                        'bulan_ini' => 'Bulan Ini',
                        'bulan_lalu' => 'Bulan Lalu',
                    ]),
                SelectFilter::make('aktif')
                    ->label('Status Aktif')
                    ->options([
                        true => 'Aktif',
                        false => 'Tidak Aktif',
                    ]),
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
            'index' => Pages\ListProfiles::route('/'),
            'create' => Pages\CreateProfile::route('/create'),
            'edit' => Pages\EditProfile::route('/{record}/edit'),
        ];
    }
}
