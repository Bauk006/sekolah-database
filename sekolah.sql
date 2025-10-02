-- 1. Membuat Database Sekolah

CREATE DATABASE sekolah;
USE sekolah;

-- 2. Membuat Table siswa dan nilai

CREATE TABLE siswa (
	id serial4 NOT NULL,
	nama varchar NOT NULL,
	umur int4 NULL,
	jurusan varchar NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

CREATE TABLE nilai (
	id serial4 NOT NULL,
	siswa_id serial4 NOT NULL,
	mata_pelajaran varchar NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);

ALTER TABLE public.nilai ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES siswa(id);

-- 3. Menambahkan Data pada table siswa dan nilai

INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Budi',17,'IPS'),
	 ('Hanif',17,'IPS'), -- 7. Memperbarui / Update Jurusan (id = 3)
	 ('Rangga',17,'IPS'),
	 ('Saskia',16,'IPA');

INSERT INTO public.nilai (mata_pelajaran,nilai) VALUES -- 8. Menghapus satu data nilai siswa (siswa_id = 4)
	 ('Matematika',85),
	 ('Bahasa Inggris',90),
	 ('Bahasa Jawa',75),
	 ('Sejarah',90);

-- 4. Menampilkan semua siswa

INSERT INTO siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Budi',17,'IPS'),
	 ('Hanif',17,'IPA'),
	 ('Rangga',17,'IPS'),
	 ('Saskia',16,'IPA');

-- 5. Menampilkan nama siswa dengan jurusan IPA

INSERT INTO siswa (nama) VALUES
	 ('Andi'),
	 ('Hanif'),
	 ('Saskia');

-- 6. Menampilkan rata-rata tiap siswa

INSERT INTO "select siswa.nama, AVG(nilai.nilai) as rata_nilai
from siswa
join nilai on siswa.id=nilai.siswa_id 
group by siswa.nama" (nama,rata_nilai) VALUES
	 ('Andi',85.0000000000000000),
	 ('Saskia',75.0000000000000000),
	 ('Rangga',90.0000000000000000),
	 ('Budi',90.0000000000000000),
	 ('Hanif',100.0000000000000000);
