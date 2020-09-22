ls parts/*.m4v | sed 's/.m4v//g;s/parts\///g;s/"/\\"/g;' | \
awk '{printf("echo Runing Task %d - \"%s.mp4\"\n", NR,$0)}{m4a="parts/"$0".m4a";m4v="parts/"$0".m4v";mp4="converted/"$0".mp4"; printf("ffmpeg -y -i \"%s\" -i \"%s\" \"%s\", m4a, m4v, mp4) }'

