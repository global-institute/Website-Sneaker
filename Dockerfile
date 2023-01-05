FROM nginx

LABEL   MAINTENER="M Maulana Yusuf R" \
        NIM="1121130010" \
        KELAS="TI SE SH 2021"

LABEL   MAINTENER="Pileria Alawiyah" \
        NIM="1121130061" \
        KELAS="TI CN SH 2021"

LABEL   MAINTENER="Diding Rukmana" \
        NIM="1121130148" \
        KELAS="TI SE M 2021"

LABEL   MAINTENER="Muhammad Surya Affandi" \
        NIM="1121130034" \
        KELAS="TI SE M 2021"

LABEL   MAINTENER="Rangga Muhamad Ramadhan" \
        NIM="1121130158" \
        KELAS="TI CN M 2021"

COPY html /usr/share/nginx/html

EXPOSE 80 443
