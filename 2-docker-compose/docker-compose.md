# Docker-Build

Diese Aufgabe ist das Erstellen eines Buildfiles für das Deployment einer Website.  
Das vorgegebene YML-File befindet sich im Ordner `2-docker-compose/docker-compose.yml`. Alle unten angegeben Befehle für das Builden funktionieren nur wenn die Console sich gerade im Root-Ordner dieser Übung `/opt/sysad/docker-lecture/2-docker-compose` befindet.  
ACHTUNG: Für die Einrückungen im YML-File nur Leerzeichen (Keine Tabs) verwenden!
  
Das zu erstellende Docker-Compose.yml-File muss folgende Schritte ausführen:  
1. Service 1: sysad-mysql  
  * Zu verwendendes Image: mysql - Version 5.7  
  * Folgende Environmentvariable muss gesetzt werden (exakte Schreibweise mit "):  
```
"MYSQL_ROOT_PASSWORD=X4d7vOyAljyz0wFYbpdOoeXQuHK1Ee"
```
  * Folgendes Volume muss für den Container freigegeben werden:  
```
/opt/sysad/mysql-data:/var/lib/mysql
```
  * Die folgenden Zeilen können so belassen werden.  
2. Service 2: sysad-crud  
  * Zu verwendendes Image: wase90168/sysad-crud  
  * Der Port 80 muss für den Container freigegeben werden.  
  * Link zum ersten Service (sysad-mysql) muss hergestellt werden.  
  * Die folgenden Zeilen können so belassen werden.  
  
Zum starten des Builds wird folgender Befehl verwendet:  
```
docker-compose up
```
  
  
## Cheat Sheet
[Docker-Compose Cheat Sheet](./compose-cheat-sheet.md)
