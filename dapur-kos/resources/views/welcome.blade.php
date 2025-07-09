<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Dapur Kos</title>
  <script src="https://cdn.tailwindcss.com"></script>

  <style>
    @keyframes float {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(-12px); }
    }

    @keyframes pulse {
        0%, 100% { transform: scale(1); opacity: 0.2; }
        50% { transform: scale(1.1); opacity: 0.4; }
    }

     @keyframes fadeIn {
        0% { opacity: 0; transform: translateY(10px); }
        100% { opacity: 1; transform: translateY(0); }
    }

    .animate-float {
        animation: float 4s ease-in-out infinite;
    }

    .animate-pulse-slow {
        animation: pulse 6s ease-in-out infinite;
    }

    .animate-fade-in {
        animation: fadeIn 1.5s ease-out;
    }
  </style>

</head>

<body class="bg-orange-50 text-gray-800">

  <!-- Navbar -->
  <header class="bg-white shadow-md sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold text-orange-500">🍽 Dapur Kos</h1>
      <nav class="space-x-6 hidden md:block">
        <a href="#fitur" class="hover:text-orange-500 font-medium">Fitur</a>
        <a href="#resep" class="hover:text-orange-500 font-medium">Resep</a>
        <a href="#tim" class="hover:text-orange-500 font-medium">Tim</a>
      </nav>
      <div class="space-x-3">
        <a href="{{ route('filament.admin.auth.login') }}" class="text-sm font-medium px-4 py-2 rounded-full transition
           text-orange-600 hover:text-white hover:bg-orange-500">Login</a>
        <a href="{{ route('filament.admin.auth.register') }}" class="text-sm font-medium px-4 py-2 rounded-full transition
           text-orange-600 hover:text-white hover:bg-orange-500">Daftar</a>
      </div>
    </div>
  </header>

  <!-- Hero -->
  <section class="relative text-center py-24 bg-gradient-to-br from-orange-100 via-orange-200 to-yellow-100 overflow-hidden">

    <!-- Dekorasi SVG -->
        <!-- Bulat -->
            <div class="absolute top-10 left-10 w-24 h-24 bg-orange-300 rounded-full opacity-20 animate-pulse-slow"></div>
            <div class="absolute bottom-10 right-10 w-32 h-32 bg-orange-400 rounded-full opacity-10 animate-pulse-slow"></div>
        <!-- Mangkuk Mie -->
            <svg class="absolute top-16 left-5 w-24 h-24 opacity-20 animate-float" viewBox="0 0 64 64" fill="none">
                <path d="M12 32c0 11 9 20 20 20s20-9 20-20H12z" fill="#F97316"/>
                <path d="M20 24h24M20 20h24M20 16h24" stroke="#EA580C" stroke-width="2"/>
            </svg>
        <!-- Wajan -->
            <svg class="absolute bottom-16 right-5 w-28 h-28 opacity-20 animate-float" viewBox="0 0 64 64" fill="none">
                <circle cx="32" cy="32" r="14" fill="#FDBA74"/>
                <path d="M46 46l8 8" stroke="#EA580C" stroke-width="4" stroke-linecap="round"/>
            </svg>
        <!-- Spatula -->
            <svg class="absolute top-8 right-28 w-20 h-20 opacity-10 animate-float" viewBox="0 0 64 64" fill="none">
                <path d="M20 10h4v44h-4zM16 52h12v4H16z" fill="#F97316"/>
            </svg>
        <!-- Panci -->
            <svg class="absolute bottom-4 left-20 w-20 h-20 opacity-10 animate-float" viewBox="0 0 64 64" fill="none">
                <rect x="16" y="24" width="32" height="20" rx="4" fill="#F97316"/>
                <path d="M16 32h32" stroke="#EA580C" stroke-width="2"/>
                <circle cx="32" cy="20" r="4" fill="#FDBA74"/>
            </svg>

            <svg class="absolute top-0 right-0 w-40 h-40 opacity-10 rotate-12 animate-float" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" fill="none">
                <path d="M10 10 H54 V54 H10 Z" stroke="orange" stroke-width="2" fill="none"/>
                <path d="M32 14 V50" stroke="orange" stroke-width="2"/>
            </svg>

            <svg class="absolute bottom-0 left-0 w-48 h-48 opacity-10 animate-float" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 64 64">
                <circle cx="32" cy="32" r="30" stroke="orange" stroke-width="4" />
                <path d="M20 44 C30 30, 34 30, 44 44" stroke="orange" stroke-width="2" fill="none"/>
                <circle cx="32" cy="28" r="4" fill="orange" />
            </svg>

    <!-- Konten Hero -->
    <div class="relative z-10 px-4">
      <h2 class="text-4xl md:text-5xl font-extrabold mb-4 text-orange-700 animate-fade-in">Resep Simple & Hemat untuk Anak Kos</h2>
      <p class="text-lg md:text-xl mb-8 text-gray-700 animate-fade-in">Masak enak tanpa ribet. Temukan ide makanan hemat dan nikmat tiap hari.</p>
      <a href="{{ route('filament.admin.auth.login') }}" class="bg-orange-500 text-white px-6 py-3 rounded-full text-lg font-semibold hover:bg-orange-600 transition animate-fade-in">Lihat Resep</a>
    </div>
  </section>

  <!-- Fitur -->
  <section id="fitur" class="py-20 bg-white">
    <div class="max-w-6xl mx-auto px-6 text-center">
      <h3 class="text-3xl font-bold mb-10 text-gray-800">Kenapa Dapur Kos?</h3>
      <div class="grid md:grid-cols-3 gap-10 text-left">
        <div class="bg-orange-100 p-6 rounded-xl shadow-sm hover:shadow-md transition animate-fade-in">
          <div class="text-orange-500 text-3xl mb-4">👩🏻‍🍳</div>
          <h4 class="text-xl font-semibold mb-2">Langkah Masak Jelas</h4>
          <p class="text-gray-600">Setiap resep punya langkah-langkah simpel dan mudah diikuti.</p>
        </div>
        <div class="bg-orange-100 p-6 rounded-xl shadow-sm hover:shadow-md transition animate-fade-in">
          <div class="text-orange-500 text-3xl mb-4">💰</div>
          <h4 class="text-xl font-semibold mb-2">Bahan Murah</h4>
          <p class="text-gray-600">Bahan yang digunakan bisa ditemukan di warung sekitar kosan.</p>
        </div>
        <div class="bg-orange-100 p-6 rounded-xl shadow-sm hover:shadow-md transition animate-fade-in">
          <div class="text-orange-500 text-3xl mb-4">📋</div>  
          <h4 class="text-xl font-semibold mb-2">Inspirasi Harian</h4>
          <p class="text-gray-600">Ide masakan baru setiap hari, nggak bosan di kamar kos!</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Resep -->
  <section id="resep" class="py-20 bg-orange-50">
    <div class="max-w-6xl mx-auto px-6">
      <h3 class="text-3xl font-bold text-center mb-12 text-gray-800">Resep Viral</h3>
      <div class="grid md:grid-cols-3 gap-8">
        <?php foreach ($reseps as $r): ?>
        <div class="bg-white rounded-2xl shadow-md hover:shadow-lg transition">
          <img src="<?= $r['gambar'] ?>" alt="<?= $r['judul'] ?>" class="w-full h-48 object-cover rounded-t-2xl">
          <div class="p-4">
            <h4 class="font-semibold text-lg mb-2"><?= $r['judul'] ?></h4>
            <p class="text-sm text-gray-600"><?= $r['deskripsi'] ?></p>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>

  <!-- Tim -->
  <section id="tim" class="py-20 bg-white">
    <div class="max-w-6xl mx-auto px-6">
      <h3 class="text-3xl font-bold mb-10 text-center text-gray-800">Tim Dapur Kos</h3>
      <div class="grid md:grid-cols-5 gap-4">
        @foreach ($anggota as $a)
        <div class="bg-orange-100 rounded-xl shadow-md p-4 text-center">
          <h4 class="text-lg font-bold mb-1">{{ $a['nama'] }}</h4>
          <p class="text-sm text-gray-600">NIM: {{ $a['nim'] }}</p>
        </div>
        @endforeach
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-orange-200 text-center py-6 text-sm text-gray-700">
    &copy; <?= date('Y') ?> Dapur Kos. Dibuat oleh anak kos, untuk anak kos.
  </footer>

</body>
</html>
