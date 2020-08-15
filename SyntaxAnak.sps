*VARIABEL Kegiatan*.
 IF (B5_R5A1=1) Kegiatan=1. 
 IF (B5_R6=1) Kegiatan=1. 
 IF (B5_R5A1=2 & B5_R6=2 & B5_R12A=1) Kegiatan=2. 
 IF (B5_R5A1=2 & B5_R6=2 & B5_R12A=2 & B5_R12B=1) Kegiatan=2. 
 IF (B5_R5A1=2 & B5_R6=2 & B5_R12A=2 & B5_R12B=2 & B5_R17A<=3) Kegiatan=2. 
 IF (B5_R5A1=2 & B5_R5B=2 & B5_R6=2 & B5_R12A=2 & B5_R12B=2 & B5_R17A>3) Kegiatan=4. 
 IF (B5_R5A1=2 & B5_R5B=3 & B5_R6=2 & B5_R12A=2 & B5_R12B=2 & B5_R17A>3) Kegiatan=5. 
 IF (B5_R5A1=2 & B5_R5B=4 & B5_R6=2 & B5_R12A=2 & B5_R12B=2 & B5_R17A>3) Kegiatan=6. 
 variable labels Kegiatan 'Jenis Kegiatan'. 
 value labels Kegiatan  
 1'1 Bekerja' 
 2'2 Pengangguran' 
 3'3 Sekolah' 4'4 Mengurus Rumah Tangga' 5'5 Lainnya'. 

*VARIABEL KelumAnak*.
DATASET ACTIVATE DataSet1.
RECODE b4_k8 (10 thru 12=1) (13 thru 14=2) (15 thru 17=3) INTO KelumAnak.
VARIABLE LABELS  KelumAnak 'Kelompok Umur Anak'.
EXECUTE.


*TABEL 9.30-->(b4_k8>=10&b4_k8<=17& Kegiatan=1), KelumAnak.
*TABEL 9.31-->(b4_k8>=10&b4_k8<=17& Kegiatan=1), klasifikas,KelumAnak.
*TABEL 9.31--> (b4_k8>=10&b4_k8<=17& Kegiatan=1), b4_k6, KelumAnak.
*TABEL 9.32--> (b4_k8>=10&b4_k8<=17& Kegiatan=1), kode_kabb
**TABEL 9.33--> (b4_k8>=10&b4_k8<=17& Kegiatan=1), kode_kabb, KelumAnak.



