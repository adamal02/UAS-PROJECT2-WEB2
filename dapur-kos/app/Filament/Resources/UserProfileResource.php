<?php

namespace App\Filament\Resources;

use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\UserProfileResource\Pages\EditUserProfile;
use App\Filament\Resources\UserProfileResource\Pages\ListUserProfiles;



class UserProfileResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';
    protected static ?string $navigationLabel = 'Profil Saya';
    protected static ?string $pluralModelLabel = 'Profil Saya';
    protected static ?string $slug = 'profil';

    public static function shouldRegisterNavigation(): bool
    {
        return auth()->user()->role === 'user';
    }

    public static function canAccess(): bool
    {
        return auth()->user()->role === 'user';
    }

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('name')
                ->label('Nama Lengkap')
                ->required(),
            Forms\Components\TextInput::make('email')
                ->label('Email')
                ->email()
                ->required(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->query(fn (Builder $query) => $query->where('id', auth()->id()))
            ->columns([
                Tables\Columns\TextColumn::make('name')->label('Nama'),
                Tables\Columns\TextColumn::make('email')->label('Email'),
            ])
            ->actions([
                Tables\Actions\EditAction::make()->label('Edit'),
            ])
            ->bulkActions([]); // tidak ada bulk action
    }

    public static function getPages(): array
{
    return [
        'index' => ListUserProfiles::route('/'),
        'edit' => EditUserProfile::route('/{record}/edit'),
    ];
}
}

