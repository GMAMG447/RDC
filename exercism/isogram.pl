/*
  
  Determine if a word or phrase is an isogram.
  
  An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.
  
  Examples of isograms:
  
  lumberjacks
  background
  downstream
  six-year-old
  The word isograms, however, is not an isogram, because the s repeats.

  Es cierto si la cadena contiene caracteres diferentes
  excepto los espacios en blanco y guiones que se podran repetir.
*/

/*
quita_blancos(Lista,R)
  es cierto si R unifica con la lista de numeros que
  que contiene lista, eliminando las ocurrencias de 
  32 y 45 (" " y "-").

*/

/*
string_lower(+String, string)
string_codes(String,codes)
*/

blanco(32).
blanco(45).
quita_blancos(L,R) :- exclude(blanco,C,R), string_lower(L,Low), string_codes(Low,C).

isogram(S) :- all_distinct(R), quita_blancos(S,R).






