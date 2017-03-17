DOMAINS
merek,warna = symbol %merupakan parameter dari merk dan warna
usia = byte  %merupakan parameter dari usia
harga, kilometer = ulong %merupakan parameter dari harga dan kilometer

PREDICATES
nondeterm mobil(merek,kilometer,usia,warna,harga) %dalam predicates ini menggunakan nondeterm 
			%yang artinya dapat memiliki lebih dari satu jawaban.
			%dimana dalam predicates ini dideklarasikan mobil adalah sebuah predikat
			%merk,kilometer,usia,warna,harga merupakan argumen yang terdapat dalam
			%predicates.

CLAUSES 
mobil(atoz,130000,3,merah,120000000). %berisikan bagian aturan atau fakta dimana pada bagian 
mobil(karimun,90000,4,silver,100000000). %ini untuk mencari sebuah jawaban. 
mobil(ceria,8000,1,hitam,75000000). 

GOAL
mobil(karimun, 90000,4, silver, 100000000). %berisikan tujuan akhir dalam visual prolog, dimana 
				%terdapat pertanyaan. apakah terdapat mobil dengan merk karimun kilometer 90000
				%usia 4 berwarna silver dan harga 100000000.
				%kemudian akan dicari dalam clause jika terdapat seperti yang
				%diminta pada goals maka akan terjawab "yes"