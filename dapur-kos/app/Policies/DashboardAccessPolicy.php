<?php

namespace App\Policies;

use App\Models\User;
use Filament\Pages\Dashboard;

class DashboardAccessPolicy
{
    /**
     * Create a new policy instance.
     */
    public function __construct()
    {
        //
    }

    public function viewAny(User $user): bool
{
    return $user->role === 'admin';
}
}
