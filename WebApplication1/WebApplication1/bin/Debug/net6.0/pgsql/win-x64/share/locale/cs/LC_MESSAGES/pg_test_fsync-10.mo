��            )   �      �  1   �  2   �  /        6  8   Q     �     �     �     �     �  (        >  4   F  U   {  [   �  K   -  c   y     �  "   �  .     E   J  &   �  +   �     �     �                       �  -  =   �  ;   	  7   D	     |	  :   �	     �	     �	     
     "
     =
  =   ]
     �
  G   �
  i   �
  `   U  S   �  f   
     q  !   �  3   �  I   �  )   ,  -   V  !   �     �     �     �      �     �                                                         	                                     
                                           
Compare file sync methods using one %dkB write:
 
Compare file sync methods using two %dkB writes:
 
Compare open_sync with different write sizes:
 
Non-sync'ed %dkB writes:
 
Test if fsync on non-write file descriptor is honored:
  1 * 16kB open_sync write  2 *  8kB open_sync writes  4 *  4kB open_sync writes  8 *  2kB open_sync writes %13.3f ops/sec  %6.0f usecs/op
 %d second per test
 %d seconds per test
 %s: %s
 %s: too many command-line arguments (first is "%s")
 (If the times are similar, fsync() can sync data written on a different
descriptor.)
 (This is designed to compare the cost of writing 16kB in different write
open_sync sizes.)
 (in wal_sync_method preference order, except fdatasync is Linux's default)
 * This file system and its mount options do not support direct
  I/O, e.g. ext4 in journaled mode.
 16 *  1kB open_sync writes Could not create thread for alarm
 Direct I/O is not supported on this platform.
 O_DIRECT supported on this platform for open_datasync and open_sync.
 Try "%s --help" for more information.
 Usage: %s [-f FILENAME] [-s SECS-PER-TEST]
 could not open output file fsync failed n/a n/a* seek failed write failed Project-Id-Version: pg_test_fsync (PostgreSQL) 11
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2018-07-13 16:56+0000
PO-Revision-Date: 2018-07-14 00:31+0200
Last-Translator: 
Language-Team: 
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Poedit 2.0.7
 
Srovnání sync metod souboru pomocí jednoho %dkB zápisu:
 
Srovnání sync metod souboru pomocí dvou %dkB zápisů:
 
Srovnání open_sync s různými velikostmi zápisů:
 
Non-sync'ed %dkB writes:
 
Testuje zda fsync funguje na non-write file descriptoru:
  1 * 16kB open_sync write  2 *  8kB open_sync writes  4 *  4kB open_sync writes  8 *  2kB open_sync writes %13.3f ops/sec  %6.0f usecs/op
 %d sekund per test
 %d seconds per test
 %d seconds per test
 %s: %s
 %s: příliš mnoho argumentů v příkazové řádce (první je "%s")
 (Pokud jsou výsledky podobné, fsync() může synchronizovat data
zapsaná na různých descriptorech.)
 (Toto je navrženo pro srovnání ceny zápisu 16kB s různými velikostmi
zápisů open_sync.)
 (v pořadí dle wal_sync_method, s výjimkou že fdatasync je výchozí na Linuxu)
 * Tento souborový systém a jeho mount volby nepodporují direct
  I/O, e.g. ext4 v journaled módu.
 16 *  1kB open_sync writes Nelze vytvořit thread pro alarm
 Direct I/O není na této platformě podporováno.
 O_DIRECT podporováno na této platformě pro open_datasync a open_sync.
 Zkuste "%s --help" pro více informací.
 Použití: %s [-f SOUBOR] [-s SECS-PER-TEST]
 nelze otevřít výstupní soubor fsync selhal n/a n/a* nastavení pozice (seek) selhalo zápis selhal 