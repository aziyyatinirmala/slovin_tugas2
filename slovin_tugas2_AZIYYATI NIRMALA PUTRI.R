# ==========================================
# UJI VALIDITAS DAN RELIABILITAS
# ==========================================

# Memanggil library
library(readxl)
library(psych)

# Membaca data
data <- read_excel("C:/Users/Asus/Documents/FILE SEMESTER 5/Data Teksam Slovin.xlsx")

# Melihat data
View(data)

# ==========================================
# UJI VALIDITAS
# ==========================================

# Menghitung validitas
hasil <- alpha(data)

# Menampilkan nilai r hitung / r.drop
hasil$item.stats

# Keterangan:
# Jika nilai r.drop > 0.3
# maka item pertanyaan dinyatakan VALID

# ==========================================
# UJI RELIABILITAS
# ==========================================

# Menampilkan nilai Cronbach Alpha
hasil$total

# Keterangan:
# Jika Cronbach Alpha > 0.6
# maka instrumen dinyatakan RELIABEL

# ================================
# INFORMASI POPULASI DAN SAMPEL
# ================================

N <- 52   # Populasi
n <- 20   # Sampel

# ================================
# NAIVE ESTIMATION
# ================================

naive_estimation <- data.frame(
  
  Indikator = names(wifi[,1:9]),
  
  Mean_Naive = colMeans(wifi[,1:9])
)

naive_estimation

# Rata-rata keseluruhan naive
mean_naive_total <- mean(
  naive_estimation$Mean_Naive
)

mean_naive_total

# ================================
# WEIGHT ESTIMATION
# ================================

# Menghitung total skor tiap indikator
total_indikator <- colSums(wifi[,1:9])

# Menghitung bobot
bobot <- total_indikator /
  sum(total_indikator)

bobot

# Weighted estimation
weighted_estimation <- data.frame(
  
  Indikator = names(wifi[,1:9]),
  
  Bobot = bobot,
  
  Mean_Weighted =
    colMeans(wifi[,1:9]) * bobot
)

weighted_estimation

# Rata-rata weighted total
mean_weight_total <- sum(
  weighted_estimation$Mean_Weighted
)

mean_weight_total

# ================================
# PERHITUNGAN SLOVIN
# ================================

# Tingkat error 18%
e <- 0.18

# Rumus Slovin
# n = N / (1 + N(e)^2)

n_slovin <- N / (1 + N * (e^2))

n_slovin

# Pembulatan
n_slovin_bulat <- round(n_slovin)

n_slovin_bulat

# ================================
# TABEL HASIL SLOVIN
# ================================

slovin_df <- data.frame(
  
  Populasi = N,
  
  Tingkat_Error = e,
  
  Sampel_Slovin = round(n_slovin, 2),
  
  Sampel_Minimum = n_slovin_bulat,
  
  Sampel_Penelitian = n
)

slovin_df
