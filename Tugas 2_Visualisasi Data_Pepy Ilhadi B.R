# --------------------------------------------
# TRANSFORMASI DATA KUNJUNGAN PERPUSTAKAAN DAERAH
# --------------------------------------------

# 1. Input Data
data_kunjungan <- data.frame(
  Bulan = c("Januari", "Februari", "Maret", "April", "Mei", "Juni",
            "Juli", "Agustus", "September", "Oktober", "November", "Desember"),
  Jumlah = c(90, 86, 97, 83, 85, 85, 65, 58, 60, 93, 94, 54)
)

# 2. Transformasi Tukey
# a. Transformasi akar (sqrt)
data_kunjungan$Akar <- sqrt(data_kunjungan$Jumlah)

# b. Transformasi logaritma natural (ln)
data_kunjungan$Logaritma <- log(data_kunjungan$Jumlah)

# 3. Visualisasi Boxplot
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1))  # Atur layout plot

# Boxplot data asli
boxplot(data_kunjungan$Jumlah,
        main = "Data Asli",
        ylab = "Jumlah Pengunjung",
        col = "#FFCCCB")

# Boxplot transformasi akar
boxplot(data_kunjungan$Akar,
        main = "Transformasi Akar",
        ylab = "sqrt(Jumlah Pengunjung)",
        col = "#90EE90")

# Boxplot transformasi logaritma
boxplot(data_kunjungan$Logaritma,
        main = "Transformasi Logaritma",
        ylab = "ln(Jumlah Pengunjung)",
        col = "#ADD8E6")

# Reset layout plot
par(mfrow = c(1, 1))

# 4. Tampilkan data hasil transformasi
print(data_kunjungan)

