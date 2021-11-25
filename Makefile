AUDIO = animals.mp3
TITLE_CARD = all-animals.jpg

.PHONY: audio

default: $(TITLE_CARD) $(AUDIO)
	ffmpeg -loop 1 -f image2 -r 15 -i $(TITLE_CARD) -i $(AUDIO) -c:v libx264 -c:a copy -shortest output.mp4

audio: $(AUDIO)
	# 

$(AUDIO): raw/*
	rm -f $(AUDIO)
	vidu cat raw/* $(AUDIO)

