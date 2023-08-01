universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Lion : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop

axiom A1 : Eats Bear Squirrel
axiom A2 : Cold Bear
axiom A3 : Rough Bear
axiom A4 : Visits Bear Lion
axiom A5 : Eats Cat Lion
axiom A6 : Likes Lion Cat
axiom A7 : Visits Lion Bear
axiom A8 : Eats Squirrel Lion
axiom A9 : Cold Squirrel
axiom A10 : Rough Squirrel
axiom A11 : Likes Squirrel Bear
axiom A12 : Visits Squirrel Lion

axiom R1 : ∀ x : obj, Red x → Green x
axiom R2 : ∀ x : obj, Eats x Lion → Red Lion
axiom R3 : ∀ x : obj, Green x ∧ Likes x Lion → Eats x Bear
axiom R4 : ∀ x : obj, Visits x Bear → Likes Bear Lion
axiom R5 : ∀ x : obj, Likes x Squirrel ∧ Likes x Lion → Visits x Lion
axiom R6 : ∀ x : obj, Green x → Eats x Squirrel
axiom R7 : ∀ x : obj, Likes x Lion → Visits x Bear
axiom R8 : ∀ x : obj, Visits x Lion ∧ Green Lion → Red x

theorem not_rough_Squirrel : ¬ Rough Squirrel :=
begin
end


theorem rough_Squirrel : Rough Squirrel :=
begin
end
