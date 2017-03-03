predicates
  nondeterm tiket(symbol,symbol)
  nondeterm person(symbol)
  nondeterm film(symbol)
  nondeterm menonton (symbol,symbol)
clauses
tiket(X,Y):-
	person(X),
	film(Y),
	menonton(symbol,symbol).
	
    person(iki).
    person(tini).
    person(ani).
    person(ayu).
    person(sri).
    person(bety).
     
    film(londen_love_story_2).
    film(surga_yang_tak_dirindukan_2).
    film(max_steel).
    film(rings).
    
    menonton(iki,london_love_story_2).
    menonton(tini,maxx_steel).
    menonton(sri,rings).
    menonton(iki,rings).
    
         
 goal
  menonton(iki,Y).