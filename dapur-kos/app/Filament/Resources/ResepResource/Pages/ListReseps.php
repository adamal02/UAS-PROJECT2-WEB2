<?php

namespace App\Filament\Resources\ResepResource\Pages;

use App\Filament\Resources\ResepResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\View\View;

class ListReseps extends ListRecords
{
    protected static string $resource = ResepResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTitle(): string
    {
        return 'Resep';
    }

    // public function getHeader(): ?View
    // {
    //     return view('filament.custom.upload-file');
    // }
}
