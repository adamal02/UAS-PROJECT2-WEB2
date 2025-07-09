<?php

namespace App\Providers\Filament;

use App\Filament\Resources\KategoriResource;
use App\Filament\Resources\PenggunaResource;
use Filament\Facades\Filament;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Navigation\UserMenuItem;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Althinect\FilamentSpatieRolesPermissions\FilamentSpatieRolesPermissionsPlugin;
use Althinect\FilamentSpatieRolesPermissions\Resources\PermissionResource;
use Althinect\FilamentSpatieRolesPermissions\Resources\RoleResource;
use App\Filament\Resources\ArtikelResource;
use App\Filament\Resources\ResepResource;
use App\Filament\Resources\UserResource;
use App\Models\User;
use Filament\Navigation\NavigationBuilder;
use Filament\Navigation\NavigationGroup;
use Filament\Navigation\NavigationItem;
use Filament\Pages\Dashboard;
use Illuminate\Support\Facades\Auth;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->sidebarFullyCollapsibleOnDesktop() //untuk membuat sidebar bisa di-collapse pada desktop
            ->id('admin')
            ->path('admin')
            ->login()

            ->registration()
            
            ->passwordReset()
            ->colors([
                'primary' => Color::Amber,
            
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                // Widgets\FilamentInfoWidget::class,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->plugin(FilamentSpatieRolesPermissionsPlugin::make()) //plugin untuk mengelola peran dan izin pengguna
            ->navigation(function (NavigationBuilder $builder): NavigationBuilder {
                return $builder->groups([
                    NavigationGroup::make('')
                        ->items([
                            NavigationItem::make('Dashboard')
                            ->icon('heroicon-o-home')
                            ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.pages.dashboard'))
                            ->url(fn (): string => Dashboard::getUrl())
                            // ->visible(fn (): bool => optional(Auth::user())->can('viewAny', Dashboard::class)),
                        ]),
                    NavigationGroup::make('')
                        ->items([
                            NavigationItem::make('Kategori')
                            ->icon('heroicon-o-rectangle-stack')
                            ->url(KategoriResource::getUrl('index'))
                            ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resources.kategoris.*')),
                            NavigationItem::make('Resep')
                            ->icon('heroicon-o-book-open')
                            ->url(ResepResource::getUrl('index'))
                            ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resources.reseps.*')),
                            NavigationItem::make('Artikel')
                            ->icon('heroicon-o-newspaper')
                            ->url(ArtikelResource::getUrl('index'))
                            ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resources.artikels.*')),
                            NavigationItem::make('Pengguna')
                                ->Label('Profile')
                                ->icon('heroicon-o-users')
                                ->url(PenggunaResource::getUrl('index'))
                                ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resources.penggunas.*')),
                        ]),
                     NavigationGroup::make('User Management')
                        ->items([
                            NavigationItem::make('Users')
                                ->icon('heroicon-o-users')
                                ->url(UserResource::getUrl('index'))
                                ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resources.users.*'))
                                ->visible(fn (): bool => optional(Auth::user())->can('viewAny', User::class)),
                        ]),
                ]);
            });
    }

    

    public function boot(): void
    {
        Filament::serving(function() {
            Filament::registerUserMenuItems([
                UserMenuItem::make()
                    ->label('Settings')
                    ->url(PenggunaResource::getUrl())
                    ->icon(icon: 'heroicon-o-cog'),
                ]);
        });
    }
}
