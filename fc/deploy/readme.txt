Flight Contest

Thomas Weise
Deutscher Pr�zisionsflug-Verein e.V.
13.02.2010

Diese Hinweise finden Sie nach der Installation im Startmen� unter
'Programme -> Flight Contest -> Readme'.

Installationshinweise
---------------------
- Wird AFLOS nicht in dem Verzeichnis C:\AFLOS installiert,
  f�hren Sie nach der ersten Benutzung von AFLOS den Punkt
  'Programme -> Flight Contest -> Install AFLOS connection' aus
  (in Windows Vista oder Windows 7 als Administrator).


Neu in dieser Version (0.4):
----------------------------
- �bernahme von Strecken aus AFLOS
- Unterst�tzung mehrerer Wettbewerbe
- Deutsche und englische Bediensprache
- Erweiterungen der Wettbewerbsverwaltung

Neu in Version 0.3:
-------------------
- Neues Layout, basierend auf Fluid 960 Grid System

Neu in Version 0.2:
-------------------
- 'Flight Contest' als Apache Tomcat Anwendung

Neu in Version 0.1.1:
---------------------
- Unterst�tzung von 'Windows Vista'

Version 0.1:
------------
- Erster Prototyp


Allgemeines:
------------
'Flight Contest' ist eine Netzwerk-Anwendung.
Ein Server stellt eine Datenbank im Netzwerk zur Verf�gung.
Auf einem oder mehreren Clients l�uft 'Flight Context' im Web-Browser.
Server und Client k�nnen auf einem Windows-Rechner liegen.

Beste Darstellung im Client mit dem Web-Browser 'Firefox'.
'Internet Explorer' ebenfalls m�glich.

Auf einem Rechner ist die gleichzeite Anzeige
des Wettbewerbes in der anderen Bediensprache oder eines 2. Wettbewerbes   
mit einem 2. Internet-Explorer-Fenster m�glich, 
nicht jedoch mit einem 2. Firefox-Fenster.
  

M�gliche Betriebssysteme der Server-Installation:
------------------------------------------------
Windows XP ServicePack 2
Windows Vista ServicePack 1
Windows 7 


Server starten:
---------------
Starten des Dienstemanagers 'Apache Tomcat FlightContest':
  'Programme -> Flight Contest -> Flight Contest Service Manager'
(in Windows Vista oder Windows 7 als Administrator)

Auf Icon des Dienstemanagers 'Apache Tomcat FlightContest' ausf�hren:
  Kontextmen�punkt 'Start Service' aufrufen


Server stoppen:
---------------
Auf Icon des Dienstemanagers 'Apache Tomcat FlightContest' ausf�hren:
  Kontextmen�punkt 'Stop Service'
  
  
Arbeit mit 'Flight Contest':
----------------------------
Mit Firefox oder Internet Explorer auf dem Server:
  'Programme -> Flight Contest -> Flight Contest'

Mit Firefox oder Internet Explorer 
auf einem beliebigen Rechner im Netzwerk aufrufen:
  http://SERVER-COMPUTERNAME:8080/fc/contest/start
  

Datensicherung:
---------------
Die Datenbank wird an folgendem Ort gespeichert:
  <Installationsverzeichnis>\fc
  (C:\Programme\Flight Contest\fc)

Vorgehen zur Datensicherung:

  Server stoppen

  Folgende Dateien an einen sicheren Ort kopieren:
    fcdb.properties
    fcdb.script
    
Vorgehen zur Datenwiederherstellung:

  Server stoppen

  Inhalt des folgenden Verzeichnisses l�schen:
    <Installationsverzeichnis>\fc
    (C:\Programme\Flight Contest\fc)

  Folgende Dateien aus der Datensicherung wiederherstellen:
  	<Installationsverzeichnis>\fc\fcdb.properties
  	<Installationsverzeichnis>\fc\fcdb.script
  	(C:\Programme\Flight Contest\fc)
  	
  Server starten
