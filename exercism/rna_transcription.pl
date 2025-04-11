rna_transcription("G","C").
rna_transcription("C","G").
rna_transcription("T","A").
rna_transcription("A","U").

complemento(71,67).
complemento(67,71).
complemento(84,65).
complemento(65,85).

rna_transcription(dna,rna) :- string_codes(dna,d), string_codes(rna,r), rt(d,r).

rt([c1|dna],[c2|rna]) :- complemento(c1,c2), rt(dna,rna).
rt([],[]).
