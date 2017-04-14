/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %%deklarasi list dengan type data integer

predicates
  length_of(list,integer) - procedure (i,o) %%predikat dengan parameter (list,integer) yang merupakan tipe data yang telah dideklarasikan dalam domains

clauses
  length_of([], 0). %% apabila predikat [] atau list kosong maka nilainya 0
  length_of([_|T],L):- %%apabila predikat [_|T] atau list tersebut memiliki head atau tail 
	length_of(T,TailLength), %%maka panjang list dihitung dari banyaknya tail ditambah dengan head
	L = TailLength + 1.

goal
  length_of([1,2,3],L). %%tujuannya mencari length_of
  			%% head -> 1
  			%% tail -> 2 dan 3
  			%%sehinga length_of=taillength+1
  			%%		= 2 + 1
  			%%		= 3
  			%% sehingga solutionnya adala L = 3
  			
