DOMAINS
kali,jumlah = integer % merupakan berupa isi dari parameter kali dan jumlah

PREDICATES
tambahkan(jumlah,jumlah,jumlah) %berisikan nama predikat tambah dengan argumen jumlah,jumlah,jumlah
kalikan(kali,kali,kali) %berisikan nama predikat dengan argumen kali kali.

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y. %berisikan aturan dimana tambahkan(x,y,jumlah):-jumlah=x+y
kalikan(X,Y,Kali):-Kali=X*Y.        %artinya x tambah y sama dengan jumlah jika maka jumlah sama denagn x + y juga.
				%kalikan (x,y,kali);-kl=ali=x*y artinya x kalikan y sama dengan hasil kali jika maka hasil kali sama dengan x * y. 
GOAL
tambahkan(32,54,Jumlah). %berisikan tujuan akhir dimana tujuan akhirnya adalah menambahkan 32 dengan 54 dan berapa hasilnya
 			%setelah dirun keluar solution bahwa jawabannya adalah 86