DOMAINS
 nama,jender,pekerjaan,benda,alasan,zat = symbol %parameter dari nama, jender,pekerjaan,benda,alasan,zat.
 umur=integer %parameter dari umur 

PREDICATES
 nondeterm orang(nama, umur, jender, pekerjaan) %predikat orang memiliki argumen berupa nama, umur, jender, perkerjaan  
 nondeterm selingkuh(nama, nama) %perdikat selingkuh memiliki argumen nama, nama
 terbunuh_dengan(nama, benda) %predikate terbunuh_dengan memiliki argumen nama, benda
 terbunuh(nama) %predikate terbunuh memiliki argumen nama
 nondeterm pembunuh(nama) %predikate pembunuh memiliki argumen nama
 motif(alasan) %predikat motif memiliki argumen alasan
 ternodai(nama, zat) %predikat ternodai memiliki argumen nama,zat
 milik(nama, benda) %predikat milik memiliki argumen nama,benda
 nondeterm cara_kerja_mirip(benda, benda) %predikat cara_kerja_mirip memiliki argumen benda,benda
 nondeterm kemungkinan_milik(nama, benda) %predikate kemungkinan_milik memiliki argumen nama,benda
 nondeterm dicurigai(nama) %predikat dicurigai memiliki argumen nama. 
 
 clauses
 orang(budi,55,m,tukang_kayu). %budi adalah seorang tukang kayu berumur 55 dan berjender m
 orang(aldi,25,m,pemain_sepak_bola). %aldi adalah seorang pemain sepak bola berumur 25 dan berjender m 
 orang(aldi,25,m,tukang_jagal).%aldi adalah seorang tukang jagal berumur 25 dan berjender m
 orang(joni,25,m,pencopet).%joni adalah seorang pencopet berumur 25 dan berjender m
 
 selingkuh(ina,joni). %ina selingkuh dengan joni
 selingkuh(ina,budi). %ina selingkuh dengan budi
 selingkuh(siti,joni). %siti selingkuh dengan joni
 
 terbunuh_dengan(siti,pentungan). %siti terbunuh dengan pentungan
 terbunuh(siti). %siti terbunuh
 
 motif(uang). %motif uang
 motif(cemburu). %motif cemburu
 motif(dendam). %motif dendam
 
 ternodai(budi, darah). %budi ternodai darah
 ternodai(siti, darah). %siti ternodai darah
 ternodai(aldi, lumpur). %aldi ternodai lumpur
 ternodai(joni, coklat). %joni ternodai coklat
 ternodai(ina, coklat). %ina ternodai coklat
 
 milik(budi,kaki_palsu). %budi memiliki kaki palsu
 milik(joni,pistol). % joni memiliki pistol 
 
 
 cara_kerja_mirip(kaki_palsu, pentungan). %kaki palsu cara kerj mirip dengan pentungan
 cara_kerja_mirip(balok, pentungan). %balok cara kerja mirip dengan pentungan	
 cara_kerja_mirip(gunting, pisau). %gunting cara kerja mirip dengan pisau
 cara_kerja_mirip(sepatu_bola, pentungan). %sepatu bola cara kerja mirip dengan pentungan
 	
	 kemungkinan_milik(X,sepatu_bola):- %x kemungkinan memiliki sepatu bola jika x adalah seorang pemain sepak bola.
	 orang(X,_,_,pemain_sepak_bola).
 	 kemungkinan_milik(X,gunting):- % x kemungkinan memiliki gunting jika x adalah seorang pekerja salon.
	 orang(X,_,_,pekerja_salon). 
	 kemungkinan_milik(X,Benda):- % x kemungkinan memailiki benda jika x miliki benda tersebut.
	 milik(X,Benda).
		
	dicurigai(X):- %x dicurigai jika siti terbunuh dengan senjata atau benda tersebut cara kerjanya miripi senjata atau x kemungkinan memiliki benda tersebut.
	terbunuh_dengan(siti,Senjata) ,
	cara_kerja_mirip(Benda,Senjata) ,
	kemungkinan_milik(X,Benda).
	
	
	dicurigai(X):- %x dicurigai jika cemburu motifnya atau x adalah seseorang berjender m atau siti selingkuh dengan x.
	motif(cemburu),
	orang(X,_,m,_),
	selingkuh(siti,X).
	
	
	dicurigai(X):- % x dicurigai jika cemburu motifnya atau x adalah seorang bergender f atau x selingkuh dengan laki - laki atau siti selingkuh dengan laki - laki.
	motif(cemburu),
	orang(X,_,f,_),
	selingkuh(X,Lakilaki),
	selingkuh(siti,Lakilaki).
	
	dicurigai(X):-% x dicurigai jika uang motifnya atau x adalah seorang pencopet .
	motif(uang),
	orang(X,_,_,pencopet).
	
	pembunuh(Pembunuh):- %pembunuh adalah pembunuh jika seseorang tersebut adalah pembunuh atau terbunuh adalah terbunuh bukan bunuh diri atau pembunuh tersebut dicurigai
	orang(Pembunuh,_,_,_), %atau pembunuh tersebut ternodai zat atau terbenuh karena ternodai zat.
	terbunuh(Terbunuh),
	Terbunuh <> Pembunuh, 
	dicurigai(Pembunuh),
	ternodai(Pembunuh,Zat),
	ternodai(Terbunuh,Zat).
GOAL
 pembunuh(X). % jadi tujuan akhirnya adalah siapa pembunuhnya? solutionnya adalah budi. karena budi adalah seorang tukang kayu. budi memiliki kaki palsu . cara kerja kaki palsu budi mirip 
% dengan pentungan. dan siti terbunuh dengan kaki palsu budi yang cara kerjanya mirip dengan pentungan. dan budi ternodai dengan darah. budi membunuh siti karena motifnya adalah cemburu karena 
%siti berselingkuh dengan joni. sehingga solutionnya pembunuhnya ada budi karena sesuai dengan clauses tersebut atau fakta - fakta dan aturan yang telah ada.