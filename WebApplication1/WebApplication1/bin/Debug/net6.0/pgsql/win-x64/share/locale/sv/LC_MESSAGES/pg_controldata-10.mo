��    V      �     |      x  X   y  
   �     �  +   �  7   "      Z  C   {  -   �  !   �  ,   	      <	  4   ]	     �	  ,   �	  ,   �	  )   �	  )   &
  )   P
  )   z
  )   �
  )   �
  )   �
  )   "  )   L  ,   v  )   �  )   �  ,   �  )   $  )   N  )   x  ,   �  )   �  )   �  ,   #  )   P  )   z  )   �  )   �  )   �  )   "  )   L  )   v  )   �  )   �  )   �  )     )   H  )   r  ,   �  )   �  ,   �  ,      )   M  )   w  &   �     �  )   �  �   �    �     �     �     �     �          $  )   2  )   \  )   �  )   �     �     �     �  )   �  )     	   8     B     X     f  )   r     �     �  )   �  )   �        b  $  k   �  
   �     �  2     9   N     �  E   �  1   �  "     /   A     q  8   �     �  3   �  3     /   C  /   s  /   �  0   �  /     0   4  /   e  /   �  /   �  3   �  1   )  1   [  4   �  /   �  /   �  /   "  2   R  /   �  /   �  4   �  /     /   J  /   z  /   �  /   �  0   
  /   ;  0   k  /   �  /   �  0   �  1   -  0   _  2   �  4   �  0   �  5   )   1   _   0   �   0   �   /   �      #!  /   1!  �   a!  �   R"     G#  
   T#     _#     z#     �#     �#  1   �#  /   �#  1   $  1   Q$     �$     �$     �$  0   �$  0   �$  	   �$     �$     %     $%  1   ,%     ^%     o%  1   �%  1   �%     �%                  1   >           $   D   )   .             T                   (          V   S                         %   7       	          =       +                 "   B   2       ?       &   *       
   A   L   #   ;   O   '   R   @   H          6      3       0         <          ,   I   F             9   E   U       P      4                     Q   N           8   G   C          /   M   K          J          5   :   !                                           -        
If no data directory (DATADIR) is specified, the environment variable PGDATA
is used.

 
Options:
   %s [OPTION] [DATADIR]
   -?, --help     show this help, then exit
   -V, --version  output version information, then exit
  [-D] DATADIR    data directory
 %s displays control information of a PostgreSQL database cluster.

 %s: could not open file "%s" for reading: %s
 %s: could not read file "%s": %s
 %s: could not read file "%s": read %d of %d
 %s: no data directory specified
 %s: too many command-line arguments (first is "%s")
 64-bit integers Backup end location:                  %X/%X
 Backup start location:                %X/%X
 Blocks per segment of large relation: %u
 Bytes per WAL segment:                %u
 Catalog version number:               %u
 Data page checksum version:           %u
 Database block size:                  %u
 Database cluster state:               %s
 Database system identifier:           %s
 Date/time type storage:               %s
 End-of-backup record required:        %s
 Fake LSN counter for unlogged rels:   %X/%X
 Float4 argument passing:              %s
 Float8 argument passing:              %s
 Latest checkpoint location:           %X/%X
 Latest checkpoint's NextMultiOffset:  %u
 Latest checkpoint's NextMultiXactId:  %u
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u:%u
 Latest checkpoint's PrevTimeLineID:   %u
 Latest checkpoint's REDO WAL file:    %s
 Latest checkpoint's REDO location:    %X/%X
 Latest checkpoint's TimeLineID:       %u
 Latest checkpoint's full_page_writes: %s
 Latest checkpoint's newestCommitTsXid:%u
 Latest checkpoint's oldestActiveXID:  %u
 Latest checkpoint's oldestCommitTsXid:%u
 Latest checkpoint's oldestMulti's DB: %u
 Latest checkpoint's oldestMultiXid:   %u
 Latest checkpoint's oldestXID's DB:   %u
 Latest checkpoint's oldestXID:        %u
 Maximum columns in an index:          %u
 Maximum data alignment:               %u
 Maximum length of identifiers:        %u
 Maximum size of a TOAST chunk:        %u
 Min recovery ending loc's timeline:   %u
 Minimum recovery ending location:     %X/%X
 Mock authentication nonce:            %s
 Prior checkpoint location:            %X/%X
 Report bugs to <pgsql-bugs@postgresql.org>.
 Size of a large-object chunk:         %u
 Time of latest checkpoint:            %s
 Try "%s --help" for more information.
 Usage:
 WAL block size:                       %u
 WARNING: Calculated CRC checksum does not match value stored in file.
Either the file is corrupt, or it has a different layout than this program
is expecting.  The results below are untrustworthy.

 WARNING: possible byte ordering mismatch
The byte ordering used to store the pg_control file might not match the one
used by this program.  In that case the results below would be incorrect, and
the PostgreSQL installation would be incompatible with this data directory.
 by reference by value byte ordering mismatch in archive recovery in crash recovery in production max_connections setting:              %d
 max_locks_per_xact setting:           %d
 max_prepared_xacts setting:           %d
 max_worker_processes setting:         %d
 no off on pg_control last modified:             %s
 pg_control version number:            %u
 shut down shut down in recovery shutting down starting up track_commit_timestamp setting:       %s
 unrecognized status code unrecognized wal_level wal_level setting:                    %s
 wal_log_hints setting:                %s
 yes Project-Id-Version: PostgreSQL 10
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2018-08-25 19:15+0000
PO-Revision-Date: 2018-08-26 07:32+0200
Last-Translator: Dennis Björklund <db@zigo.dhs.org>
Language-Team: Swedish <sv@li.org>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Om ingen datakatalog (DATAKATALOG) har angivits så nyttjas omgivningsvariabeln
PGDATA för detta syfte.

 
Flaggor:
   %s [FLAGGA] [DATAKATALOG]
   -?, --help     visa denna hjälp, avsluta sedan
   -V, --version  visa versionsinformation, avsluta sedan
  [-D] DATADIR    datakatalog
 %s visar kontrollinformation om ett databaskluster för PostgreSQL.

 %s: kunde inte öppna fil "%s" för läsning: %s
 %s: kunde inte läsa fil "%s": %s
 %s: kunde inte läsa fil "%s": läste %d av %d
 %s: ingen datakatalog angiven.
 %s: för många kommandoradsargument (första är "%s")
 64-bitars heltal Slutpunkt för backup:                       %X/%X
 Startpunkt för backup:                      %X/%X
 Block per segment i en stor relation:       %u
 Segmentstorlek i transaktionsloggen:        %u
 Katalogversion:                             %u
 Checksummaversion för datasidor:            %u
 Databasens blockstorlek:                    %u
 Databasklustrets tillstånd:                 %s
 Databasens systemidentifierare:             %s
 Representation av dag och tid:              %s
 Tvingande markering av backupslut:          %s
 Beräknat LSN-tal av ologgade relationer:    %X/%X
 Överföring av float4-argument:              %s
 Överföring av float8-argument:              %s
 Läge för senaste checkpoint:                %X/%X
 NextMultiOffset vid senaste checkpoint:     %u
 NextMultiXactId vid senaste checkpoint:     %u
 NextOID vid senaste checkpoint:             %u
 NextXID vid senaste checkpoint:             %u:%u
 PrevTimeLineID vid senaste checkpoint:      %u
 REDO-WAL-fil vid senaste checkpoint:        %s
 REDO-läge för senaste checkpoint:           %X/%X
 TimeLineID vid senaste checkpoint:          %u
 Senaste checkpoint:ens full_page_writes:    %s
 newestCommitTsXid vid senaste checkpoint:   %u
 oldestActiveXID vid senaste checkpoint:     %u
 oldestCommitTsXid vid senaste checkpoint:   %u
 DB för oldestMulti vid senaste checkpoint:  %u
 oldestMultiXid vid senaste checkpoint:      %u
 DB för oldestXID vid senaste checkpoint:    %u
 oldestXID vid senaste checkpoint:           %u
 Maximalt antal kolonner i ett index:        %u
 Maximal jämkning av data (alignment):       %u
 Maximal längd för identifierare:            %u
 Maximal storlek för en TOAST-enhet:         %u
 Tidslinje för min slutpos vid återställning:%u
 Minsta slutposition vid återställning:      %X/%X
 Fejkat authentiseringsvärde:                %s
 Närmast föregående checkpoint:              %X/%X
 Rapportera fel till <pgsql-bugs@postgresql.org>.
 Storlek för large-object-enheter:           %u
 Tidpunkt för senaste checkpoint:            %s
 Försök med "%s --help" för mer information.
 Användning:
 Blockstorlek i transaktionsloggen:          %u
 VARNING: Beräknad CRC-kontrollsumma matchar inte det värde som har sparats i filen.
Antingen är filen trasig, eller så har den en annan uppbyggnad än vad detta
program förväntade sig. Resultatet nedan är inte helt tillförlitligt.

 VARNING: möjligt fel i talordning
Den endian-ordning med vilken pg_control lagrar filer passar kanske
inte detta program. I så fall kan nedanstående utfall vara oriktigt
och det installerade PostgreSQL vara oförenligt med databaskatalogen.
 med referens med värde byte-ordning stämmer inte utför arkivåterställning återställer efter krash i full drift Värde på max_connections:                   %d
 Nuvarande max_locks_per_xact:               %d
 Värde på max_prepared_xacts:                %d
 Värde på max_worker_processes:              %d
 nej av på pg_control ändrades senast:                 %s
 Versionsnummer för pg_control:              %u
 avstängt avslutat med återställning stänger ner startar Värde på track_commit_timestamp:            %s
 okänd statuskod okänd wal_level Värde på wal_level:                         %s
 Värde på wal_log_hints:                     %s
 ja 