# 🚀 oznextsosyal Hızlı Başlangıç

Bu rehber, oznextsosyal'i hızlıca kurmanız ve çalıştırmanız için hazırlanmıştır.

## ⚡ 5 Dakikada Kurulum

### 1. Gereksinimler
```bash
# Node.js 22.17.1 gerekli
node --version  # v22.17.1 olmalı

# nvm kullanıyorsanız
nvm use
```

### 2. Hızlı Kurulum
```bash
# Otomatik kurulum
./setup.sh

# Veya manuel kurulum
pnpm install
```

### 3. Geliştirme Sunucusu
```bash
pnpm dev
```

### 4. Tarayıcıda Aç
```
http://localhost:5314
```

## 🎯 Özellikler

✅ **Mastoturk.org** varsayılan sunucu
✅ **Türkçe** varsayılan dil
✅ **oznextsosyal** markası
✅ **PWA** desteği
✅ **Responsive** tasarım

## 🔧 Yaygın Sorunlar

### Node.js Sürüm Hatası
```bash
# Çözüm
nvm install 22.17.1
nvm use 22.17.1
```

### Bağımlılık Hatası
```bash
# Çözüm
rm -rf node_modules package-lock.json
pnpm install
```

### Port Kullanımda
```bash
# Farklı port kullan
pnpm dev --port 3000
```

## 📱 Production Deployment

### Docker ile
```bash
./deploy.sh
```

### Manuel
```bash
pnpm build
pnpm start
```

## 🆘 Yardım

- 📖 Detaylı dokümantasyon: `README-OZNEXTSOSYAL.md`
- 🔧 Değişiklik listesi: `CHANGES.md`
- 🐛 Sorun bildirimi: GitHub Issues

---

**oznextsosyal** - Türkçe Mastodon deneyimi 🇹🇷
