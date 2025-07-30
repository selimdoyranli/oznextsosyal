# oznextsosyal - Elk Özelleştirme Değişiklikleri

Bu dosya, Elk projesinin oznextsosyal için yapılan özelleştirmelerini listeler.

## 🎯 Ana Değişiklikler

### 1. Varsayılan Sunucu Değişikliği
- **Dosya**: `nuxt.config.ts`
- **Değişiklik**: `defaultServer: 'm.webtoo.ls'` → `defaultServer: 'mastoturk.org'`
- **Açıklama**: Uygulama artık varsayılan olarak mastoturk.org sunucusunu kullanır

### 2. Varsayılan Dil Değişikliği
- **Dosya**: `nuxt.config.ts`
- **Değişiklik**: `defaultLocale: 'en-US'` → `defaultLocale: 'tr-TR'`
- **Açıklama**: Uygulama artık varsayılan olarak Türkçe dilini kullanır

### 3. Uygulama Adı Değişikliği
- **Dosya**: `app/constants/index.ts`
- **Değişiklik**: `APP_NAME = 'Elk'` → `APP_NAME = 'oznextsosyal'`
- **Açıklama**: Uygulama adı oznextsosyal olarak değiştirildi

### 4. Meta Etiketleri Güncelleme
- **Dosya**: `nuxt.config.ts`
- **Değişiklikler**:
  - `og:title`: 'Elk' → 'oznextsosyal'
  - `og:description`: 'A nimble Mastodon web client' → 'Türkçe Mastodon web istemcisi'
  - `og:site_name`: 'Elk' → 'oznextsosyal'
  - `twitter:site`: '@elk_zone' → '@oznextsosyal'

### 5. Package.json Güncellemeleri
- **Dosya**: `package.json`
- **Değişiklikler**:
  - `name`: '@elk-zone/elk' → '@oznextsosyal/elk'
  - `homepage`: 'https://elk.zone/' → 'https://oznextsosyal.com/'

### 6. README Güncellemeleri
- **Dosya**: `README.md`
- **Değişiklikler**:
  - Logo ve başlık: 'Elk' → 'oznextsosyal'
  - Açıklama: 'A nimble Mastodon web client' → 'Türkçe Mastodon web istemcisi'
  - Alpha uyarısı Türkçe'ye çevrildi

### 7. Logo Bileşeni Güncellemesi
- **Dosya**: `docs/components/global/Logo.vue`
- **Değişiklik**: Alt text ve görünen metin 'Elk' → 'oznextsosyal'

### 8. NavFooter Bağlantıları
- **Dosya**: `app/components/nav/NavFooter.vue`
- **Değişiklikler**:
  - GitHub sponsor linki: 'elk-zone' → 'oznextsosyal'
  - Release linki: 'elk-zone/elk' → 'oznextsosyal/elk'
  - Commit linki: 'elk-zone/elk' → 'oznextsosyal/elk'
  - Mastodon linki: '/m.webtoo.ls/@elk' → '/mastoturk.org/@oznextsosyal'
  - Discord linki kaldırıldı

## 📁 Yeni Dosyalar

### 1. setup.sh
- **Açıklama**: Otomatik kurulum scripti
- **Özellikler**:
  - Node.js sürüm kontrolü
  - Bağımlılık kurulumu
  - Kurulum özeti

### 2. README-OZNEXTSOSYAL.md
- **Açıklama**: Türkçe README dosyası
- **İçerik**:
  - Kurulum talimatları
  - Geliştirme rehberi
  - Deployment bilgileri
  - Konfigürasyon detayları

### 3. docker-compose.oznextsosyal.yml
- **Açıklama**: Docker Compose konfigürasyonu
- **Özellikler**:
  - oznextsosyal servisi
  - Nginx reverse proxy
  - SSL desteği
  - Volume yönetimi

### 4. nginx.conf
- **Açıklama**: Nginx konfigürasyonu
- **Özellikler**:
  - SSL termination
  - HTTP to HTTPS redirect
  - Static asset caching
  - Security headers

### 5. deploy.sh
- **Açıklama**: Deployment scripti
- **Özellikler**:
  - Docker kontrolü
  - SSL sertifika kontrolü
  - Otomatik deployment
  - Durum raporlama

## 🔧 Teknik Detaylar

### Dil Desteği
- Türkçe dil dosyası (`tr-TR.json`) zaten mevcut
- Varsayılan dil tr-TR olarak ayarlandı
- Tüm arayüz metinleri Türkçe'ye çevrildi

### Sunucu Entegrasyonu
- Mastoturk.org varsayılan sunucu olarak ayarlandı
- Kullanıcılar artık doğrudan mastoturk.org'a bağlanabilir
- Kayıt işlemleri mastoturk.org üzerinden yapılacak

### Marka Kimliği
- Tüm "Elk" referansları "oznextsosyal" ile değiştirildi
- Logo ve görsel kimlik korundu
- URL'ler ve bağlantılar güncellendi

## 🚀 Deployment

### Geliştirme Ortamı
```bash
# Node.js sürümünü ayarla
nvm use

# Kurulum scriptini çalıştır
./setup.sh

# Geliştirme sunucusunu başlat
pnpm dev
```

### Production Deployment
```bash
# Deployment scriptini çalıştır
./deploy.sh
```

## 📝 Notlar

- Bu değişiklikler Elk projesinin temel işlevselliğini korur
- Tüm Mastodon özellikleri çalışmaya devam eder
- PWA özellikleri korunmuştur
- Tema ve görünüm ayarları değişmemiştir

## 🔄 Güncellemeler

Elk projesinden güncellemeler almak için:
1. Ana Elk repository'den değişiklikleri çek
2. Bu özelleştirmeleri yeniden uygula
3. Test et ve deploy et

---

**Son Güncelleme**: 30 Temmuz 2025
**Versiyon**: 0.16.0 (Elk tabanlı) 
