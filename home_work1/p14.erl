% задание 14(p14) пишем дубликатор всех элементов входящего списка

-module(p14).
-export([duplicate/1]).


% если список пуст - возвращаем пустой список:
duplicate([]) -> [];

% созаем функцию, которая дублирует при каждой итерации элемент в голове списка, при этом сама функция идет на уменьшение начиная с головы:
duplicate([H|T]) -> [H,H | duplicate(T)].
