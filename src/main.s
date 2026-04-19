.segment "CODE"

kbdin:
lda $d011
bpl kbdin
lda $d010

prntchr:
jsr $ffef
jmp kbdin
