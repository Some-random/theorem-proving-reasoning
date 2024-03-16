universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Lion : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop

axiom T1 : Eats Bear Squirrel
axiom T2 : Cold Bear
axiom T3 : Rough Bear
axiom T4 : Visits Bear Lion
axiom T5 : Eats Cat Lion
axiom T6 : Likes Lion Cat
axiom T7 : Visits Lion Bear
axiom T8 : Eats Squirrel Lion
axiom T9 : Cold Squirrel
axiom T10 : Rough Squirrel
axiom T11 : Likes Squirrel Bear
axiom T12 : Visits Squirrel Lion

axiom R1 : ∀ x : obj, Red x → Green x
axiom R2 : ∀ x : obj, Eats x Lion → Red Lion
axiom R3 : ∀ x : obj, Green x ∧ Likes x Lion → Eats x Bear
axiom R4 : ∀ x : obj, Visits x Bear → Likes Bear Lion
axiom R5 : ∀ x : obj, Likes x Squirrel ∧ Likes x Lion → Visits x Lion
axiom R6 : ∀ x : obj, Green x → Eats x Squirrel
axiom R7 : ∀ x : obj, Likes x Lion → Visits x Bear
axiom R8 : ∀ x : obj, Visits x Lion ∧ Green Lion → Red x

theorem squirrel_eats_squirrel : Eats Squirrel Squirrel :=
begin
  sorry
end


theorem not_squirrel_eats_squirrel : ¬ Eats Squirrel Squirrel :=
begin
  sorry
end
