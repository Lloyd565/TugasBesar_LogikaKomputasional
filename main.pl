pokemon(charmander).
pokemon(squirtle).
pokemon(pidgey).
pokemon(charmeleon).
pokemon(wartortle).
pokemon(pikachu).
pokemon(geodude).
pokemon(snorlax).
pokemon(articuno).

rarity(charmander, common).
rarity(squirtle, common).
rarity(pidgey, common).
rarity(charmeleon, common).
rarity(wartortle, common).
rarity(pikachu, rare).
rarity(geodude, rare).
rarity(snorlax, epic).
rarity(articuno, legendary).

pilihPokemon1(PokemonPertama):-
    write('Pilih Pokemon Pertama kamu : '), 
    read(Pokemon1),
    cekPokemon1(Pokemon1,PokemonPertama).

cekPokemon1(Pokemon1,PokemonPertama):-
    pokemon(Pokemon1), rarity(Pokemon1, common),
    PokemonPertama=Pokemon1.

cekPokemon1(Pokemon1,PokemonPertama):-
    \+ pokemon(Pokemon1),
    write('Kamu ga bisa pilih pokemon ini, '),write(Pokemon1),write(' bukan Pokemon'),
    nl,
    nl,
    pilihPokemon1(PokemonPertama).

cekPokemon1(Pokemon1,PokemonPertama):-
    pokemon(Pokemon1), \+ rarity(Pokemon1, common),
    write('Kamu ga bisa pilih pokemon ini, '), write(Pokemon1), write(' bukan common'),
    nl,
    nl,
    pilihPokemon1(PokemonPertama).

pilihPokemon2(PokemonKedua,PokemonPertama):-
    write('Pilih Pokemon Kedua kamu : '), 
    read(Pokemon2),
    cekPokemon2(Pokemon2,PokemonKedua,PokemonPertama).

cekPokemon2(Pokemon2,PokemonKedua,PokemonPertama):-
    pokemon(Pokemon2), rarity(Pokemon2, common),
    Pokemon2\==PokemonPertama,
    PokemonKedua=Pokemon2.

cekPokemon2(Pokemon2,PokemonKedua,PokemonPertama):-
    \+ pokemon(Pokemon2),
    write('Kamu ga bisa pilih pokemon ini, '),write(Pokemon2),write(' bukan Pokemon'),
    nl,
    nl,
    pilihPokemon2(PokemonKedua,PokemonPertama).

cekPokemon2(Pokemon2,PokemonKedua,PokemonPertama):-
    pokemon(Pokemon2), \+ rarity(Pokemon2, common),
    write('Kamu ga bisa pilih pokemon ini, '),write(Pokemon2),write(' bukan Pokemon'),
    nl,
    nl,
    pilihPokemon2(PokemonKedua,PokemonPertama).

cekPokemon2(Pokemon2,PokemonKedua,PokemonPertama):-
    pokemon(Pokemon2), rarity(Pokemon2, common),
    Pokemon2==PokemonPertama,
    write('Pokemon sudah dipilih, mohon pilih yang lain'),
    nl,
    nl,
    pilihPokemon2(PokemonKedua,PokemonPertama).

start:- 
    write('Masukkan nama kamu : '), 
    read(NamaPemain),
    write('Halo '),
    write(NamaPemain),
    write(', Selamat Bermain!'),
    nl,
    nl,
    nl,
    write('Pilih 2 Pokemon'),
    nl,
    write('Charmander'),
    nl,
    write('Squirtle'),
    nl,
    write('Pidgey'),
    nl,
    write('Charmeleon'),
    nl,
    write('Wartortle'),
    nl,
    write('Pikachu'),
    nl,
    write('Geodude'),
    nl,
    write('Snorlax'),
    nl,
    write('Articuno'),
    nl,
    nl,
    pilihPokemon1(PokemonPertama),
    nl,
    pilihPokemon2(PokemonKedua,PokemonPertama),
    nl,
    write('Pokemon Pertama kamu : '),
    write(PokemonPertama),
    nl,
    write('Pokemon Kedua kamu : '),
    write(PokemonKedua).