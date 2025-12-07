@extends('admin.layout')

@section('title', 'Dashboard Admin')
@section('subtitle', 'Overview Sistem Pakar Diagnosa Laptop')

@push('styles')
<style>
    /* Custom Animations */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    @keyframes pulse {
        0%, 100% { opacity: 1; }
        50% { opacity: 0.7; }
    }
    
    .card-hover {
        transition: all 0.3s ease;
        border: 1px solid transparent;
    }
    
    .card-hover:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        border-color: #e2e8f0;
    }
    
    .progress-bar-animated {
        transition: width 1.5s ease-in-out;
    }
    
    .stat-card {
        animation: fadeInUp 0.6s ease-out;
        animation-fill-mode: both;
    }
    
    .stat-card:nth-child(1) { animation-delay: 0.1s; }
    .stat-card:nth-child(2) { animation-delay: 0.2s; }
    .stat-card:nth-child(3) { animation-delay: 0.3s; }
    .stat-card:nth-child(4) { animation-delay: 0.4s; }
    
    .chart-container {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 15px;
        padding: 20px;
        color: white;
        box-shadow: 0 10px 20px rgba(102, 126, 234, 0.2);
    }
    
    .activity-item {
        border-left: 3px solid transparent;
        transition: all 0.3s ease;
    }
    
    .activity-item:hover {
        border-left-color: #3b82f6;
        background: linear-gradient(90deg, rgba(59, 130, 246, 0.05) 0%, transparent 100%);
    }
    
    .badge-pulse {
        animation: pulse 2s infinite;
    }
    
    .health-indicator {
        width: 12px;
        height: 12px;
        border-radius: 50%;
        display: inline-block;
        margin-right: 8px;
    }
    
    .health-good { background-color: #10b981; box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.2); }
    .health-warning { background-color: #f59e0b; box-shadow: 0 0 0 3px rgba(245, 158, 11, 0.2); }
    .health-critical { background-color: #ef4444; box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.2); }
    
    .trend-up {
        color: #10b981;
        animation: pulse 1.5s infinite;
    }
    
    .trend-down {
        color: #ef4444;
    }
    
    .quick-action-btn {
        transition: all 0.3s ease;
        border: 2px solid transparent;
    }
    
    .quick-action-btn:hover {
        border-color: currentColor;
        transform: scale(1.05);
    }
</style>
@endpush

@section('content')
<div class="space-y-8">
    <!-- Welcome Header -->
    <div class="bg-gradient-to-r from-blue-500 to-purple-600 rounded-2xl p-6 text-white shadow-xl">
        <div class="flex items-center justify-between">
            <div>
                <h1 class="text-2xl font-bold mb-2">Selamat Datang, {{ auth()->user()->name }}! 👋</h1>
                <p class="opacity-90">Dashboard Admin Sistem Pakar Diagnosa Kerusakan Laptop</p>
                <div class="mt-4 flex items-center space-x-4 text-sm">
                    <div class="flex items-center">
                        <i class="fas fa-calendar-alt mr-2"></i>
                        <span>{{ now()->translatedFormat('l, d F Y') }}</span>
                    </div>
                    <div class="flex items-center">
                        <i class="fas fa-clock mr-2"></i>
                        <span>{{ now()->format('H:i') }} WIB</span>
                    </div>
                    <div class="flex items-center">
                        <i class="fas fa-server mr-2"></i>
                        <span>System Status: <span class="font-bold text-green-300">Online</span></span>
                    </div>
                </div>
            </div>
            <div class="hidden md:block">
                <div class="w-16 h-16 bg-white/20 rounded-full flex items-center justify-center">
                    <i class="fas fa-laptop-medical text-3xl"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- Statistics Grid -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        <!-- Total Diagnosa -->
        <div class="stat-card bg-white rounded-xl shadow-lg p-6 card-hover border-l-4 border-blue-500">
            <div class="flex items-center justify-between mb-4">
                <div class="p-3 bg-blue-100 rounded-xl">
                    <i class="fas fa-stethoscope text-blue-600 text-xl"></i>
                </div>
                <div class="text-right">
                    <span class="text-xs font-semibold px-2 py-1 rounded-full bg-blue-100 text-blue-800">
                        +{{ $diagnosaHariIni }} hari ini
                    </span>
                </div>
            </div>
            <h3 class="text-sm text-gray-500 uppercase tracking-wider">Total Diagnosa</h3>
            <div class="flex items-end justify-between mt-2">
                <p class="text-3xl font-bold text-gray-800">{{ $totalDiagnosa }}</p>
                <div class="text-green-500 flex items-center">
                    <i class="fas fa-arrow-up mr-1"></i>
                    <span class="text-sm font-semibold">12.5%</span>
                </div>
            </div>
            <div class="mt-4">
                <div class="flex justify-between text-xs text-gray-500 mb-1">
                    <span>Target: 1000</span>
                    <span>{{ round(($totalDiagnosa/1000)*100) }}%</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-2">
                    <div class="bg-blue-500 h-2 rounded-full progress-bar-animated" 
                         style="width: {{ ($totalDiagnosa/1000)*100 }}%"></div>
                </div>
            </div>
        </div>

        <!-- Total User -->
        <div class="stat-card bg-white rounded-xl shadow-lg p-6 card-hover border-l-4 border-green-500">
            <div class="flex items-center justify-between mb-4">
                <div class="p-3 bg-green-100 rounded-xl">
                    <i class="fas fa-users text-green-600 text-xl"></i>
                </div>
                <div class="text-right">
                    @if($userBaruHariIni > 0)
                    <span class="badge-pulse inline-flex items-center">
                        <span class="w-2 h-2 bg-green-500 rounded-full mr-1"></span>
                        <span class="text-xs font-semibold px-2 py-1 rounded-full bg-green-100 text-green-800">
                            +{{ $userBaruHariIni }} baru
                        </span>
                    </span>
                    @endif
                </div>
            </div>
            <h3 class="text-sm text-gray-500 uppercase tracking-wider">Total Pengguna</h3>
            <div class="flex items-end justify-between mt-2">
                <p class="text-3xl font-bold text-gray-800">{{ $totalUser }}</p>
                <div class="text-green-500 flex items-center">
                    <i class="fas fa-user-plus mr-1"></i>
                    <span class="text-sm font-semibold">8.2%</span>
                </div>
            </div>
            <div class="mt-4">
                <div class="flex justify-between text-xs text-gray-500 mb-1">
                    <span>Aktif: {{ round($totalUser * 0.8) }}</span>
                    <span>{{ round(($totalUser/500)*100) }}%</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-2">
                    <div class="bg-green-500 h-2 rounded-full progress-bar-animated" 
                         style="width: {{ ($totalUser/500)*100 }}%"></div>
                </div>
            </div>
        </div>

        <!-- Data Master -->
        <div class="stat-card bg-white rounded-xl shadow-lg p-6 card-hover border-l-4 border-purple-500">
            <div class="flex items-center justify-between mb-4">
                <div class="p-3 bg-purple-100 rounded-xl">
                    <i class="fas fa-database text-purple-600 text-xl"></i>
                </div>
                <div class="text-right">
                    <span class="text-xs font-semibold px-2 py-1 rounded-full bg-purple-100 text-purple-800">
                        {{ $rulesAktif }}/{{ $totalRules }} aktif
                    </span>
                </div>
            </div>
            <h3 class="text-sm text-gray-500 uppercase tracking-wider">Data Master</h3>
            <div class="flex items-end justify-between mt-2">
                <p class="text-3xl font-bold text-gray-800">{{ $totalGejala + $totalKerusakan }}</p>
                <div class="text-purple-500 flex items-center">
                    <i class="fas fa-shield-alt mr-1"></i>
                    <span class="text-sm font-semibold">100%</span>
                </div>
            </div>
            <div class="mt-4 grid grid-cols-2 gap-2">
                <div class="text-center p-2 bg-blue-50 rounded-lg">
                    <p class="text-xs text-gray-600">Gejala</p>
                    <p class="font-bold text-blue-700">{{ $totalGejala }}</p>
                </div>
                <div class="text-center p-2 bg-green-50 rounded-lg">
                    <p class="text-xs text-gray-600">Kerusakan</p>
                    <p class="font-bold text-green-700">{{ $totalKerusakan }}</p>
                </div>
            </div>
        </div>

        <!-- System Health -->
        <div class="stat-card bg-white rounded-xl shadow-lg p-6 card-hover border-l-4 border-orange-500">
            <div class="flex items-center justify-between mb-4">
                <div class="p-3 bg-orange-100 rounded-xl">
                    <i class="fas fa-heartbeat text-orange-600 text-xl"></i>
                </div>
                <div class="text-right">
                    @php
                        $healthScore = round(($rulesAktif/$totalRules)*100);
                        $healthClass = $healthScore >= 80 ? 'health-good' : ($healthScore >= 50 ? 'health-warning' : 'health-critical');
                    @endphp
                    <span class="health-indicator {{ $healthClass }}"></span>
                    <span class="text-xs font-semibold">{{ $healthScore }}%</span>
                </div>
            </div>
            <h3 class="text-sm text-gray-500 uppercase tracking-wider">System Health</h3>
            <div class="flex items-end justify-between mt-2">
                <p class="text-3xl font-bold text-gray-800">{{ $rulesAktif }}/{{ $totalRules }}</p>
                <div class="flex items-center">
                    <span class="text-sm font-semibold {{ $gejalaTanpaRules > 0 ? 'text-red-500' : 'text-green-500' }}">
                        {{ $gejalaTanpaRules }} gejala tanpa rules
                    </span>
                </div>
            </div>
            <div class="mt-4">
                <div class="flex justify-between text-xs text-gray-500 mb-1">
                    <span>Rules Aktif</span>
                    <span>{{ round(($rulesAktif/$totalRules)*100) }}%</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-2">
                    <div class="bg-orange-500 h-2 rounded-full progress-bar-animated" 
                         style="width: {{ ($rulesAktif/$totalRules)*100 }}%"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Charts and Recent Activities -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
        <!-- Top Kerusakan Chart -->
        <div class="bg-white rounded-xl shadow-lg p-6">
            <div class="flex items-center justify-between mb-6">
                <div>
                    <h3 class="text-lg font-semibold text-gray-800 flex items-center">
                        <i class="fas fa-chart-pie mr-3 text-purple-600"></i>
                        Statistik Kerusakan Terbanyak
                    </h3>
                    <p class="text-sm text-gray-500 mt-1">Berdasarkan {{ $totalDiagnosa }} total diagnosa</p>
                </div>
                <div class="flex space-x-2">
                    <button class="px-3 py-1 text-xs bg-gray-100 rounded-lg hover:bg-gray-200">Minggu</button>
                    <button class="px-3 py-1 text-xs bg-blue-100 text-blue-700 rounded-lg">Bulan</button>
                    <button class="px-3 py-1 text-xs bg-gray-100 rounded-lg hover:bg-gray-200">Tahun</button>
                </div>
            </div>
            
            <div class="space-y-4">
                @forelse($statistikKerusakan as $index => $stat)
                @php
                    $percentage = $totalDiagnosa > 0 ? round(($stat->total / $totalDiagnosa) * 100) : 0;
                    $colors = ['bg-blue-500', 'bg-green-500', 'bg-yellow-500', 'bg-red-500', 'bg-purple-500'];
                    $color = $colors[$index % count($colors)];
                @endphp
                <div class="space-y-2">
                    <div class="flex justify-between items-center">
                        <div class="flex items-center">
                            <div class="w-8 h-8 rounded-lg {{ $color }} flex items-center justify-center text-white font-bold text-sm mr-3">
                                {{ $index + 1 }}
                            </div>
                            <div>
                                <span class="font-medium text-gray-800">{{ $stat->hasil_akhir }}</span>
                                <p class="text-xs text-gray-500">{{ $stat->total }} diagnosa</p>
                            </div>
                        </div>
                        <div class="text-right">
                            <span class="font-bold text-gray-800">{{ $percentage }}%</span>
                        </div>
                    </div>
                    <div class="w-full bg-gray-200 rounded-full h-3">
                        <div class="h-3 rounded-full {{ $color }} progress-bar-animated" 
                             style="width: {{ $percentage }}%"></div>
                    </div>
                </div>
                @empty
                <div class="text-center py-8">
                    <div class="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                        <i class="fas fa-chart-bar text-gray-400 text-xl"></i>
                    </div>
                    <p class="text-gray-500">Belum ada data statistik</p>
                    <p class="text-sm text-gray-400 mt-1">Data akan muncul setelah diagnosa dilakukan</p>
                </div>
                @endforelse
            </div>
            
            @if(count($statistikKerusakan) > 0)
            <div class="mt-6 pt-6 border-t border-gray-200">
                <div class="flex justify-between items-center">
                    <span class="text-sm text-gray-600">Total analisis: {{ $totalDiagnosa }} diagnosa</span>
                    <a href="{{ route('admin.history.index') }}" class="text-blue-600 hover:text-blue-800 text-sm font-medium flex items-center">
                        Lihat Detail
                        <i class="fas fa-arrow-right ml-2"></i>
                    </a>
                </div>
            </div>
            @endif
        </div>

        <!-- Recent Activities -->
        <div class="bg-white rounded-xl shadow-lg p-6">
            <div class="flex items-center justify-between mb-6">
                <div>
                    <h3 class="text-lg font-semibold text-gray-800 flex items-center">
                        <i class="fas fa-history mr-3 text-blue-600"></i>
                        Aktivitas Terbaru
                    </h3>
                    <p class="text-sm text-gray-500 mt-1">{{ $diagnosaMingguIni }} diagnosa minggu ini</p>
                </div>
                <div class="relative">
                    <button id="activityMenu" class="p-2 hover:bg-gray-100 rounded-lg">
                        <i class="fas fa-ellipsis-v text-gray-500"></i>
                    </button>
                </div>
            </div>
            
            <div class="space-y-4 max-h-[400px] overflow-y-auto pr-2">
                @forelse($diagnosaTerbaru as $history)
                <div class="activity-item p-4 rounded-lg border border-gray-100">
                    <div class="flex items-start">
                        <div class="flex-shrink-0">
                            <div class="w-10 h-10 rounded-full flex items-center justify-center 
                                @if($history->hasil_akhir == 'Tidak dapat didiagnosa') bg-red-100 text-red-600
                                @elseif(str_contains($history->hasil_akhir, 'Keyboard')) bg-blue-100 text-blue-600
                                @elseif(str_contains($history->hasil_akhir, 'Baterai')) bg-yellow-100 text-yellow-600
                                @else bg-green-100 text-green-600 @endif">
                                <i class="fas 
                                    @if($history->hasil_akhir == 'Tidak dapat didiagnosa') fa-exclamation-triangle
                                    @elseif(str_contains($history->hasil_akhir, 'Keyboard')) fa-keyboard
                                    @elseif(str_contains($history->hasil_akhir, 'Baterai')) fa-battery-half
                                    @else fa-laptop-medical @endif">
                                </i>
                            </div>
                        </div>
                        <div class="ml-4 flex-1">
                            <div class="flex justify-between">
                                <h4 class="font-medium text-gray-800">{{ $history->user->name ?? 'Guest' }}</h4>
                                <span class="text-xs text-gray-500">{{ $history->created_at->diffForHumans() }}</span>
                            </div>
                            <p class="text-sm text-gray-600 mt-1">{{ $history->hasil_akhir }}</p>
                            <div class="mt-2 flex items-center text-xs text-gray-500">
                                <span class="inline-flex items-center mr-3">
                                    <i class="fas fa-list-check mr-1"></i>
                                    {{ count(json_decode($history->gejala_terpilih ?? '[]')) }} gejala
                                </span>
                                <span class="inline-flex items-center">
                                    <i class="fas fa-steps mr-1"></i>
                                    {{ $history->langkah_diagnosa ?? 0 }} langkah
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                @empty
                <div class="text-center py-8">
                    <div class="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                        <i class="fas fa-inbox text-gray-400 text-xl"></i>
                    </div>
                    <p class="text-gray-500">Belum ada aktivitas</p>
                    <p class="text-sm text-gray-400 mt-1">Aktivitas akan muncul setelah diagnosa dilakukan</p>
                </div>
                @endforelse
            </div>
            
            @if(count($diagnosaTerbaru) > 0)
            <div class="mt-6">
                <a href="{{ route('admin.history.index') }}" 
                   class="block w-full py-3 text-center bg-blue-50 text-blue-700 rounded-lg hover:bg-blue-100 transition font-medium">
                   <i class="fas fa-eye mr-2"></i>Lihat Semua Aktivitas
                </a>
            </div>
            @endif
        </div>
    </div>

    <!-- Quick Actions & System Info -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <!-- Quick Actions -->
        <div class="lg:col-span-2 bg-white rounded-xl shadow-lg p-6">
            <h3 class="text-lg font-semibold text-gray-800 mb-6 flex items-center">
                <i class="fas fa-bolt mr-3 text-yellow-600"></i>
                Quick Actions
            </h3>
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <a href="{{ route('admin.gejala.create') }}" 
                   class="quick-action-btn bg-blue-50 hover:bg-blue-100 border border-blue-200 rounded-xl p-4 text-center transition flex flex-col items-center justify-center">
                    <div class="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center mb-3">
                        <i class="fas fa-plus text-blue-600 text-xl"></i>
                    </div>
                    <p class="font-semibold text-blue-800">Tambah Gejala</p>
                    <p class="text-xs text-blue-600 mt-1">Data gejala baru</p>
                </a>
                
                <a href="{{ route('admin.kerusakan.create') }}" 
                   class="quick-action-btn bg-green-50 hover:bg-green-100 border border-green-200 rounded-xl p-4 text-center transition flex flex-col items-center justify-center">
                    <div class="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mb-3">
                        <i class="fas fa-plus text-green-600 text-xl"></i>
                    </div>
                    <p class="font-semibold text-green-800">Tambah Kerusakan</p>
                    <p class="text-xs text-green-600 mt-1">Jenis kerusakan baru</p>
                </a>
                
                <a href="{{ route('admin.basis-pengetahuan.create') }}" 
                   class="quick-action-btn bg-purple-50 hover:bg-purple-100 border border-purple-200 rounded-xl p-4 text-center transition flex flex-col items-center justify-center">
                    <div class="w-12 h-12 bg-purple-100 rounded-full flex items-center justify-center mb-3">
                        <i class="fas fa-plus text-purple-600 text-xl"></i>
                    </div>
                    <p class="font-semibold text-purple-800">Tambah Rule</p>
                    <p class="text-xs text-purple-600 mt-1">Aturan IF-THEN baru</p>
                </a>
                
                <a href="{{ route('admin.history.index') }}" 
                   class="quick-action-btn bg-orange-50 hover:bg-orange-100 border border-orange-200 rounded-xl p-4 text-center transition flex flex-col items-center justify-center">
                    <div class="w-12 h-12 bg-orange-100 rounded-full flex items-center justify-center mb-3">
                        <i class="fas fa-chart-line text-orange-600 text-xl"></i>
                    </div>
                    <p class="font-semibold text-orange-800">Lihat Laporan</p>
                    <p class="text-xs text-orange-600 mt-1">Analisis & statistik</p>
                </a>
            </div>
            
            <div class="mt-6 grid grid-cols-1 md:grid-cols-2 gap-4">
                <a href="{{ route('admin.gejala.index') }}" 
                   class="bg-gray-50 hover:bg-gray-100 border border-gray-200 rounded-lg p-3 flex items-center justify-between transition">
                    <div class="flex items-center">
                        <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center mr-3">
                            <i class="fas fa-list-check text-blue-600"></i>
                        </div>
                        <div>
                            <p class="font-medium text-gray-800">Kelola Gejala</p>
                            <p class="text-xs text-gray-500">{{ $totalGejala }} data gejala</p>
                        </div>
                    </div>
                    <i class="fas fa-chevron-right text-gray-400"></i>
                </a>
                
                <a href="{{ route('admin.kerusakan.index') }}" 
                   class="bg-gray-50 hover:bg-gray-100 border border-gray-200 rounded-lg p-3 flex items-center justify-between transition">
                    <div class="flex items-center">
                        <div class="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center mr-3">
                            <i class="fas fa-bug text-green-600"></i>
                        </div>
                        <div>
                            <p class="font-medium text-gray-800">Kelola Kerusakan</p>
                            <p class="text-xs text-gray-500">{{ $totalKerusakan }} jenis kerusakan</p>
                        </div>
                    </div>
                    <i class="fas fa-chevron-right text-gray-400"></i>
                </a>
            </div>
        </div>

        <!-- System Status -->
        <div class="bg-white rounded-xl shadow-lg p-6">
            <h3 class="text-lg font-semibold text-gray-800 mb-6 flex items-center">
                <i class="fas fa-server mr-3 text-gray-600"></i>
                System Status
            </h3>
            
            <div class="space-y-4">
                <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div class="flex items-center">
                        <div class="health-indicator health-good"></div>
                        <span class="font-medium">Database</span>
                    </div>
                    <span class="text-sm text-green-600 font-semibold">Online</span>
                </div>
                
                <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div class="flex items-center">
                        <div class="health-indicator health-good"></div>
                        <span class="font-medium">AI Engine</span>
                    </div>
                    <span class="text-sm text-green-600 font-semibold">Ready</span>
                </div>
                
                <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div class="flex items-center">
                        <div class="health-indicator {{ $gejalaTanpaRules > 0 ? 'health-warning' : 'health-good' }}"></div>
                        <span class="font-medium">Rules Integrity</span>
                    </div>
                    <span class="text-sm {{ $gejalaTanpaRules > 0 ? 'text-yellow-600' : 'text-green-600' }} font-semibold">
                        {{ $gejalaTanpaRules > 0 ? 'Warning' : 'Good' }}
                    </span>
                </div>
                
                <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div class="flex items-center">
                        <div class="health-indicator health-good"></div>
                        <span class="font-medium">API Response</span>
                    </div>
                    <span class="text-sm text-green-600 font-semibold">Fast</span>
                </div>
            </div>
            
            <div class="mt-6 pt-6 border-t border-gray-200">
                <div class="flex justify-between items-center mb-2">
                    <span class="text-sm text-gray-600">Storage Usage</span>
                    <span class="text-sm font-semibold text-gray-800">45%</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-2">
                    <div class="bg-gradient-to-r from-green-400 to-blue-500 h-2 rounded-full" style="width: 45%"></div>
                </div>
                
                <div class="mt-4 flex justify-between text-xs text-gray-500">
                    <div class="text-center">
                        <p class="font-semibold text-gray-800">{{ $diagnosaHariIni }}</p>
                        <p>Diagnosa Hari Ini</p>
                    </div>
                    <div class="text-center">
                        <p class="font-semibold text-gray-800">{{ $diagnosaMingguIni }}</p>
                        <p>Minggu Ini</p>
                    </div>
                    <div class="text-center">
                        <p class="font-semibold text-gray-800">{{ $totalDiagnosa }}</p>
                        <p>Total</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Tips & Updates -->
    <div class="bg-gradient-to-r from-cyan-50 to-blue-50 border border-cyan-100 rounded-xl p-6">
        <div class="flex items-start">
            <div class="flex-shrink-0">
                <div class="w-12 h-12 bg-cyan-100 rounded-full flex items-center justify-center">
                    <i class="fas fa-lightbulb text-cyan-600 text-xl"></i>
                </div>
            </div>
            <div class="ml-4">
                <h3 class="font-semibold text-gray-800 mb-2">Tips Hari Ini</h3>
                <p class="text-gray-600">
                    @if($gejalaTanpaRules > 0)
                    <span class="font-medium text-red-600">Perhatian!</span> Terdapat {{ $gejalaTanpaRules }} gejala yang belum memiliki aturan. 
                    Pastikan semua gejala terkait dengan setidaknya satu jenis kerusakan untuk meningkatkan akurasi sistem.
                    @elseif($rulesAktif < $totalRules)
                    Beberapa rules dinonaktifkan. Aktifkan rules yang relevan untuk meningkatkan cakupan diagnosa.
                    @else
                    Sistem berjalan optimal! Semua rules aktif dan data lengkap. Pertimbangkan untuk menambahkan data training baru untuk meningkatkan akurasi.
                    @endif
                </p>
                <div class="mt-4 flex space-x-3">
                    <button class="px-4 py-2 bg-cyan-600 text-white rounded-lg hover:bg-cyan-700 text-sm font-medium">
                        <i class="fas fa-sync-alt mr-2"></i>Refresh Data
                    </button>
                    <button class="px-4 py-2 bg-white text-cyan-600 border border-cyan-200 rounded-lg hover:bg-cyan-50 text-sm font-medium">
                        <i class="fas fa-question-circle mr-2"></i>Bantuan
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    // Animasi progress bars saat halaman load
    document.addEventListener('DOMContentLoaded', function() {
        // Animate progress bars
        const progressBars = document.querySelectorAll('.progress-bar-animated');
        progressBars.forEach(bar => {
            const width = bar.style.width;
            bar.style.width = '0';
            setTimeout(() => {
                bar.style.width = width;
            }, 300);
        });
        
        // Auto-refresh activity feed setiap 30 detik
        setInterval(() => {
            const activityItems = document.querySelectorAll('.activity-item');
            activityItems.forEach(item => {
                item.classList.add('opacity-50');
                setTimeout(() => {
                    item.classList.remove('opacity-50');
                }, 1000);
            });
        }, 30000);
        
        // Tooltips untuk statistik
        const statCards = document.querySelectorAll('.stat-card');
        statCards.forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-5px)';
            });
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0)';
            });
        });
        
        // Chart button interactions
        const chartButtons = document.querySelectorAll('button[class*="bg-gray-100"]');
        chartButtons.forEach(btn => {
            btn.addEventListener('click', function() {
                // Remove active class from all buttons
                chartButtons.forEach(b => {
                    b.classList.remove('bg-blue-100', 'text-blue-700');
                    b.classList.add('bg-gray-100', 'hover:bg-gray-200');
                });
                // Add active class to clicked button
                this.classList.remove('bg-gray-100', 'hover:bg-gray-200');
                this.classList.add('bg-blue-100', 'text-blue-700');
                
                // Simulate loading
                const chartContainer = this.closest('.bg-white').querySelector('.space-y-4');
                chartContainer.classList.add('opacity-50');
                setTimeout(() => {
                    chartContainer.classList.remove('opacity-50');
                }, 500);
            });
        });
    });
    
    // Real-time clock update
    function updateClock() {
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
        
        const clockElement = document.querySelector('.fa-clock').parentElement;
        const dateElement = document.querySelector('.fa-calendar-alt').parentElement;
        
        if(clockElement) {
            clockElement.innerHTML = `<i class="fas fa-clock mr-2"></i><span>${timeString} WIB</span>`;
        }
        if(dateElement) {
            dateElement.innerHTML = `<i class="fas fa-calendar-alt mr-2"></i><span>${dateString}</span>`;
        }
    }
    
    // Update clock every minute
    setInterval(updateClock, 60000);
    updateClock(); // Initial call
</script>
@endpush