# Pengenalan
Project ini bertujuan sebagai gambaran bagaimana Data Analisis dalam meng-explore data seperti pekerjaan apa yang memiliki bayaran tertinggi, skill yang dibutuhkan dalam pekerjaan tersebut dan pekerjaan mana yang banyak dicari dan juga memiliki bayaran yang tinggi

SQL Queries [sql_query folder](/sql_query/)

# Latar Belakang

1. Apa pekerjaan analis data dengan bayaran tertinggi?
2. Skill apa yang dibutuhkan untuk pekerjaan dengan bayaran tertinggi ini?
3. Skill apa yang paling banyak dibutuhkan oleh analis data?
4. Skill mana yang terkait dengan gaji yang lebih tinggi?
5. Skill apa yang paling optimasl untuk dipelajari

# Alat yang Digunakan

Beberapa alat yang saya gunakan dalam project ini adalah :

- **SQL** : membantu query pada database dan mendapatkan Insights pada setiap data
- **PostgreSQL** : Database management System yang ideal dalam menange data
- **Visual Studio Code** :  Aplikasi untuk manajemen basis data dan menjalankan query sql
- **Git & Github** : Berbagi skrip SQL dan analisa yang saya buat di platform github


# Hasil Analisa
setiap pertanyaan untuk proyek ini bertujuan untuk menyelidiki aspek-aspek spesifik dari pasar kerja analis data. berikut ini adalah cara saya menjawab setiap pertanyaan:

### 1. Pekerjaan Data Analisis Dengan Gaji Tertinggi
Saya menyaring posisi Data Analisis berdasarkan gaji tahunan rata-rata dan lokasi, dengan fokus pada pekerjaan jarak jauh. Query ini menyoroti peluang dengan bayaran tinggi di bidang ini.

```sql
SELECT  
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact 
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg is NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 20
```
Berikut adalah rincian pekerjaan analis data teratas di tahun 2023:

- **Kisaran Gaji yang Luas**: 10 pekerjaan analis data dengan bayaran tertinggi berkisar antara $184.000 hingga $650.000, yang mengindikasikan potensi gaji yang signifikan di bidang ini.
- **Perusahaan yang Beragam**: Perusahaan seperti SmartAsset, Meta, dan AT&T termasuk di antara mereka yang menawarkan gaji tinggi, menunjukkan minat yang luas di berbagai industri.
- **Variasi Jabatan Pekerjaan**: Ada keragaman yang tinggi dalam jabatan pekerjaan, dari Analis Data hingga Direktur Analisis, yang mencerminkan beragam peran dan spesialisasi dalam analisis data.

![Top 10 Salaries Data Analyst](picture/Top_average_salaries_for_data_analyst_in_2023.png)
*Grafik Top 10 rerata Gaji pertahun tertinggi untuk Data Analisis*

### 2. Skill Untuk Pekerjaan Dengan Gaji Tertinggi

Saya menggabungkan Data Job Posting dengan Data Skill untuk memberikan Insights tentang apa yang dinilai oleh pemberi kerja untuk pekerjaan dengan gaji tertinggi.
```sql
WITH top_paying_job AS (
    SELECT  
        job_id,
        job_title,
        job_posted_date,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact 
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg is NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 20
)

SELECT 
    top_paying_job.*,
    skills
FROM top_paying_job
INNER JOIN skills_job_dim ON top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC
```
Berikut adalah rincian keterampilan yang paling dibutuhkan untuk 10 pekerjaan Data Analisis dengan bayaran tertinggi di tahun 2023 :

- **SQL** Memimpin dengan 8 pencarian
- **Python** Posisi kedua adalah Python denga 7 pencarian
- **Tablue** Juga termasuk dengan yang banyak di cari di angka 6 

![Top 10 Required for Data Analyst](picture/Top_Required_skills_for_data_analyst_in_2023.png)
*Grafik Top 10 Skill yang banyak dibutuhkan Data Analisis*



- Hasil
- Kesimpulan