### ifetch
**Un instrument de informare a sistemului de linie de comandă scris în bash**

![](ifetch.png)

#### Introducere
Acest script Bash oferă utilizatorilor informații minime despre sistemul lor Linux. Afișează informații precum numele utilizatorului, sistemul de operare, kernel-ul, uptime-ul, pachetele instalate și memoria utilizată. 

Scopul acestui script este de a oferi o modalitate rapidă și simplă pentru utilizatorii Linux de a obține informații despre sistemul lor.

#### Utilizare
Pentru a rula scriptul, urmează acești pași:

1. Descarcă scriptul `ifetch.sh` pe sistemul tău Linux.
2. Deschide un terminal și navighează la directorul în care ai salvat scriptul.
3. Execută comanda `bash ifetch.sh` pentru a afișa informațiile despre sistem.

[Utilizare din orice locație din terminal](utilizare.md)

#### Exemplu de Rulare
```bash
bash ifetch.sh
```

#### Dependențe
Acest script nu are dependențe speciale. Poate fi rulat pe orice distribuție Linux fără a necesita instalarea altor pachete sau programe.

#### Compatibilitate
Scriptul a fost creat să fie compatibil cu toate versiunile majore de distribuții Linux, dar a fost testat doar pe Arch Linux.

#### Personalizare
Dacă dorești să personalizezi scriptul, poți modifica direct codul sursă pentru a adăuga sau elimina informații. Asigură-te că ai cunoștințele necesare despre Bash scripting pentru a face modificările corespunzătoare.

#### Detalii Tehnice
Scriptul utilizează comenzi și utilitare comune disponibile pe majoritatea distribuțiilor Linux pentru a colecta și a afișa informațiile despre sistem.

#### Ghid de Contribuție
Dacă dorești să contribuiți la dezvoltarea acestui script, te rog să urmezi acești pași:

1. Fork acestui repository.
2. Creează o ramură (branch) nouă pentru modificările tale: `git checkout -b feature/Modificari`.
3. Efectuează modificările și comite-le: `git commit -am 'Adaugă modificările propuse'`.
4. Trimite-ți modificările: `git push origin feature/Modificari`.
5. Deschide un Pull Request (PR) pentru a propune modificările.

#### Licențiere
Acest script este distribuit sub licența [GPL 3.0](https://github.com/thinkroot99/ifetch?tab=GPL-3.0-1-ov-file).

#### Observații
- Scriptul nu necesită permisiuni speciale de execuție și poate fi rulat ca utilizator obișnuit.
- Pentru informații specifice despre comenzile utilizate în script, poți utiliza `man` sau `--help` pentru a obține mai multe detalii.

Această documentație oferă utilizatorilor informații detaliate despre utilizare, contribuție și licențiere, împreună cu exemple de utilizare și observații importante. Poate fi adaptată și completată în funcție de nevoile tale specifice și de cerințele proiectului tău.