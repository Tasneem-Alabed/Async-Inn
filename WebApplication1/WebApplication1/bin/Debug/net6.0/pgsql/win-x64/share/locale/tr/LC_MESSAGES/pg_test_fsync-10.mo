��            )   �      �  1   �  2   �  /   �     &     A     [     v     �     �  (   �     �  4   �  U   2  [   �  K   �  c   0     �  "   �  .   �  E     &   G  +   n     �     �     �     �     �     �  �  �  D   �  D   �  8   	     V	     t	     �	     �	     �	     �	     �	     
  6   
  o   Q
  n   �
  ^   0  p   �        $     ,   >  H   k  *   �  6   �          5     M     _     r     �               
                                                                                	                                           
Compare file sync methods using one %dkB write:
 
Compare file sync methods using two %dkB writes:
 
Compare open_sync with different write sizes:
 
Non-sync'ed %dkB writes:
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
 could not open output file fsync failed n/a n/a* seek failed write failed Project-Id-Version: pg_test_fsync (PostgreSQL) 10
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2019-03-27 09:26+0000
PO-Revision-Date: 2019-03-28 11:11+0300
Last-Translator: Abdullah GÜLNER
Language-Team: Turkish <ceviri@postgresql.org.tr>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 1.8.7.1
 
Dosya sync yöntemlerini bir %dkB yazma kullanarak karşılaştır
 
Dosya sync yöntemlerini iki %dkB yazma kullanarak karşılaştır
 
open_sync ile farklı yazma boyutlarını kıyaslayın
 
sync edilmemiş %dkB yazma:
  1 * 16kB open_sync yazma  2 * 8kB open_sync yazma  4 * 4kB open_sync yazma  8 * 2kB open_sync yazma %13.3f ops/sec  %6.0f usecs/op
 test başına %d saniye
 %s: %s
 %s: Çok fazla komut satırı girdisi var (ilki "%s")
 (Zamanlar benzerse, fsync() farklı bir tanımlayıcıda (descriptor) yazılmış veriyi
senkronize edebilir.)
 (Bu, farklı write open-sync boyutlarında 16kB yazma maliyetini karşılaştırmak
için tasarlanmıştır.)
 (wal_sync_method tercih sırasında,  fdatadync'in Linux'un varsayılanı olması dışında)
 * Bu dosya sistemi ve bağlama (mount) seçenekleri doğrudan I/O
 desteklemiyor, örn: günlüklü modda ext4.
 16 * 1kB open_sync yazma Alarm için thread oluşturulamadı
 Doğrudan I/O bu platformda desteklenmiyor.
 Bu  platformda open_datasync ve open_sync için O_DIRECT destekleniyor.
 Daha fazla bilgi için "%s --help" yazın
 Kullanımı: %s [-f DOSYAADI] [-s TEST-BASINA-SANIYE]
 çıktı dosyası açılamadı fsync başarısız oldu n/a (uygulanamaz) n/a* (uygulanamaz) arama başarıız oldu yazma başarısız oldu 