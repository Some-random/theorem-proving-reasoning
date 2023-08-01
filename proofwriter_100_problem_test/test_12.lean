universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Big : obj → Prop

axiom T1 : Nice Bear
axiom T2 : Likes Bear Cat
axiom T3 : Sees Bear Dog
axiom T4 : Eats Cat Bear
axiom T5 : Cold Cat
axiom T6 : Sees Cat Bear
axiom T7 : Eats Dog Bear
axiom T8 : Eats Dog Lion
axiom T9 : Blue Dog
axiom T10 : Sees Dog Cat
axiom T11 : Eats Lion Cat
axiom T12 : Cold Lion
axiom T13 : Likes Lion Bear
axiom T14 : Likes Lion Cat

axiom R1 : ∀ x : obj, Big x → Eats x Dog
axiom R2 : ∀ x : obj, Cold x → Nice x
axiom R3 : ∀ x : obj, Blue x ∧ Sees x Bear → Sees x Dog
axiom R4 : ∀ x : obj, Eats x Dog → Nice Dog
axiom R5 : ∀ x : obj, Blue x ∧ Sees x Dog → Big x
axiom R6 : ∀ x : obj, Eats x Bear ∧ Nice x → Blue x
axiom R7 : ∀ x : obj, Eats x Bear ∧ Sees x Dog → Big Dog

theorem cat_eats_dog : Eats Cat Dog :=
begin
end


theorem not_cat_eats_dog : ¬ Eats Cat Dog :=
begin
end
