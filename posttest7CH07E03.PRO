/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %%mendeklarasikan list dengan tipe data integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %%predikat length_of dengan parameter(list,integer,integer)

clauses %%merupakan atyran
  length_of([], Result, Result). %%apabila list dalam keadaan kosong maka result pertama yang sebagai hasil akan bernilai sama dengan result kedua yang memiliki posisi sebagai inputan 
  length_of([_|T],Result,Counter):- %%counter memiliki fungsi sebagai inputan dimana nilai yang akan diinputkan akan ditambah dengan nilai saat perhitungan panjang list menggunakan head
	NewCounter = Counter + 1, %%counter yang akan diinput akan ditambah 1 untuk mengganti nilai head agar mendapat nilai panjang list
	length_of(T, Result, NewCounter).

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */ %%tujuannya mencari length_of
  							%% head -> 1
  							%% tail -> 2 dan 3
  							%%counter ->0
  							%%new counter = counter +1
  							%%		= 0 + 1 = 1
  							%%length_of = lengthtail + counter
  							%%		= 2 + 1
  							%%		= 3
  							%% sehingga tujuan dari length_of adalah 3 