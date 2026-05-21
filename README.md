# slovin_tugas2
# Survei Kepuasan Mahasiswa Statistika terhadap Fasilitas WiFi dan Internet di FMIPA Universitas Mataram

## Deskripsi Project

Project ini merupakan pengolahan data hasil survei kepuasan mahasiswa Program Studi Statistika terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram menggunakan bahasa pemrograman R.

Penelitian ini bertujuan untuk mengetahui tingkat kepuasan mahasiswa terhadap kualitas jaringan internet kampus berdasarkan beberapa indikator pelayanan WiFi, kemudian dianalisis menggunakan metode statistik deskriptif, uji instrumen, naive estimation, weighted estimation, distribusi frekuensi, serta perhitungan ukuran sampel menggunakan rumus Slovin.

Analisis dilakukan menggunakan software RStudio dengan beberapa package pendukung visualisasi dan pengolahan data statistik.

---

# Latar Belakang

Internet dan WiFi kampus merupakan fasilitas penting dalam menunjang proses pembelajaran mahasiswa, terutama dalam:
- mengakses e-learning,
- mencari referensi akademik,
- mengerjakan tugas,
- melakukan praktikum,
- dan aktivitas perkuliahan lainnya.

Kualitas internet yang baik dapat meningkatkan efektivitas pembelajaran mahasiswa. Sebaliknya, jaringan internet yang lambat atau tidak stabil dapat menghambat aktivitas akademik.

Berdasarkan kondisi tersebut, dilakukan survei kepuasan mahasiswa Statistika terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.

---

# Tujuan Analisis

Penelitian ini bertujuan untuk:
1. Mengetahui tingkat kepuasan mahasiswa terhadap fasilitas WiFi FMIPA.
2. Mengetahui indikator yang memiliki penilaian tertinggi dan terendah.
3. Menguji validitas dan reliabilitas instrumen kuesioner.
4. Membandingkan hasil naive estimation dan weighted estimation.
5. Mengetahui distribusi tingkat kepuasan mahasiswa.
6. Menghitung ukuran sampel menggunakan rumus Slovin.

---

# Dataset

Dataset berasal dari hasil penyebaran kuesioner kepada mahasiswa Program Studi Statistika FMIPA Universitas Mataram.

Karakteristik data:
- Jenis data: Data primer
- Skala pengukuran: Skala Likert 1–5
- Jumlah populasi: 52 mahasiswa
- Jumlah sampel: 20 mahasiswa

Keterangan skala Likert:
| Skor | Keterangan |
|---|---|
| 1 | Sangat Tidak Setuju |
| 2 | Tidak Setuju |
| 3 | Netral |
| 4 | Setuju |
| 5 | Sangat Setuju |

---

# Indikator Penelitian

Penelitian menggunakan 9 indikator penilaian, yaitu:

| No | Indikator |
|---|---|
| 1 | Akses WiFi mudah digunakan |
| 2 | Kecepatan internet baik |
| 3 | Koneksi internet stabil |
| 4 | Internet membantu kegiatan kuliah |
| 5 | Internet dapat digunakan saat jam kuliah |
| 6 | Gangguan internet jarang terjadi |
| 7 | Kualitas internet baik |
| 8 | Internet dapat digunakan di luar jam kuliah |
| 9 | Internet sesuai kebutuhan mahasiswa |

---

# Uji Validitas dan Reliabilitas

## Uji Validitas

Uji validitas dilakukan untuk mengetahui apakah setiap item pertanyaan pada kuesioner mampu mengukur variabel kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram. Pengujian dilakukan menggunakan nilai `r.drop` dari hasil analisis `Cronbach Alpha` pada software R.

Kriteria pengambilan keputusan:

- Jika nilai `r.drop > 0,30` maka item dinyatakan **valid**
- Jika nilai `r.drop ≤ 0,30` maka item dinyatakan **tidak valid**

## Tabel Hasil Uji Validitas

| No | Item Pernyataan | r.drop | Keputusan |
|---|---|---|---|
| 1 | Jaringan Wifi di FMIPA mudah diakses oleh mahasiswa | 0.7670 | Valid |
| 2 | Kecepatan internet Wifi FMIPA cukup mendukung kegiatan | 0.8544 | Valid |
| 3 | Koneksi Wifi di ruang kelas berjalan dengan stabil | 0.8030 | Valid |
| 4 | Wifi FMIPA membantu mahasiswa dalam mencari materi kuliah | 0.8843 | Valid |
| 5 | Akses internet di lingkungan FMIPA dapat digunakan pada jam perkuliahan dengan baik | 0.8551 | Valid |
| 6 | Gangguan jaringan internet di FMIPA jarang terjadi | 0.3669 | Valid |
| 7 | Kualitas internet di FMIPA sangat baik | 0.8354 | Valid |
| 8 | Akses internet di lingkungan FMIPA dapat digunakan di luar jam perkuliahan dengan baik | 0.7062 | Valid |
| 9 | Fasilitas Wifi dan internet di FMIPA sudah sesuai dengan kebutuhan mahasiswa | 0.8341 | Valid |

## Interpretasi Uji Validitas

Hasil pengujian menunjukkan bahwa seluruh item pertanyaan memiliki nilai `r.drop` lebih besar dari 0,30. Nilai tertinggi terdapat pada item *“Wifi FMIPA membantu mahasiswa dalam mencari materi kuliah”* sebesar 0,8843. Nilai terendah terdapat pada item *“Gangguan jaringan internet di FMIPA jarang terjadi”* sebesar 0,3669.

Seluruh item dinyatakan valid sehingga seluruh pertanyaan layak digunakan dalam penelitian mengenai survei kepuasan mahasiswa Statistika terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.

---

# Uji Reliabilitas

Uji reliabilitas dilakukan untuk mengetahui tingkat konsistensi instrumen penelitian. Pengujian menggunakan metode `Cronbach Alpha` pada software R.

Kriteria pengambilan keputusan:

- Jika nilai `Cronbach Alpha > 0,60` maka instrumen dinyatakan **reliabel**
- Jika nilai `Cronbach Alpha ≤ 0,60` maka instrumen dinyatakan **tidak reliabel**

## Tabel Hasil Uji Reliabilitas

| Metode | Nilai |
|---|---|
| Cronbach Alpha | 0.9376 |

## Interpretasi Uji Reliabilitas

Hasil pengujian reliabilitas menunjukkan nilai `Cronbach Alpha` sebesar **0,9376**. Nilai tersebut lebih besar dari 0,60 sehingga instrumen penelitian dinyatakan reliabel.

Nilai reliabilitas yang sangat tinggi menunjukkan bahwa seluruh item pertanyaan memiliki tingkat konsistensi yang baik dalam mengukur kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram. Instrumen penelitian dapat digunakan untuk proses analisis lebih lanjut karena mampu memberikan hasil pengukuran yang stabil dan konsisten.

---

# Naive Estimation

Naive estimation digunakan untuk menghitung rata-rata setiap indikator secara langsung tanpa memberikan bobot tertentu pada masing-masing indikator. Metode ini menggambarkan tingkat kepuasan mahasiswa berdasarkan nilai rata-rata jawaban responden.

## Tabel Hasil Naive Estimation

| No | Indikator | Mean Naive |
|---|---|---|
| 1 | Akses Mudah | 3.60 |
| 2 | Internet Cepat | 3.25 |
| 3 | Koneksi Stabil | 3.15 |
| 4 | Membantu Kuliah | 3.75 |
| 5 | Internet Jam Kuliah | 3.50 |
| 6 | Gangguan Jarang | 2.65 |
| 7 | Kualitas Baik | 3.15 |
| 8 | Internet Luar Jam | 3.50 |
| 9 | Sesuai Kebutuhan | 3.55 |

## Rata-rata Keseluruhan Naive Estimation

| Keterangan | Nilai |
|---|---|
| Mean Naive Total | 3.344 |

## Interpretasi Naive Estimation

Hasil naive estimation menunjukkan bahwa indikator dengan nilai rata-rata tertinggi terdapat pada indikator **“WiFi FMIPA membantu mahasiswa dalam mencari materi kuliah”** dengan nilai mean sebesar 3,75. Hasil tersebut menunjukkan bahwa mahasiswa merasa fasilitas WiFi cukup membantu dalam menunjang kegiatan akademik dan pencarian materi perkuliahan.

Nilai rata-rata terendah terdapat pada indikator **“Gangguan jaringan internet di FMIPA jarang terjadi”** dengan nilai sebesar 2,65. Nilai tersebut menunjukkan bahwa mahasiswa masih cukup sering mengalami gangguan jaringan ketika menggunakan fasilitas internet di FMIPA.

Rata-rata keseluruhan naive estimation sebesar 3,344 menunjukkan bahwa secara umum mahasiswa merasa cukup puas terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.

---

# Weight Estimation

Weight estimation digunakan untuk menghitung estimasi rata-rata dengan memberikan bobot pada setiap indikator berdasarkan kontribusi total skor masing-masing indikator.

## Tabel Bobot Indikator

| No | Indikator | Bobot |
|---|---|---|
| 1 | Akses Mudah | 0.1196 |
| 2 | Internet Cepat | 0.1080 |
| 3 | Koneksi Stabil | 0.1047 |
| 4 | Membantu Kuliah | 0.1246 |
| 5 | Internet Jam Kuliah | 0.1163 |
| 6 | Gangguan Jarang | 0.0880 |
| 7 | Kualitas Baik | 0.1047 |
| 8 | Internet Luar Jam | 0.1163 |
| 9 | Sesuai Kebutuhan | 0.1179 |

## Tabel Hasil Weight Estimation

| No | Indikator | Mean Weighted |
|---|---|---|
| 1 | Akses Mudah | 0.4306 |
| 2 | Internet Cepat | 0.3509 |
| 3 | Koneksi Stabil | 0.3297 |
| 4 | Membantu Kuliah | 0.4672 |
| 5 | Internet Jam Kuliah | 0.4070 |
| 6 | Gangguan Jarang | 0.2333 |
| 7 | Kualitas Baik | 0.3297 |
| 8 | Internet Luar Jam | 0.4070 |
| 9 | Sesuai Kebutuhan | 0.4187 |

## Rata-rata Keseluruhan Weight Estimation

| Keterangan | Nilai |
|---|---|
| Mean Weighted Total | 3.374 |

## Interpretasi Weight Estimation

Hasil weight estimation menunjukkan bahwa indikator **“WiFi FMIPA membantu mahasiswa dalam mencari materi kuliah”** memiliki nilai weighted estimation tertinggi sebesar 0,4672. Hasil tersebut menunjukkan bahwa indikator tersebut memberikan kontribusi paling besar terhadap tingkat kepuasan mahasiswa.

Indikator dengan weighted estimation terendah terdapat pada pernyataan **“Gangguan jaringan internet di FMIPA jarang terjadi”** sebesar 0,2333. Hasil tersebut menunjukkan bahwa gangguan jaringan masih menjadi salah satu masalah utama yang dirasakan mahasiswa.

Nilai rata-rata keseluruhan weighted estimation sebesar 3,374 menunjukkan bahwa tingkat kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram berada pada kategori cukup baik.

---

# Perhitungan Slovin

Penelitian ini menggunakan rumus Slovin untuk menentukan jumlah sampel minimum dari populasi mahasiswa Statistika FMIPA Universitas Mataram.

Rumus Slovin yang digunakan adalah:

\[
n = \frac{N}{1 + N(e)^2}
\]

Keterangan:

- \( n \) = jumlah sampel
- \( N \) = jumlah populasi
- \( e \) = tingkat error

---

# Hasil Perhitungan Slovin

Diketahui:

- Jumlah populasi (\(N\)) = 52 mahasiswa
- Tingkat error (\(e\)) = 18% = 0,18

Perhitungan:

\[
n = \frac{52}{1 + 52(0.18)^2}
\]

\[
n = \frac{52}{1 + 52(0.0324)}
\]

\[
n = \frac{52}{2.6848}
\]

\[
n = 19.37
\]

Hasil perhitungan dibulatkan menjadi:

\[
n = 19
\]

---

# Tabel Hasil Slovin

| Keterangan | Nilai |
|---|---|
| Populasi | 52 |
| Tingkat Error | 18% |
| Sampel Slovin | 19.37 |
| Sampel Minimum | 19 |
| Sampel Penelitian | 20 |

---

# Interpretasi Slovin

Berdasarkan hasil perhitungan menggunakan rumus Slovin dengan tingkat error sebesar 18%, diperoleh jumlah sampel minimum sebanyak 19 responden.

Penelitian ini menggunakan 20 responden sehingga jumlah sampel penelitian telah memenuhi syarat minimum berdasarkan rumus Slovin. Jumlah responden yang digunakan sudah cukup untuk mewakili populasi mahasiswa dalam penelitian survei kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.




# Perbandingan Penggunaan Rumus Slovin pada Sampel 31 dan Sampel 20

Penelitian survei kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram menggunakan rumus Slovin untuk menentukan jumlah sampel minimum yang diperlukan dari populasi sebanyak 52 mahasiswa.

Rumus Slovin yang digunakan adalah:

\[
n = \frac{N}{1 + N(e)^2}
\]

Keterangan:

- \( n \) = jumlah sampel
- \( N \) = jumlah populasi
- \( e \) = tingkat error

---

# Perbandingan Hasil Slovin

| Keterangan | Penelitian Awal | Penelitian Terbaru |
|---|---|---|
| Populasi | 52 | 52 |
| Tingkat Error | 12% | 18% |
| Sampel Minimum Slovin | 30 | 19 |
| Sampel Penelitian | 31 | 20 |
| Keputusan | Memenuhi Slovin | Memenuhi Slovin |

---

# Interpretasi Perbandingan

## 1. Penelitian Awal (Sampel 31)

Pada penelitian awal digunakan tingkat error sebesar **12%**. Berdasarkan rumus Slovin diperoleh jumlah sampel minimum sebesar **30 responden**.

Penelitian menggunakan **31 responden**, sehingga jumlah sampel penelitian telah memenuhi bahkan melebihi jumlah minimum yang disyaratkan oleh rumus Slovin.

Jumlah sampel yang lebih besar membuat hasil penelitian memiliki tingkat ketelitian yang lebih baik dalam menggambarkan kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.

---

## 2. Penelitian Terbaru (Sampel 20)

Pada penelitian terbaru digunakan tingkat error sebesar **18%**. Berdasarkan rumus Slovin diperoleh jumlah sampel minimum sebesar **19 responden**.

Penelitian menggunakan **20 responden**, sehingga jumlah sampel penelitian telah memenuhi syarat minimum berdasarkan rumus Slovin.

Jumlah sampel yang digunakan sudah cukup untuk mewakili populasi mahasiswa dalam penelitian survei kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram.

---

# Perbedaan Utama Kedua Penelitian

| Aspek | Sampel 31 | Sampel 20 |
|---|---|---|
| Tingkat ketelitian | Lebih tinggi | Lebih rendah |
| Tingkat error | 12% | 18% |
| Representasi populasi | Lebih baik | Cukup baik |
| Jumlah responden | Lebih banyak | Lebih sedikit |
| Kesesuaian dengan Slovin | Memenuhi | Memenuhi |

---

# Kesimpulan

Kedua penelitian telah memenuhi jumlah minimum sampel berdasarkan rumus Slovin. Penelitian dengan 31 responden memiliki tingkat ketelitian yang lebih tinggi karena menggunakan tingkat error yang lebih kecil yaitu 12%.

Penelitian dengan 20 responden juga telah memenuhi ketentuan Slovin pada tingkat error 18%, sehingga tetap dapat digunakan untuk menggambarkan kepuasan mahasiswa terhadap fasilitas WiFi dan internet di FMIPA Universitas Mataram, meskipun tingkat ketelitiannya lebih rendah dibandingkan penelitian dengan 31 responden.
