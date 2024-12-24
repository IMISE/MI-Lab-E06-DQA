# MI-Lab-E06-DQA

## GitHub Codespaces
Die Übung soll in einem GitHub Codespace ausgeführt werden. Ein Codespace ist eine in der Cloud gehostete Entwicklungsumgebung. Daurch muss keine Software installiert werden um die Übung durchzuführen. Die Entwicklungsumgebung wird in einem virtuellen Docker Container gehostet welcher die benötigten Software beinhaltet.
Eine ausführliche Dokumentation zu GitHub Codespaces finden Sie [hier](https://docs.github.com/de/codespaces/overview). 

### Codespace Erstellen
Um einen neuen Codespace zu erstellen gehen Sie unter Code -> Codespaces und klicken Sie auf das Plus ("Create a codespace on main"). Danach wird der Codespace automatisch in einem neuen Browser Fenster geöffnet und gestartet.

### R Codespace mit Docker
Das erste Aufsetzen des Codespace dauert ein paar Minuten. Der Codespace läuft mit einer R Docker Umgebung, das alle benötigten R libaries für die Übung bereits installiert hat. Das Docker Image ist ebenfalls auf [Docker Hub](https://hub.docker.com/repository/docker/mperbix/mi-lab-r-with-dataquier/general). 

## Ablauf
Nachdem der Codespace erfolgreich aufgesetzt wurde, geben Sie folgendes im Terminal (unten) ein:
1. `cd Setup`
2. `R`
3. `shiny::runApp("app.R")`

Dadurch öffnet sich entweder automatisch ein neues Browser Fenster mit der Shiny App oder es kommt ein Pop Up unten rechts: 
![grafik](https://github.com/user-attachments/assets/56d41256-058b-442b-b826-00d54749e908) 
Klicken Sie auf "In Browser öffnen". 

### Shiny App neustarten
**Wichtig**: Das Browser Fenster mit der Shiny App zu schließen oder ein Error folgen nicht zu einem Abbruch der Shiny App im Terminal! 
Um die Shiny App abzubrechen geben Sie im Terminal `Strg C` ein. Nur nach einem Abbruch kann die Shiny App erneut gestartet werden. 
