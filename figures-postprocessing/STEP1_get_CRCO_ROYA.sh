
rm -rfv *CRCO*png *ROYA*png

for FILE in t_CRCO t_ROYA rr_CRCO rr_ROYA; do
sshpass -p "1q23a4" scp -r regcm@radar.dhz.hr:./public_html/tomislav/AFTER_28Jan/Kotlarski/ALLinONE/DHMZ_2018/${FILE}.png .
done

montage rr_CRCO.png t_CRCO.png rr_ROYA.png t_ROYA.png  -tile 2x2 -geometry 750x600 Fig_11_CRCO_ROYA_T2m_R.png
