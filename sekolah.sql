CREATE DATABASE sekolah;
USE sekolah;

-- public.siswa definition

-- Drop table

-- DROP TABLE siswa;

CREATE TABLE siswa (
	id serial4 NOT NULL,
	nama varchar NOT NULL,
	umur int4 NULL,
	jurusan varchar NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

-- public.nilai definition

-- Drop table

-- DROP TABLE nilai;

CREATE TABLE nilai (
	id serial4 NOT NULL,
	siswa_id serial4 NOT NULL,
	mata_pelajaran varchar NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);


-- public.nilai foreign keys

ALTER TABLE public.nilai ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES siswa(id);