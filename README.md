## Website-Sneaker

# { Nama Anggota Kelompok StrawhatPirates 🏴‍☠️ }
- M Maulana Yusuf R (1121130010)
- Muhammad Surya Affandi (1121130034)
- Rangga Muhamad Ramadhan (1121130158)
- Pileria Alawiyah (1121130061)
- Diding Rukmana (1121130148)
- Nurbayu Aji (1121130141)


## Apa yang dibutuhkan :

- Akun github
- Akun dockerhub
- Text Editor (Visual Studio Code recommended)
- Doa Orangtua

## Bagaimana cara menjalankannya :
- Gunakan Fork untuk untuk menyalin repository ini dengan meng klik pada link berikut https://github.com/global-institute/Website-Sneaker.git
- Kemudian Clone repository yang sudah anda fork ke local pc anda
- $ git clone [url-git-anda]
- Lalu ubah beberapa hal berikut :
- Tambahkan identitas anda, pada file berikut :
- Dockerfile : Sesuaikan instruksi : LABEL
- Kemudian buat Access Token di dockerhub, untuk dihubungkan dengan github action
- Setelah Access Token dibuat, pergi ke setting repository github Anda, dan tambahkan secret yang berisi dockerhub Access Token
- Settings -> Secrets -> Actions -> New Repository Secret
- Setelah itu buat file yang berlokasi di folder .github/workflows/github-actions-.yml
- Lalu ubah dan sesuaikan tag, repository, secrets pada file actions-workflow.yml
- sesuaikan nama username dockerhub dengan repository dockerhub anda masing-masing :
- docker build . --file Dockerfile --tag (dockerhub_username)/skymatzhu/sneakers:v1
- docker login -u ${{secrets.[dockerhub_username]}} -p ${{secrets.[dockerhub_AccessToken]}} && docker push (dockerhub_username)/skymatzhu/sneakers:v1
- Jika semua persiapan sudah selesai, silahkan push ke repository masing-masing
- git add .
- git commit -m "commit message"
- git push origin main
- Kemudian cek menu Action pada Github anda, pastikan tidak ada error
- Jika github action berhasil, cek dockerhub anda seharusnya ada image baru dengan nama skymatzhu/sneakers:v1
- Coba jalankan docker image yang anda buat di local docker machine ataupun docker playground
- docker run -itd -p8100:80 (dockerhub_username)/sneakers:v1
- Kemudian jalankan containers kalian di port 8100:80 dengan cara klik open in browser
