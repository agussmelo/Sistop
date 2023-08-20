echo cpu model:
cat /proc/cpuinfo | grep "model name" | head -n 1
echo -e "\ncpu execution units:"
cat /proc/cpuinfo | grep "model name" | wc -l
wget -O - https://www.gutenberg.org/files/11/11-0.txt | sed 's/Alice/Agu/gI' > AGU_in_wonderland.txt
echo -e "\nDia con mayor temperatura:"
sort -n -k5 "Archivos de datos-20230816"/weather_cordoba.in | tail -n 1 | awk 'NR==1{print $1" "$2" "$3}'
echo -e "\nDia con menor temperatura:"
sort -n -k6 "Archivos de datos-20230816"/weather_cordoba.in | head -n 1 | awk 'NR==1{print $1" "$2" "$3}'
echo -e "\nRanking ATP:"
sort -n -k3 "Archivos de datos-20230816"/atpplayers.in
echo -e "\nTabla Campeonato Primera Division Argentina 2018-19"
awk '{print $1,$2,$3,$4,$5,$6,$7,$8,$7-$8}' "Archivos de datos-20230816"/superliga.in | sort -n -k2r,2 -k9r,9 |awk '{print $1,$2,$3,$4,$5,$6,$7,$8}'
echo -e "\n MAC address:"
ip addr show wlo1 | grep -Eio " ([0-9a-f]{2}:){5}[0-9a-f]{2} "
mkdir BlackSails && for i in {1..10}; do touch BlackSails/BS_S01E"$i"_es.srt; done && rename 's/_es//' BlackSails/*"_es"*.srt
echo
ffmpeg -i agu.mkv -ss 5 -to 18 -c copy extra_a.mkv
ffmpeg -i selva.mp3 -i gallina.flac -filter_complex "[0:a:0][1:a]amix=inputs=2:duration=longest[outa]" -map "[outa]" extra_b.mp3
