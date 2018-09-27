(*---------*)
(*--- 1 ---*)
(*---------*)

fun third_element (L) = hd(tl(tl(L)));

(*---------*)
(*--- 2 ---*)
(*---------*)

fun remove_second(L) =
if L=[] then []
else
    hd(L)::tl(tl(L))
;


(*---------*)
(*--- 3 ---*)
(*---------*)

fun big_small(a:int,b:int,c:int) =
    let
        val array =[];
    in
        if (a < b) then
            if (b < c) then
                a::c::array 
            else if (c < a) then
                c::b::array
            else
                a::b::array
        else if (b < a) then
            if (c < b) then
                c::a::array 
            else if(a < c) then
                b::c::array
            else
                b::a::array
        else
            a::b::array
    end;

big_small(5,7,3);


(*---------*)
(*--- 4 ---*)
(*---------*)

fun dupList nil = nil
  | dupList(x::xr) = x :: x :: dupList xr;

(*---------*)
(*--- 5 ---*)
(*---------*)

fun foldL F y nil = y
    | foldL F y (x::xr) = foldL F (F(x,y)) xr;

fun poly_mult(M:real list, nil) = nil
    | poly_mult(nil, N) = nil
    | poly_mult(m::mr, N) = foldL(fn(x,a) => x * a) m N::poly_mult(mr,N);


(*---------*)
(*--- 6 ---*)
(*---------*)

fun map(f,nil) = nil
    | map (f,x::xr) = f(x)::map(f,xr);

map(fn(x) => abs(real(x)), [1,2,3]);

(*---------*)
(*--- 7 ---*)
(*---------*)

exception emptylist
fun reduce(F,nil) = raise emptylist
    | reduce(F,[a]) = a
    | reduce(F,x::xr) = F(x,reduce(F,xr))
;
reduce(fn(x,a) => if x > a then x else a , [8.1,8.3,8.05]);

(*---------*)
(*--- 8 ---*)
(*---------*)

fun filter(p,nil) = nil
    | filter(p,x::xr) =
    if p(x) then x::filter(p,xr)
    else filter(p,xr);

filter(fn x => x >= 1.0 andalso x <= 2.0, [0.1,0.25,1.25,1.5,2.1,2.3]);
