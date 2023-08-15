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

-- Rule R1: Red people are green
axiom R1 : ∀ x : obj, Red x → Green x

-- Rule R2: If someone eats the lion then the lion is red
axiom R2 : ∀ x : obj, Eats x Lion → Red Lion

-- Rule R3: If someone is green and they like the lion then they eat the bear
axiom R3 : ∀ x : obj, Green x ∧ Likes x Lion → Eats x Bear

-- Rule R4: If someone visits the bear then the bear likes the lion
axiom R4 : ∀ x : obj, Visits x Bear → Likes Bear Lion

-- Rule R5: If someone likes the squirrel and they like the lion then they visit the lion
axiom R5 : ∀ x : obj, Likes x Squirrel ∧ Likes x Lion → Visits x Lion

-- Rule R6: If someone is green then they eat the squirrel
axiom R6 : ∀ x : obj, Green x → Eats x Squirrel

-- Rule R7: If someone likes the lion then they visit the bear
axiom R7 : ∀ x : obj, Likes x Lion → Visits x Bear

-- Rule R8: If someone visits the lion and the lion is green then they are red
axiom R8 : ∀ x : obj, Visits x Lion ∧ Green Lion → Red x


theorem not_rough_Squirrel : ¬ Rough Squirrel :=
begin
  sorry
end


theorem rough_Squirrel : Rough Squirrel :=
begin
  sorry
end
