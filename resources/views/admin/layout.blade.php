<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Admin Panel') - Expert System Diagnosa Laptop</title>
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Custom Styles -->
    @stack('styles')
    
    <style>
        /* Smooth scrolling */
        html {
            scroll-behavior: smooth;
        }
        
        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 10px;
        }
        
        ::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 10px;
        }
        
        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
        
        /* Loading animation */
        .loading-spinner {
            border: 3px solid #f3f3f3;
            border-top: 3px solid #3b82f6;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            animation: spin 1s linear infinite;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        
        /* Gradient text */
        .gradient-text {
            background: linear-gradient(45deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        /* Sidebar animations */
        .sidebar {
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            box-shadow: 0 0 40px rgba(0, 0, 0, 0.1);
        }
        
        .sidebar.collapsed {
            width: 70px;
        }
        
        .sidebar.collapsed .sidebar-text {
            opacity: 0;
            width: 0;
            margin: 0;
            padding: 0;
            display: none;
        }
        
        .sidebar.collapsed .sidebar-icon {
            margin-right: 0;
        }
        
        .sidebar.collapsed .user-info {
            opacity: 0;
        }
        
        .main-content {
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        
        /* Hover effects */
        .nav-item {
            position: relative;
            overflow: hidden;
        }
        
        .nav-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.1), transparent);
            transition: 0.5s;
        }
        
        .nav-item:hover::before {
            left: 100%;
        }
        
        /* Active menu indicator */
        .active-menu {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
        }
        
        .active-menu::after {
            content: '';
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 4px;
            height: 60%;
            background: white;
            border-radius: 2px 0 0 2px;
        }
        
        /* Card hover effects */
        .card-hover {
            transition: all 0.3s ease;
            border: 1px solid transparent;
        }
        
        .card-hover:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            border-color: #e2e8f0;
        }
        
        /* Badge pulse animation */
        @keyframes pulse-badge {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        .badge-pulse {
            animation: pulse-badge 2s infinite;
        }
        
        /* Fade in animation */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        .fade-in {
            animation: fadeIn 0.5s ease-out;
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Loading Overlay -->
    <div id="loadingOverlay" class="fixed inset-0 bg-white bg-opacity-90 flex items-center justify-center z-50 hidden">
        <div class="text-center">
            <div class="loading-spinner mx-auto mb-4"></div>
            <p class="text-gray-600 font-medium">Memuat dashboard...</p>
        </div>
    </div>

    <div class="flex h-screen overflow-hidden">
        <!-- Sidebar -->
        <div class="sidebar bg-gradient-to-b from-blue-900 to-blue-800 text-white w-64 flex flex-col" id="sidebar">
            <!-- Logo Section -->
            <div class="p-5 border-b border-blue-800 flex items-center justify-between bg-blue-900/50">
                <div class="flex items-center">
                    <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-xl flex items-center justify-center mr-3 shadow-lg">
                        <i class="fas fa-laptop-medical text-2xl"></i>
                    </div>
                    <div>
                        <span class="sidebar-text font-bold text-xl block gradient-text">ExpertLaptop</span>
                        <span class="sidebar-text text-xs text-blue-200 font-light">Diagnosis System</span>
                    </div>
                </div>
                <button id="sidebarToggle" class="text-blue-200 hover:text-white transition-transform hover:scale-110">
                    <i class="fas fa-bars text-lg"></i>
                </button>
            </div>

            <!-- Navigation Menu -->
            <nav class="flex-1 p-4 overflow-y-auto">
                <div class="mb-6 mt-2">
                    <p class="sidebar-text text-xs uppercase tracking-wider text-blue-300 mb-3 font-semibold">Menu Utama</p>
                </div>
                <ul class="space-y-1">
                    <li class="nav-item">
                        <a href="{{ route('admin.dashboard') }}" 
                           class="flex items-center p-3 rounded-xl transition-all duration-300 group relative
                                  {{ request()->routeIs('admin.dashboard') 
                                     ? 'active-menu bg-gradient-to-r from-blue-600 to-purple-600 text-white' 
                                     : 'hover:bg-blue-800/50 hover:pl-5' }}">
                            <i class="fas fa-tachometer-alt sidebar-icon text-lg mr-3 
                                {{ request()->routeIs('admin.dashboard') ? 'text-white' : 'text-blue-300' }}"></i>
                            <span class="sidebar-text font-medium">Dashboard</span>
                            @if(request()->routeIs('admin.dashboard'))
                            <span class="sidebar-text ml-auto w-2 h-2 bg-white rounded-full animate-pulse"></span>
                            @endif
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('admin.gejala.index') }}" 
                           class="flex items-center p-3 rounded-xl transition-all duration-300 group relative
                                  {{ request()->routeIs('admin.gejala.*') 
                                     ? 'active-menu bg-gradient-to-r from-blue-600 to-purple-600 text-white' 
                                     : 'hover:bg-blue-800/50 hover:pl-5' }}">
                            <i class="fas fa-list-check sidebar-icon text-lg mr-3 
                                {{ request()->routeIs('admin.gejala.*') ? 'text-white' : 'text-blue-300' }}"></i>
                            <span class="sidebar-text font-medium">Data Gejala</span>
                            <span class="sidebar-text ml-auto text-xs bg-blue-700 px-2 py-1 rounded-full font-bold">
                                {{ $totalGejala ?? 0 }}
                            </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('admin.kerusakan.index') }}" 
                           class="flex items-center p-3 rounded-xl transition-all duration-300 group relative
                                  {{ request()->routeIs('admin.kerusakan.*') 
                                     ? 'active-menu bg-gradient-to-r from-blue-600 to-purple-600 text-white' 
                                     : 'hover:bg-blue-800/50 hover:pl-5' }}">
                            <i class="fas fa-bug sidebar-icon text-lg mr-3 
                                {{ request()->routeIs('admin.kerusakan.*') ? 'text-white' : 'text-blue-300' }}"></i>
                            <span class="sidebar-text font-medium">Data Kerusakan</span>
                            <span class="sidebar-text ml-auto text-xs bg-blue-700 px-2 py-1 rounded-full font-bold">
                                {{ $totalKerusakan ?? 0 }}
                            </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('admin.basis-pengetahuan.index') }}" 
                           class="flex items-center p-3 rounded-xl transition-all duration-300 group relative
                                  {{ request()->routeIs('admin.basis-pengetahuan.*') 
                                     ? 'active-menu bg-gradient-to-r from-blue-600 to-purple-600 text-white' 
                                     : 'hover:bg-blue-800/50 hover:pl-5' }}">
                            <i class="fas fa-sitemap sidebar-icon text-lg mr-3 
                                {{ request()->routeIs('admin.basis-pengetahuan.*') ? 'text-white' : 'text-blue-300' }}"></i>
                            <span class="sidebar-text font-medium">Basis Pengetahuan</span>
                            <span class="sidebar-text ml-auto text-xs bg-blue-700 px-2 py-1 rounded-full font-bold badge-pulse">
                                {{ $rulesAktif ?? 0 }}/{{ $totalRules ?? 0 }}
                            </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('admin.history.index') }}" 
                           class="flex items-center p-3 rounded-xl transition-all duration-300 group relative
                                  {{ request()->routeIs('admin.history.*') 
                                     ? 'active-menu bg-gradient-to-r from-blue-600 to-purple-600 text-white' 
                                     : 'hover:bg-blue-800/50 hover:pl-5' }}">
                            <i class="fas fa-history sidebar-icon text-lg mr-3 
                                {{ request()->routeIs('admin.history.*') ? 'text-white' : 'text-blue-300' }}"></i>
                            <span class="sidebar-text font-medium">Riwayat Diagnosa</span>
                            <span class="sidebar-text ml-auto text-xs bg-blue-700 px-2 py-1 rounded-full font-bold">
                                {{ $totalDiagnosa ?? 0 }}
                            </span>
                        </a>
                    </li>
                </ul>
                
                <div class="mt-8 mb-4">
                    <p class="sidebar-text text-xs uppercase tracking-wider text-blue-300 mb-3 font-semibold">Analytics</p>
                    <ul class="space-y-1">
                        <li class="nav-item">
                            <a href="#" class="flex items-center p-3 rounded-xl transition-all duration-300 group hover:bg-blue-800/50 hover:pl-5">
                                <i class="fas fa-chart-bar sidebar-icon text-lg mr-3 text-blue-300"></i>
                                <span class="sidebar-text font-medium">Reports</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="flex items-center p-3 rounded-xl transition-all duration-300 group hover:bg-blue-800/50 hover:pl-5">
                                <i class="fas fa-chart-pie sidebar-icon text-lg mr-3 text-blue-300"></i>
                                <span class="sidebar-text font-medium">Statistics</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- User Profile Section -->
            <div class="p-4 border-t border-blue-800 bg-blue-900/30">
                <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-full flex items-center justify-center shadow-lg">
                        <i class="fas fa-user text-white"></i>
                    </div>
                    <div class="ml-3 sidebar-text user-info">
                        <p class="font-medium">{{ auth()->user()->name }}</p>
                        <p class="text-xs text-blue-200">Administrator</p>
                    </div>
                    <div class="ml-auto sidebar-text">
                        <div class="w-2 h-2 bg-green-400 rounded-full animate-pulse"></div>
                    </div>
                </div>
                
                <div class="space-y-2 pt-3 border-t border-blue-800">
                    <a href="{{ route('dashboard') }}" 
                       class="flex items-center text-blue-200 hover:text-white text-sm transition-colors group">
                        <i class="fas fa-arrow-left mr-2 group-hover:translate-x-1 transition-transform"></i>
                        <span class="sidebar-text">Kembali ke User</span>
                    </a>
                    <form method="POST" action="{{ route('logout') }}" class="w-full">
                        @csrf
                        <button type="submit" 
                                class="flex items-center text-blue-200 hover:text-white text-sm w-full group">
                            <i class="fas fa-sign-out-alt mr-2 group-hover:rotate-12 transition-transform"></i>
                            <span class="sidebar-text">Keluar</span>
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Main Content Area -->
        <div class="main-content flex-1 flex flex-col overflow-hidden">
            <!-- Top Navigation Bar -->
            <header class="bg-white shadow-sm border-b border-gray-200">
                <div class="flex items-center justify-between px-6 py-4">
                    <div>
                        <h1 class="text-2xl font-bold text-gray-800">@yield('title', 'Dashboard')</h1>
                        <div class="flex items-center mt-1">
                            <p class="text-sm text-gray-600">@yield('subtitle', 'Sistem Pakar Diagnosa Kerusakan Laptop')</p>
                            <div class="ml-3 flex items-center text-xs">
                                <span class="w-2 h-2 bg-green-500 rounded-full mr-1 animate-pulse"></span>
                                <span class="text-green-600 font-medium">Live</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="flex items-center space-x-4">
                        <!-- Notifications -->
                        <div class="relative group">
                            <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-gray-200 flex items-center justify-center transition-colors relative">
                                <i class="fas fa-bell text-gray-600"></i>
                                <span class="absolute -top-1 -right-1 w-5 h-5 bg-red-500 text-white text-xs rounded-full flex items-center justify-center font-bold">
                                    3
                                </span>
                            </button>
                            <!-- Notification Dropdown -->
                            <div class="absolute right-0 top-full mt-2 w-80 bg-white rounded-xl shadow-xl border border-gray-200 z-50 hidden group-hover:block">
                                <div class="p-4 border-b border-gray-100">
                                    <h3 class="font-semibold text-gray-800">Notifikasi</h3>
                                </div>
                                <div class="max-h-64 overflow-y-auto">
                                    <div class="p-3 border-b border-gray-100 hover:bg-gray-50 cursor-pointer">
                                        <div class="flex items-start">
                                            <div class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center mr-3">
                                                <i class="fas fa-user-plus text-blue-600 text-sm"></i>
                                            </div>
                                            <div>
                                                <p class="font-medium text-gray-800">User baru terdaftar</p>
                                                <p class="text-xs text-gray-500">2 menit yang lalu</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-3 border-b border-gray-100 hover:bg-gray-50 cursor-pointer">
                                        <div class="flex items-start">
                                            <div class="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center mr-3">
                                                <i class="fas fa-stethoscope text-green-600 text-sm"></i>
                                            </div>
                                            <div>
                                                <p class="font-medium text-gray-800">Diagnosa baru selesai</p>
                                                <p class="text-xs text-gray-500">15 menit yang lalu</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-3 hover:bg-gray-50 cursor-pointer">
                                        <div class="flex items-start">
                                            <div class="w-8 h-8 bg-yellow-100 rounded-full flex items-center justify-center mr-3">
                                                <i class="fas fa-exclamation-triangle text-yellow-600 text-sm"></i>
                                            </div>
                                            <div>
                                                <p class="font-medium text-gray-800">Gejala tanpa rules</p>
                                                <p class="text-xs text-gray-500">1 jam yang lalu</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="p-3 border-t border-gray-100">
                                    <a href="#" class="block text-center text-blue-600 hover:text-blue-800 text-sm font-medium">
                                        Lihat semua notifikasi
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- User Menu -->
                        <div class="relative group">
                            <button class="flex items-center space-x-3 p-2 rounded-lg hover:bg-gray-100 transition-colors">
                                <div class="w-9 h-9 bg-gradient-to-r from-blue-500 to-purple-600 rounded-full flex items-center justify-center text-white font-bold">
                                    {{ strtoupper(substr(auth()->user()->name, 0, 1)) }}
                                </div>
                                <div class="text-left hidden md:block">
                                    <p class="font-medium text-gray-800">{{ auth()->user()->name }}</p>
                                    <p class="text-xs text-gray-500">Administrator</p>
                                </div>
                                <i class="fas fa-chevron-down text-gray-400 text-sm"></i>
                            </button>
                            
                            <!-- User Dropdown -->
                            <div class="absolute right-0 top-full mt-2 w-48 bg-white rounded-xl shadow-xl border border-gray-200 z-50 hidden group-hover:block">
                                <div class="p-4 border-b border-gray-100">
                                    <p class="font-semibold text-gray-800">{{ auth()->user()->name }}</p>
                                    <p class="text-xs text-gray-500">{{ auth()->user()->email }}</p>
                                </div>
                                <div class="py-2">
                                    <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                        <i class="fas fa-user mr-3 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                        <i class="fas fa-cog mr-3 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                        <i class="fas fa-question-circle mr-3 text-gray-400"></i>
                                        Help & Support
                                    </a>
                                </div>
                                <div class="p-3 border-t border-gray-100">
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <button type="submit" class="flex items-center w-full text-sm text-red-600 hover:text-red-800">
                                            <i class="fas fa-sign-out-alt mr-3"></i>
                                            Keluar
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Date & Time -->
                        <div class="hidden lg:block text-right">
                            <p class="text-sm font-medium text-gray-800" id="currentTime">
                                {{ now()->format('H:i') }}
                            </p>
                            <p class="text-xs text-gray-500" id="currentDate">
                                {{ now()->translatedFormat('l, d F Y') }}
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Breadcrumb -->
                <div class="px-6 py-2 bg-gray-50 border-t border-gray-100">
                    <nav class="flex" aria-label="Breadcrumb">
                        <ol class="inline-flex items-center space-x-1 md:space-x-3">
                            <li class="inline-flex items-center">
                                <a href="{{ route('admin.dashboard') }}" class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-blue-600">
                                    <i class="fas fa-home mr-2"></i>
                                    Dashboard
                                </a>
                            </li>
                            @if(Request::route()->getName() != 'admin.dashboard')
                            <li>
                                <div class="flex items-center">
                                    <i class="fas fa-chevron-right text-gray-400 mx-2"></i>
                                    <span class="ml-1 text-sm font-medium text-gray-500 md:ml-2">
                                        @yield('title', 'Page')
                                    </span>
                                </div>
                            </li>
                            @endif
                        </ol>
                    </nav>
                </div>
            </header>

            <!-- Main Content -->
            <main class="flex-1 overflow-y-auto p-6 bg-gray-50 fade-in">
                <!-- Flash Messages -->
                @if(session('success'))
                <div class="mb-6 bg-gradient-to-r from-green-50 to-emerald-50 border border-green-200 rounded-xl p-4 shadow-sm">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center">
                                <i class="fas fa-check-circle text-green-600"></i>
                            </div>
                        </div>
                        <div class="ml-4">
                            <h3 class="text-sm font-semibold text-green-800">Berhasil!</h3>
                            <div class="mt-1 text-sm text-green-700">
                                {{ session('success') }}
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                @if(session('error'))
                <div class="mb-6 bg-gradient-to-r from-red-50 to-pink-50 border border-red-200 rounded-xl p-4 shadow-sm">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <div class="w-10 h-10 bg-red-100 rounded-full flex items-center justify-center">
                                <i class="fas fa-exclamation-triangle text-red-600"></i>
                            </div>
                        </div>
                        <div class="ml-4">
                            <h3 class="text-sm font-semibold text-red-800">Terjadi Kesalahan!</h3>
                            <div class="mt-1 text-sm text-red-700">
                                {{ session('error') }}
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                @if(session('info'))
                <div class="mb-6 bg-gradient-to-r from-blue-50 to-cyan-50 border border-blue-200 rounded-xl p-4 shadow-sm">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <div class="w-10 h-10 bg-blue-100 rounded-full flex items-center justify-center">
                                <i class="fas fa-info-circle text-blue-600"></i>
                            </div>
                        </div>
                        <div class="ml-4">
                            <h3 class="text-sm font-semibold text-blue-800">Informasi</h3>
                            <div class="mt-1 text-sm text-blue-700">
                                {{ session('info') }}
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                <!-- Page Content -->
                @yield('content')
            </main>

            <!-- Footer -->
            <footer class="bg-white border-t border-gray-200 py-4 px-6">
                <div class="flex flex-col md:flex-row justify-between items-center">
                    <div class="text-sm text-gray-600">
                        <p>&copy; {{ date('Y') }} <span class="font-semibold text-blue-600">ExpertLaptop</span> - Sistem Pakar Diagnosa Kerusakan Laptop. All rights reserved.</p>
                    </div>
                    <div class="flex items-center space-x-4 mt-2 md:mt-0">
                        <span class="text-xs text-gray-500 flex items-center">
                            <i class="fas fa-server mr-1"></i>
                            v1.2.0
                        </span>
                        <span class="text-xs text-gray-500 flex items-center">
                            <i class="fas fa-database mr-1"></i>
                            {{ $totalDiagnosa ?? 0 }} diagnosa
                        </span>
                        <span class="text-xs text-gray-500 flex items-center">
                            <i class="fas fa-users mr-1"></i>
                            {{ $totalUser ?? 0 }} users
                        </span>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <!-- Back to Top Button -->
    <button id="backToTop" class="fixed bottom-6 right-6 w-12 h-12 bg-blue-600 text-white rounded-full shadow-lg flex items-center justify-center hover:bg-blue-700 transition-all duration-300 transform translate-y-10 opacity-0">
        <i class="fas fa-chevron-up"></i>
    </button>

    @stack('scripts')
    
    <script>
        // Initialize loading state
        document.addEventListener('DOMContentLoaded', function() {
            // Hide loading overlay
            setTimeout(() => {
                document.getElementById('loadingOverlay').classList.add('hidden');
            }, 500);
            
            // Update time every minute
            function updateDateTime() {
                const now = new Date();
                const timeString = now.toLocaleTimeString('id-ID', { 
                    hour: '2-digit', 
                    minute: '2-digit',
                    timeZone: 'Asia/Jakarta'
                });
                const dateString = now.toLocaleDateString('id-ID', {
                    weekday: 'long',
                    year: 'numeric',
                    month: 'long',
                    day: 'numeric'
                });
                
                const timeElement = document.getElementById('currentTime');
                const dateElement = document.getElementById('currentDate');
                
                if(timeElement) timeElement.textContent = timeString;
                if(dateElement) dateElement.textContent = dateString;
            }
            
            setInterval(updateDateTime, 60000);
            updateDateTime();
            
            // Sidebar toggle functionality
            const sidebarToggle = document.getElementById('sidebarToggle');
            const sidebar = document.getElementById('sidebar');
            
            sidebarToggle.addEventListener('click', function() {
                sidebar.classList.toggle('collapsed');
                localStorage.setItem('sidebarCollapsed', sidebar.classList.contains('collapsed'));
            });
            
            // Load saved sidebar state
            const savedState = localStorage.getItem('sidebarCollapsed');
            if(savedState === 'true') {
                sidebar.classList.add('collapsed');
            }
            
            // Auto-hide sidebar on mobile
            function handleResize() {
                if (window.innerWidth < 768) {
                    sidebar.classList.add('collapsed');
                } else if(savedState !== 'true') {
                    sidebar.classList.remove('collapsed');
                }
            }
            
            window.addEventListener('resize', handleResize);
            handleResize();
            
            // Back to top button
            const backToTopBtn = document.getElementById('backToTop');
            
            window.addEventListener('scroll', function() {
                if (window.pageYOffset > 300) {
                    backToTopBtn.classList.remove('translate-y-10', 'opacity-0');
                    backToTopBtn.classList.add('translate-y-0', 'opacity-100');
                } else {
                    backToTopBtn.classList.remove('translate-y-0', 'opacity-100');
                    backToTopBtn.classList.add('translate-y-10', 'opacity-0');
                }
            });
            
            backToTopBtn.addEventListener('click', function() {
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            });
            
            // Active menu indicator for nested routes
            const currentPath = window.location.pathname;
            const navItems = document.querySelectorAll('.nav-item a');
            
            navItems.forEach(item => {
                const href = item.getAttribute('href');
                if(href && currentPath.startsWith(href.replace(route('admin.dashboard'), ''))) {
                    item.classList.add('active-menu');
                }
            });
            
            // Notification dropdown close on click outside
            document.addEventListener('click', function(event) {
                const notifications = document.querySelectorAll('.group');
                notifications.forEach(group => {
                    if (!group.contains(event.target)) {
                        const dropdown = group.querySelector('.hidden');
                        if(dropdown) dropdown.classList.add('hidden');
                    }
                });
            });
            
            // Add ripple effect to buttons
            document.querySelectorAll('button, a').forEach(button => {
                button.addEventListener('click', function(e) {
                    const ripple = document.createElement('span');
                    const rect = this.getBoundingClientRect();
                    const size = Math.max(rect.width, rect.height);
                    const x = e.clientX - rect.left - size / 2;
                    const y = e.clientY - rect.top - size / 2;
                    
                    ripple.style.cssText = `
                        position: absolute;
                        border-radius: 50%;
                        background: rgba(255, 255, 255, 0.7);
                        transform: scale(0);
                        animation: ripple 0.6s linear;
                        width: ${size}px;
                        height: ${size}px;
                        top: ${y}px;
                        left: ${x}px;
                        pointer-events: none;
                    `;
                    
                    this.appendChild(ripple);
                    
                    setTimeout(() => {
                        ripple.remove();
                    }, 600);
                });
            });
            
            // Add CSS for ripple animation
            const style = document.createElement('style');
            style.textContent = `
                @keyframes ripple {
                    to {
                        transform: scale(4);
                        opacity: 0;
                    }
                }
            `;
            document.head.appendChild(style);
        });
        
        // Show loading overlay during page transitions
        document.querySelectorAll('a').forEach(link => {
            if(link.href && !link.href.includes('#') && link.getAttribute('target') !== '_blank') {
                link.addEventListener('click', function(e) {
                    if(this.getAttribute('href') !== '#' && !this.classList.contains('no-loading')) {
                        document.getElementById('loadingOverlay').classList.remove('hidden');
                    }
                });
            }
        });
        
        // Handle browser back/forward buttons
        window.addEventListener('pageshow', function(event) {
            if (event.persisted) {
                document.getElementById('loadingOverlay').classList.remove('hidden');
                setTimeout(() => {
                    document.getElementById('loadingOverlay').classList.add('hidden');
                }, 300);
            }
        });
    </script>
</body>
</html>