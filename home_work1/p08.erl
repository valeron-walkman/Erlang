% задание 8(p08) удаляем последовательно следующие дубликаты:

-module(p08).
-export([compress/1]).


% создаем функцию, в которой повторяются одинаковые элементы, она возвращает такую же функцию но без повторений элементов в списке:
compress([H|[H|T]]) ->  
   compress([H|T]);     

% когда список преобретает вид без повторных элементов то функция возвращает этот же список:
compress([H|T]) ->       
   [H|compress(T)];     

% если список пуст - выводим underfined:
compress([]) ->         
   [].     
