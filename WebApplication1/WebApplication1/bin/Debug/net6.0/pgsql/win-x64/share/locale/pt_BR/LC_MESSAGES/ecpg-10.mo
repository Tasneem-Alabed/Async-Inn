��    y      �  �   �      8
  ~   9
  -   �
  0   �
  +     g   C     �  4   �  7      s   8  .   �  G   �  4   #  )   X  w   �  4   �     /  @   B  =   �  ,   �  !   �       ,   .  1   [  *   �  -   �  1   �  '     &   @  +   g  "   �  #   �     �  )   �  =     	   J     T  &   p  <   �  !   �  	   �  -      +   .  "   Z     }  ,   �     �     �  *     "   .  '   Q     y     �  !   �     �  !   �             3   ;  /   o  '   �  5   �  I   �  ,   G  /   t  *   �  T   �  '   $     L     g     �     �     �  -   �  ,   �  ,   !  5   N     �  )   �  ?   �  8   
  �   C     �  0   �  5   %     [  A   p  L   �  +   �     +  6   9  '   p  #   �     �  (   �  4   �  )   '     Q  /   n     �      �  $   �     �  "     ,   8     e     }  '   �     �     �  $   �  D   $  +   i  ?   �  0   �       8   %     ^     |  &   �      �  �  �  �   �   -   0!  8   ^!  -   �!  p   �!  "   6"  ;   Y"  ?   �"  ~   �"  :   T#  V   �#  C   �#  ,   *$  �   W$  >   �$     )%  J   B%  D   �%  :   �%  &   &  /   4&  D   d&  6   �&  /   �&  2   '  6   C'  ,   z'  +   �'  0   �'  '   (  *   ,(     W(  +   ^(  I   �(  
   �(      �(  7    )  K   8)  #   �)     �)  7   �)  6   �)  *   *     J*  -   b*     �*     �*  0   �*  -   �*  .   )+     X+     r+  &   �+     �+  &   �+     �+  '   ,  9   9,  8   s,  (   �,  C   �,  X   -  /   r-  8   �-  6   �-  V   .  3   i.     �.     �.     �.     �.     /  0   /  0   O/  0   �/  <   �/     �/  /   0  J   70  ?   �0  �   �0      �1  E   �1  ?   �1     32  Q   H2  W   �2  6   �2     )3  ?   63  .   v3  &   �3     �3  +   �3  :   4  +   C4     o4  3   �4  &   �4  '   �4  /   5     ?5  /   ^5  7   �5  !   �5  !   �5  3   
6  ,   >6  3   k6  1   �6  P   �6  6   "7  K   Y7  7   �7  "   �7  C    8  !   D8  !   f8  )   �8  )   �8     Y   *         -   <          ?      "   9   M   O           =   ^      0   w      y   ,   P                2   l          t   )   G   v   5   x   C       :      e   F       Z       ]       X             %   k   J   H   ;   [           U       i      d       
   E               N       $   a   b       T           !       6      D      h   (   &   g   f   u   A   K          W       #   1       V   n   B           I   +   o   _   8   s          Q                 4      /   7                                  S   `   L   c   >   \       m   p   '                 3   	      @       q   R   j           r            .    
If no output file is specified, the name is formed by adding .c to the
input file name, after stripping off .pgc if present.
 
Report bugs to <pgsql-bugs@postgresql.org>.
   --regression   run in regression testing mode
   -?, --help     show this help, then exit
   -C MODE        set compatibility mode; MODE can be one of
                 "INFORMIX", "INFORMIX_SE"
   -D SYMBOL      define SYMBOL
   -I DIRECTORY   search DIRECTORY for include files
   -V, --version  output version information, then exit
   -c             automatically generate C code from embedded SQL code;
                 this affects EXEC SQL TYPE
   -d             generate parser debug output
   -h             parse a header file, this option includes option "-c"
   -i             parse system include files as well
   -o OUTFILE     write result to OUTFILE
   -r OPTION      specify run-time behavior; OPTION can be:
                 "no_indicator", "prepare", "questionmarks"
   -t             turn on autocommit of transactions
 %s at or near "%s" %s is the PostgreSQL embedded SQL preprocessor for C programs.

 %s, the PostgreSQL embedded C preprocessor, version %d.%d.%d
 %s: could not locate my own executable path
 %s: could not open file "%s": %s
 %s: no input files specified
 %s: parser debug support (-d) not available
 AT option not allowed in CLOSE DATABASE statement AT option not allowed in CONNECT statement AT option not allowed in DISCONNECT statement AT option not allowed in SET CONNECTION statement AT option not allowed in TYPE statement AT option not allowed in VAR statement AT option not allowed in WHENEVER statement COPY FROM STDIN is not implemented CREATE TABLE AS cannot specify INTO ERROR:  EXEC SQL INCLUDE ... search starts here:
 Error: include path "%s/%s" is too long on line %d, skipping
 Options:
 SHOW ALL is not implemented Try "%s --help" for more information.
 Unix-domain sockets only work on "localhost" but not on "%s" Usage:
  %s [OPTION]... FILE...

 WARNING:  arrays of indicators are not allowed on input could not open include file "%s" on line %d could not remove output file "%s"
 cursor "%s" does not exist cursor "%s" has been declared but not opened cursor "%s" is already defined descriptor "%s" does not exist descriptor header item "%d" does not exist descriptor item "%s" cannot be set descriptor item "%s" is not implemented end of search list
 expected "://", found "%s" expected "@" or "://", found "%s" expected "@", found "%s" expected "postgresql", found "%s" incomplete statement incorrectly formed variable "%s" indicator for array/pointer has to be array/pointer indicator for simple data type has to be simple indicator for struct has to be a struct indicator variable "%s" is hidden by a local variable indicator variable "%s" is hidden by a local variable of a different type indicator variable must have an integer type initializer not allowed in EXEC SQL VAR command initializer not allowed in type definition internal error: unreachable state; please report this to <pgsql-bugs@postgresql.org> interval specification not allowed here invalid bit string literal invalid connection type: %s invalid data type key_member is always 0 missing "EXEC SQL ENDIF;" missing identifier in EXEC SQL DEFINE command missing identifier in EXEC SQL IFDEF command missing identifier in EXEC SQL UNDEF command missing matching "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" more than one EXEC SQL ELSE multidimensional arrays are not supported multidimensional arrays for simple data types are not supported multidimensional arrays for structures are not supported multilevel pointers (more than 2 levels) are not supported; found %d level multilevel pointers (more than 2 levels) are not supported; found %d levels nested /* ... */ comments nested arrays are not supported (except strings) no longer supported LIMIT #,# syntax passed to server nullable is always 1 only data types numeric and decimal have precision/scale argument only protocols "tcp" and "unix" and database type "postgresql" are supported operator not allowed in variable definition out of memory pointer to pointer is not supported for this data type pointers to varchar are not implemented subquery in FROM must have an alias syntax error syntax error in EXEC SQL INCLUDE command too many levels in nested structure/union definition too many nested EXEC SQL IFDEF conditions type "%s" is already defined type name "string" is reserved in Informix mode unmatched EXEC SQL ENDIF unrecognized data type name "%s" unrecognized descriptor item code %d unrecognized token "%s" unrecognized variable type code %d unsupported feature will be passed to server unterminated /* comment unterminated bit string literal unterminated hexadecimal string literal unterminated quoted identifier unterminated quoted string using unsupported DESCRIBE statement using variable "%s" in different declare statements is not supported variable "%s" is hidden by a local variable variable "%s" is hidden by a local variable of a different type variable "%s" is neither a structure nor a union variable "%s" is not a pointer variable "%s" is not a pointer to a structure or a union variable "%s" is not an array variable "%s" is not declared variable "%s" must have a numeric type zero-length delimited identifier Project-Id-Version: PostgreSQL 9.6
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2016-10-25 16:32-0300
PO-Revision-Date: 2018-06-25 09:00+0200
Last-Translator: Euler Taveira de Oliveira <euler@timbira.com>
Language-Team: Brazilian Portuguese <pgbr-dev@listas.postgresql.org.br>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n>1);
 
Se nenhum arquivo de saída for especificado, o nome é formado adicionando .c ao
nome do arquivo de entrada, após remover .pgc se presente.
 
Relate erros a <pgsql-bugs@postgresql.org>.
   --regression   executa em modo de teste de regressão
   -?, --help     mostra essa ajuda e termina
   -C mode        define o modo de compatilidade; MODE pode ser um de
                 "INFORMIX", "INFORMIX_SE"
   -D SÍMBOLO     define SÍMBOLO
   -I DIRETÓRIO   procura DIRETÓRIO para incluir arquivos
   -V, --version  mostra informação sobre a versão e termina
   -c             gera automaticamente código C a partir do código SQL embutido;
                 isso afeta o EXEC SQL TYPE
   -d             gera saída de depuração do analisador
   -h             analisa um arquivo de cabeçalho, essa opção inclui a opção "-c"
   -i             analisa arquivos de cabeçalho do sistema também
   -o ARQUIVO     grava resultado no ARQUIVO
   -r OPÇÃO       especifica comportamento em tempo de execução; OPÇÃO pode ser:
                 "no_indicator", "prepare", "questionmarks"
   -t             habilita o auto efetivação de transações
 %s em ou próximo a "%s" %s é o pré-processador SQL embutido do PostgreSQL para programas em C.

 %s, the pré-processador C embutido do PostgreSQL, versão %d.%d.%d
 %s: não pôde localizar meu próprio caminho executável
 %s: não pôde abrir arquivo "%s": %s
 %s: nenhum arquivo de entrada foi especificado
 %s: suporte a depuração do analisador (-d) não está disponível
 opção AT não é permitida no comando CLOSE DATABASE opção AT não é permitida no comando CONNECT opção AT não é permitida no comando DISCONNECT opção AT não é permitida no comando SET CONNECTION opção AT não é permitida no comando TYPE opção AT não é permitida no comando VAR opção AT não é permitida no comando WHENEVER COPY FROM STDIN não está implementado CREATE TABLE AS não pode especificar INTO ERRO:  EXEC SQL INCLUDE ... pesquisa inicia aqui:
 Erro: caminho de inclusão "%s/%s" é muito longo na linha %d, ignorando
 Opções:
 SHOW ALL não está implementado Tente "%s --help" para obter informações adicionais.
 Soquetes de domínio Unix trabalham somente com "localhost" e não com "%s" Uso:
  %s [OPÇÃO]... ARQUIVO...

 AVISO:  matrizes do indicadores não são permitidas na entrada não pôde abrir arquivo de inclusão "%s" na linha %d não pôde remover arquivo de saída "%s"
 cursor "%s" não existe cursor "%s" foi declarado mas não foi aberto cursor "%s" já está definido descritor "%s" não existe item do cabeçalho do descritor "%d" não existe item do descritor "%s" não pode ser definido item do descritor "%s" não está implementado fim da lista de pesquisa
 esperado "://", encontrado "%s" esperado "@" ou "://", encontrado "%s" esperado "@", encontrado "%s" esperado "postgresql", encontrado "%s" comando incompleto variável "%s" possui formato incorreto indicador para matriz/ponteiro tem de ser matriz/ponteiro indicador para tipo de dados simples tem que ser simples indicador para struct tem que ser struct variável de indicador "%s" está escondida por uma variável local variável de indicador "%s" está escondida por uma variável local de um tipo diferente variável de indicador deve ter um tipo inteiro inicilização não é permitido no comando EXEC SQL VAR inicializador não é permitido na definição do tipo erro interno: estado inacessível; por favor relato isso a <pgsql-bugs@postgresql.org> especificação de intervalo não é permitida aqui cadeia de bits inválida tipo de conexão inválido: %s tipo de dado inválido key_member é sempre 0 faltando "EXEC SQL ENDIF;" faltando identificador no comando EXEC SQL IFDEF faltando identificador no comando EXEC SQL IFDEF faltando identificador no comando EXEC SQL UNDEF faltando correspondente "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" mais de um EXEC SQL ELSE matrizes multidimensionais não são suportadas matrizes multidimensionais para tipo de dados simples não são suportadas matrizes multidimensionais para estruturas não são suportadas ponteiros com múltiplos níveis (mais do que 2 níveis) não são suportados; %d nível encontrado ponteiros com múltiplos níveis (mais do que 2 níveis) não são suportados; %d níveis encontrados comentários /* ... */ aninhados matrizes aninhadas não são suportadas (exceto cadeia de caracteres) sintaxe LIMIT #,# que não é suportada foi enviada ao servidor nullable é sempre 1 somente os tipos de dados numeric e decimal possuem argumento de precisão/escala somente os protocolos "tcp" e "unix" e tipo banco de dados "postgressql" sãosuportados operador não é permitido na definição da variável sem memória ponteiro para ponteiro não é suportado para esse tipo de dado ponteiros para varchar não estão implentados subconsulta no FROM deve ter um aliás erro de sintaxe erro de sintaxe no comando EXEC SQL INCLUDE muitos níveis em definição aninhada de estrutura/união muitas condições EXEC SQL IFDEF aninhadas tipo "%s" já está definido nome de tipo "string" é reservado no modo Informix EXEC SQL ENDIF não tem correspondente nome do tipo dados "%s" é desconhecido código do item do descritor %d é desconhecido informação desconhecida "%s" tipo de código de variável %d é desconhecido funcionalidade não suportada será enviada ao servidor comentário /* não foi terminado cadeia de bits não foi terminada cadeia de caracteres hexadecimal não foi terminada identificador entre aspas não foi terminado cadeia de caracteres entre aspas não foi terminada utilizando comando DESCRIBE que não é suportado utilizar variável "%s" em comandos de declaração diferentes não é suportado variável "%s" está escondida por uma variável local variável "%s" está escondida por uma variável local de um tipo diferente variável "%s" não é nem uma estrutura nem uma união variável "%s" não é um ponteiro variável "%s" não é um ponteiro para uma estrutura ou uma união variável "%s" não é uma matriz variável "%s" não foi declarada variável "%s" deve ter um tipo númerico identificador delimitado tem tamanho zero 