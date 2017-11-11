import os
import shutil
import numpy as np
import random

files = os.listdir('wav48')
print('files = '+str(files))

available_speakers = []
for file in files:
    if len(os.listdir('wav48/'+str(file))) > 20:
        available_speakers.append(file)

speakers = random.sample(available_speakers, 15)
print('SPEAKERS '+str(speakers))

for speaker in speakers:
    direc = sorted(os.listdir('wav48/'+str(speaker)))
    audio_samples = random.sample(direc, 20)
    os.makedirs('selected/' + str(speaker) + '/')
    os.makedirs('selected_txt/' + str(speaker) + '/')
    for file in audio_samples:
        src = 'wav48/'+str(speaker)+'/'+file
        src_txt = 'txt/'+str(speaker)+'/'+file[:-3]+'txt'
        destination = os.path.join('selected/'+str(speaker)+'/', file)
        destination_txt = os.path.join('selected_txt/' + str(speaker) + '/', file[:-3]+'txt')
        shutil.move(src,destination)
        shutil.move(src_txt, destination_txt)