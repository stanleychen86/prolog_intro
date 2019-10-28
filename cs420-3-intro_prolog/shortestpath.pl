
shortest_path(from,to,graph,shortest_p):-
        findall(Path,find_path_2(from,to,graph,Path), paths),paths = [first_p|other_p],length(first_p,L),find_shortest(other_p,first_p,L,shortest_p).
find_shortest([],shortest_p,_,shortest_p).
find_shortest([path1|paths],curr_shortest_p,current_l,shortest_p):-
        length(path1,len_1), len_1 < current_l, !, find_shortest(paths,path1,len_1,shortest_p).
find_shortest([_|paths],curr_shortest_p,current_l,shortest_p):-
        find_shortest(paths,curr_shortest_p,current_l,shortest_p).