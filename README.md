# 📘 Modul 8
## 🚀 Game Navigation dengan Named Routes

Pada modul ini, kita akan belajar menggunakan **Navigator dengan Named Routes** di Flutter.  
Berbeda dengan `Navigator.push()` biasa, Named Routes membuat kode lebih rapi, mudah di-maintain, dan mendukung navigasi antar halaman dengan nama rute.

## 📌 Tentang Proyek
- **Nama Proyek:** game_navigation  
- **Deskripsi:** Aplikasi menampilkan daftar game gratis dari **FreeToGame API**.  
  Saat user menekan tombol **Info**, aplikasi akan berpindah ke halaman **Detail Game** menggunakan **Named Routes**.  

### 🎯 Tujuan:
1. Memahami penggunaan **routes** dan **Navigator.pushNamed()**.  
2. Membuat konfigurasi Named Routes pada `MaterialApp`.  
3. Mengirim data antar halaman dengan `arguments`.  

## 🔲 Konsep Utama

### 1. Konfigurasi Routes
Tambahkan properti `routes` atau `onGenerateRoute` pada `MaterialApp`.  

```dart
void main() {
  runApp(MaterialApp(
    title: 'Game Navigation',
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/detail': (context) => DetailPage(),
    },
  ));
}
```

### 2. Navigator.pushNamed()
Gunakan `Navigator.pushNamed()` untuk berpindah halaman.

```dart
Navigator.pushNamed(
  context,
  '/detail',
  arguments: dataGame[index],
);
```

### 3. Menerima Data dengan ModalRoute
Pada halaman tujuan (DetailPage), ambil data dengan `ModalRoute.of()`.

```dart
class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> game =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(game['title'])),
      body: Column(
        children: [
          Image.network(game['thumbnail']),
          Text("Genre: ${game['genre']}"),
          Text("Release Date: ${game['release_date']}"),
        ],
      ),
    );
  }
```
