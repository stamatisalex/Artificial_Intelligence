find_similar_movies_1(X,Y):-
  least_same_plot(X,Y),
  least_common_genre(X,Y),
  X\=Y.

find_similar_movies_2(X,Y):-
  least_same_plot(X,Y),
  least_common_genre(X,Y),
  similar_vote(X,Y),
  same_spoken_language(X,Y),
  X \= Y.

find_similar_movies_3(X,Y):-
  least_same_plot(X,Y),
  least_common_genre(X,Y),
  similar_vote(X,Y),
  same_spoken_language(X,Y),
  similar_release_date(X,Y),
  X \= Y.

find_similar_movies_4(X,Y):-
  less_same_plot(X,Y),
  least_common_genre(X,Y),
  similar_vote(X,Y),
  same_spoken_language(X,Y),
  similar_release_date(X,Y),
  X \= Y.

find_similar_movies_5(X,Y):-
  less_same_plot(X,Y),
  least_common_genre(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  similar_release_date(X,Y),
  X \= Y.

find_similar_movies_6(X,Y):-
  similar_plot(X,Y),
  least_common_genre(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  similar_release_date(X,Y),
  X \= Y.

find_similar_movies_7(X,Y):-
  similar_plot(X,Y),
  least_common_genre(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  similar_release_date(X,Y),
  similar_duration(X,Y),
  X \= Y.

find_similar_movies_8(X,Y):-
  similar_plot(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  two_common_genre(X,Y),
  similar_release_date(X,Y),
  similar_duration(X,Y),
  X \= Y.


find_similar_movies_9(X,Y):-
  similar_plot(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  two_common_genre(X,Y),
  similar_release_date(X,Y),
  similar_duration(X,Y),
  same_actors_3(X,Y),
  X \= Y.

find_similar_movies_10(X,Y):-
  very_similar_plot(X,Y),
  same_vote(X,Y),
  same_spoken_language(X,Y),
  two_common_genre(X,Y),
  similar_duration(X,Y),
  same_actors_3(X,Y),
  same_director(X,Y),
  same_release_date(X,Y),
  one_common_production(X,Y),
  X \= Y.
