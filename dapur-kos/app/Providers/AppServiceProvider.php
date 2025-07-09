<?php

namespace App\Providers;

use App\Models\Artikel;
use App\Models\Kategori;
use App\Models\Pengguna;
use App\Models\Resep;
use App\Models\User;
use App\Policies\ArtikelPolicy;
use App\Policies\KategoriPolicy;
use App\Policies\PenggunaPolicy;
use App\Policies\ResepPolicy;
use App\Policies\UserPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::policy(Pengguna::class, PenggunaPolicy::class);
        Gate::policy(User::class, UserPolicy::class);
        Gate::policy(Artikel::class, ArtikelPolicy::class);
        Gate::policy(Kategori::class, KategoriPolicy::class);
        Gate::policy(Resep::class, ResepPolicy::class);

    }

    protected $policies = [
    \App\Policies\DashboardAccessPolicy::class => \App\Policies\DashboardAccessPolicy::class,
    ];

    public function policies()
    {
        return $this->policies;
    }
}
