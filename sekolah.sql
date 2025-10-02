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

INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Budi',17,'IPS'),
	 ('Saskia',16,'IPS'),
	 ('Hanif',17,'IPA'),
	 ('Rangga',17,'IPS');

INSERT INTO public.nilai (mata_pelajaran,nilai) VALUES
	 ('Matematika',85),
	 ('Bahasa Inggris',90),
	 ('Bahasa Jawa',75),
	 ('Kimia',100),
	 ('Sejarah',90);
