# oznextsosyal 🦌

**Türkçe Mastodon Web İstemcisi**

Bu proje, [Elk](https://github.com/elk-zone/elk) projesinin Türk kullanıcılar için özelleştirilmiş bir fork'udur. Mastoturk.org sunucusu için optimize edilmiştir ve varsayılan dil olarak Türkçe kullanır.

## ✨ Özellikler

- 🎯 **Mastoturk.org Entegrasyonu**: Varsayılan sunucu olarak mastoturk.org kullanır
- 🇹🇷 **Türkçe Dil Desteği**: Tam Türkçe arayüz ve çeviriler
- 🎨 **Özelleştirilmiş Marka**: oznextsosyal markası ile
- 📱 **PWA Desteği**: Progressive Web App olarak kullanılabilir
- 🌙 **Karanlık/Aydınlık Tema**: Otomatik tema değiştirme
- ⚡ **Hızlı ve Responsive**: Modern web teknolojileri ile geliştirilmiş

## 🚀 Kurulum

### Gereksinimler

- Node.js 23.9.0 veya üzeri
- npm veya pnpm

### Hızlı Kurulum

1. **Node.js sürümünü kontrol edin:**
   ```bash
   nvm use
   ```

2. **Otomatik kurulum scriptini çalıştırın:**
   ```bash
   ./setup.sh
   ```

### Manuel Kurulum

1. **Bağımlılıkları yükleyin:**
   ```bash
   # pnpm ile (önerilen)
   pnpm install
   
   # veya npm ile
   npm install --legacy-peer-deps
   ```

2. **Geliştirme sunucusunu başlatın:**
   ```bash
   # pnpm ile
   pnpm dev
   
   # veya npm ile
   npm run dev
   ```

3. **Tarayıcınızda açın:**
   ```
   http://localhost:5314
   ```

## 🛠️ Geliştirme

### Proje Yapısı

```
elk/
├── app/                    # Vue.js uygulama dosyaları
│   ├── components/         # Vue bileşenleri
│   ├── pages/             # Sayfa bileşenleri
│   ├── composables/       # Vue composables
│   └── constants/         # Sabitler ve konfigürasyon
├── locales/               # Dil dosyaları
│   └── tr-TR.json         # Türkçe çeviriler
├── config/                # Nuxt.js konfigürasyonu
├── public/                # Statik dosyalar
└── nuxt.config.ts         # Ana Nuxt konfigürasyonu
```

### Önemli Dosyalar

- **`nuxt.config.ts`**: Ana konfigürasyon (varsayılan sunucu, dil)
- **`app/constants/index.ts`**: Uygulama sabitleri (app name)
- **`locales/tr-TR.json`**: Türkçe çeviriler
- **`package.json`**: Proje bağımlılıkları ve scriptler

### Yaygın Komutlar

```bash
# Geliştirme sunucusu
pnpm dev

# Production build
pnpm build

# Linting
pnpm lint

# Testler
pnpm test

# Type checking
pnpm typecheck
```

## 🌐 Konfigürasyon

### Varsayılan Ayarlar

- **Sunucu**: `mastoturk.org`
- **Dil**: `tr-TR` (Türkçe)
- **Uygulama Adı**: `oznextsosyal`

### Özelleştirme

Konfigürasyonu değiştirmek için `nuxt.config.ts` dosyasını düzenleyin:

```typescript
runtimeConfig: {
  public: {
    defaultServer: 'mastoturk.org',  // Varsayılan sunucu
    // ...
  },
},
i18n: {
  defaultLocale: 'tr-TR',  // Varsayılan dil
  // ...
}
```

## 📱 PWA Özellikleri

oznextsosyal, Progressive Web App olarak çalışır:

- 📲 **Ana ekrana ekleme** desteği
- 🔔 **Push bildirimleri**
- 📱 **Mobil uyumlu tasarım**
- 🔄 **Offline çalışma** (sınırlı)

## 🎨 Tema ve Görünüm

### Tema Renkleri

```typescript
THEME_COLORS = {
  defaultTheme: '#cc7d24',
  themeDark: '#111111',
  themeLight: '#fafafa',
  backgroundDark: '#fafafa',
  backgroundLight: '#111111',
}
```

### Özelleştirme

Tema renklerini değiştirmek için `app/constants/index.ts` dosyasını düzenleyin.

## 🔧 Deployment

### Docker ile Deployment

```bash
# Docker image oluştur
docker build -t oznextsosyal .

# Container çalıştır
docker run -p 3000:3000 oznextsosyal
```

### Docker Compose ile

```bash
# Storage dizini oluştur
mkdir oznextsosyal-storage
sudo chown 911:911 ./oznextsosyal-storage

# Container'ı başlat
docker-compose up --build -d
```

### Manuel Deployment

```bash
# Production build
pnpm build

# Sunucuda çalıştır
pnpm start
```

## 🤝 Katkıda Bulunma

1. Bu repository'yi fork edin
2. Feature branch oluşturun (`git checkout -b feature/yeni-ozellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeni-ozellik`)
5. Pull Request oluşturun

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakın.

## 🙏 Teşekkürler

Bu proje [Elk](https://github.com/elk-zone/elk) projesinin üzerine inşa edilmiştir. Elk ekibine ve tüm katkıda bulunanlara teşekkürler.

## 📞 İletişim

- 🌐 Website: [oznextsosyal.com](https://oznextsosyal.com)
- 🐘 Mastodon: [@oznextsosyal@mastoturk.org](https://mastoturk.org/@oznextsosyal)
- 📧 Email: [info@oznextsosyal.com](mailto:info@oznextsosyal.com)

---

**oznextsosyal** - Türkçe Mastodon deneyimi için geliştirilmiştir 🇹🇷 
