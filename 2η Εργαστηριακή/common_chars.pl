common_genre(X,Y):-
	genre(X,A),genre(Y,A),
	genre(X,B),genre(Y,B),
	genre(X,C),genre(Y,C),
	genre(X,D),genre(Y,D),
	A \= B,B \= C,A \= C,A \= D,B \= D,C \= D,X \= Y.
	% Χ\=Υ equals to (not X) = Y

less_common_genre(X,Y):-
	genre(X,A),genre(Y,A),
	genre(X,B),genre(Y,B),
	genre(X,C),genre(Y,C),
	A \= B,B \= C,A \= C,
	X \= Y.

two_common_genre(X,Y):-
	genre(X,A),genre(Y,A),
	genre(X,B),genre(Y,B),
	A \= B, X \= Y.

least_common_genre(X,Y):-
	genre(X,A),genre(Y,A),
	X \= Y.

same_director(X,Y):-
	director(Y,F1),director(X,F2),F1==F2,X \= Y.

% Common plot from 1-5 same keywords
same_plot(X,Y):-
	plot_keywords(X,A),plot_keywords(Y,A),
	plot_keywords(X,B),plot_keywords(Y,B),
	plot_keywords(X,C),plot_keywords(Y,C),
	plot_keywords(X,D),plot_keywords(Y,D),
	plot_keywords(X,E),plot_keywords(Y,E),
	A \= B, A \= C, A \= D, A \= E, B \= C, B \= D, B\= E,
	C \= D, C \= E, D \= E, X \= Y.

very_similar_plot(X,Y):-
	plot_keywords(X,A),plot_keywords(Y,A),
	plot_keywords(X,B),plot_keywords(Y,B),
	plot_keywords(X,C),plot_keywords(Y,C),
  	plot_keywords(X,D),plot_keywords(Y,D),
  	A \= B,B \= C,A \= C,A \= D,B \= D,C \= D,X \= Y.

similar_plot(X,Y):-
	plot_keywords(X,A),plot_keywords(Y,A),
	plot_keywords(X,B),plot_keywords(Y,B),
	plot_keywords(X,C),plot_keywords(Y,C),
  	A \= B, B \= C, A \= C, X \= Y.

less_same_plot(X,Y):-
	plot_keywords(X,A), plot_keywords(Y,A),
	plot_keywords(X,B),plot_keywords(Y,B),
	A \= B, X \= Y.

least_same_plot(X,Y):-
	plot_keywords(X,A), plot_keywords(Y,A),X \= Y.


same_actors(X,Y):-
	actor_1_name(X,F),actor_1_name(Y,F),actor_2_name(X,S),actor_2_name(Y,S),actor_3_name(X,Z),actor_3_name(Y,Z),X \= Y;
	actor_1_name(X,F),actor_1_name(Y,F),actor_2_name(X,S),actor_3_name(Y,S),actor_3_name(X,Z),actor_2_name(Y,Z),X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_2_name(X,S),actor_1_name(Y,S),actor_3_name(X,Z),actor_3_name(Y,Z),X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_2_name(X,S),actor_2_name(Y,S),actor_3_name(X,Z),actor_1_name(Y,Z),X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_2_name(X,S),actor_1_name(Y,S),actor_3_name(X,Z),actor_2_name(Y,Z),X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_2_name(X,S),actor_3_name(Y,S),actor_3_name(X,Z),actor_1_name(Y,Z),X \= Y.

same_actors_2(X,Y):-
	actor_1_name(X,F),actor_1_name(Y,F),actor_2_name(X,S),actor_2_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_1_name(Y,F),actor_3_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_1_name(Y,F),actor_2_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_1_name(Y,F),actor_3_name(X,S),actor_2_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_3_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_3_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_2_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F),actor_2_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_3_name(X,S),actor_2_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_3_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_2_name(X,S),actor_2_name(Y,S),F \=S,X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F),actor_2_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_2_name(Y,F),actor_3_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_2_name(Y,F),actor_3_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_1_name(Y,F),actor_3_name(X,S),actor_3_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_1_name(Y,F),actor_3_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_3_name(Y,F),actor_3_name(X,S),actor_1_name(Y,S),F \=S,X \= Y;
	actor_2_name(X,F),actor_3_name(Y,F),actor_3_name(X,S),actor_2_name(Y,S),F \=S,X \= Y.

same_actors_3(X,Y):-
	actor_1_name(X,F),actor_1_name(Y,F), X \= Y;
	actor_1_name(X,F),actor_2_name(Y,F), X \= Y;
	actor_1_name(X,F),actor_3_name(Y,F), X \= Y;
	actor_2_name(X,S),actor_1_name(Y,S), X \= Y;
	actor_2_name(X,S),actor_2_name(Y,S),X \= Y;
	actor_2_name(X,S),actor_3_name(Y,S),X \= Y;
	actor_3_name(X,S),actor_1_name(Y,S),X \= Y;
	actor_3_name(X,S),actor_2_name(Y,S),X \= Y;
	actor_3_name(X,S),actor_3_name(Y,S),X \= Y.

same_language(X,Y):-
  language(X,F), language(Y,F), X \= Y.

same_status(X,Y):-
  status(X,F),status(Y,F),X\=Y.

one_common_production(X,Y):-
  production_companies(X,F,L),
  production_companies(Y,F,L),
  X\=Y.

same_country(X,Y):-
	country(X,F),country(Y,F), X\=Y.

one_common_production_countries(X,Y):-
	production_countries(X,F,L),
	production_countries(Y,F,L),
	X\=Y.

two_common_production_countries(X,Y):-
  	production_countries(X,F,L), production_countries(Y,F,L),
	production_countries(X,F1,L1), production_countries(Y,F1,L1),
	F\=F1,L\=L1,
	X\=Y.

black_and_white(X,Y):-
	plot_keywords(X,'black and white'), plot_keywords(Y,'black and white'),X\=Y.

%In to extract the first N characters from a string.
firstKCharacters(_, 0, []).
firstKCharacters([X|L1], K, [X|L]):-
    K > 0,
    Km1 is K - 1,
    firstKCharacters(L1, Km1, L).

%%to convert year to int
string_to_Int(Str,Num,X):-
	string_to_list(Str,L),
	firstKCharacters(L,Num,K),
	string_to_list(D,K),
	atom_number(D,X).

same_release_date(X,Y):-
	release_date(X,K1),
	release_date(Y,K2),
	string_to_Int(K1,4,Int1),
	string_to_Int(K2,4,Int2),
	Res1 is Int1-Int2,
	Res is abs(Res1),
	Res =< 15,
	X\=Y.

similar_release_date(X,Y):-
		release_date(X,K1),
		release_date(Y,K2),
		string_to_Int(K1,4,Int1),
		string_to_Int(K2,4,Int2),
		Res1 is Int1-Int2,
		Res is abs(Res1),
		Res =< 30,
		X\=Y.

similar_duration(X,Y):-
	duration(X,Int1),
	duration(Y,Int2),
	Res1 is Int1-Int2,
	Res is abs(Res1),
	Res =< 60,
	X\=Y.

same_spoken_language(X,Y):-
	spoken_languages(X,K1,L1),
	spoken_languages(Y,K1,L1),
	X\=Y.

check(K1,K2):-
	atom_number(K1,N1),
	atom_number(K2,N2),
	N2> N1-0.5.

similar_num_voted_users(X,Y):-
	num_voted_users(X,_),
	num_voted_users(Y,N2),
	N2>1000,
	X\=Y.

same_vote_average(X,Y):-
	vote_average(X,N1),
	vote_average(Y,N2),
	N2> N1-0.5,
	X\=Y.

similar_vote_average(X,Y):-
	vote_average(X,N1),
	vote_average(Y,N2),
	N2> N1-1,
	X\=Y.


similar_vote(X,Y):-
	similar_num_voted_users(X,Y),
	similar_vote_average(X,Y),
	X\=Y.

same_vote(X,Y):-
	similar_num_voted_users(X,Y),
	same_vote_average(X,Y),
	X\=Y.
