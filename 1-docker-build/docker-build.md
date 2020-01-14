# Docker-Build

Diese Aufgabe ist das Erstellen eines Buildfiles für das Deployment einer Website.  
Das vorgegebene Dockerfile befindet sich im Ordner `1-docker-build/Dockerfile`. Alle unten angegeben Befehle für das Builden funktionieren nur wenn die Console sich gerade im Root-Ordner dieser Übung `/opt/sysad/docker-lecture/1-docker-build` befindet.  
  
Das zu erstellende Dockerfile muss folgende Schritte ausführen:  
* Das neue Image baut auf dem Image "webdevops/php-apache" auf  
* Der Port 80 muss freigegeben werden (Die Information darüber sollte im Image gespreichert sein)  
* Ein Verzeichnis mit dem Namen "dockerfiles" muss im Root-Ordner des Containers erstellt werden  
* Folgende Environment-Variable muss für den erstellten Ordner gesetzt werden: DOCKERFILES="/dockerfiles"  
* Die Dateien vom Host unter "./src/" müssen in den Ordner /dockerfiles kopiert werden  
* Ganz am Ende müssen folgende Befehle ausgeführt werden um den Webserver-Container zu initialisieren:  
..* chmod +x $DOCKERFILES/*.sh;  
..* $DOCKERFILES/initialize-container.sh  
  
Zum starten des Builds wird folgender Befehl verwendet:  
```
docker build -t exercise1 .
```

Der Container kann dann mit folgendem Befehl gestartet werden:  
```
docker run -it -p 80:80 exercise1
```
  
  
## Cheat Sheet
[Docker-Build Cheat Sheet](https://kapeli.com/cheat_sheets/Dockerfile.docset/Contents/Resources/Documents/index)
