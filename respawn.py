import pygame, time, os
pygame.mixer.init(frequency=22050, size=-16, channels=2, buffer=4096)

soundobj = pygame.mixer.Sound('sounds/beep2.wav')
soundobj.play()
print "INSERT COIN: 3"
time.sleep(1)
def cls():
    os.system(['clear','cls'][os.name == 'nt'])
cls()
soundobj.stop()
soundobj = pygame.mixer.Sound('sounds/beep2.wav')
soundobj.play()
print "INSERT COIN: 2"
time.sleep(1)
cls()
soundobj.stop()
soundobj = pygame.mixer.Sound('sounds/beep1.wav')
soundobj.play()
print "INSERT COIN: 1"
time.sleep(1)
soundobj.stop()
