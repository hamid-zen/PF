
let rec inserer_tete x ll =
	match ll with 
		| [] -> []
		| l::rl -> (([x]@l)::inserer_tete x rl);;

let rec parties l = 
	match l with 
		| [] -> []
		| x::[] -> [[]; [x]]
		| x::r -> let parties_reste = parties r
					in (parties_reste@(inserer_tete x parties_reste));;

let rec mult x l = 
	match l with
		| [] -> []
		| e::r -> (x::[e])::(mult x r);;
(*
let rec sous_listes n l =
	match n,l with
		0,_ -> [[]]
		| _,[] -> []
		| n,x::r -> (inserer_tete x (sous_listes (n-1) r))@(sous_listes n r);;

		sous_listes 3 [1; 2; 3; 4];;*)
	