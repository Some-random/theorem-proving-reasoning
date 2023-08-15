universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Mouse : obj

constant Eats : obj → obj → Prop
constant Kind : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop

axiom A1 : Eats Bear Cow
axiom A2 : Eats Cat Bear
axiom A3 : Eats Cat Cow
axiom A4 : Kind Cat
axiom A5 : Sees Cat Cow
axiom A6 : Visits Cat Mouse
axiom A7 : Eats Cow Bear
axiom A8 : Big Cow
axiom A9 : Sees Cow Cat
axiom A10 : Visits Cow Mouse
axiom A11 : Eats Mouse Bear
axiom A12 : Eats Mouse Cat
axiom A13 : Kind Mouse
axiom A14 : Sees Mouse Cat
axiom A15 : Visits Mouse Cat
axiom A16 : Visits Mouse Cow

-- Rule R1: If someone is cold then they visit the bear
axiom R1 : ∀ x : obj, Cold x → Visits x Bear

-- Rule R2: If someone visits the cat and the cat eats the mouse then they eat the cow
axiom R2 : ∀ x : obj, Visits x Cat ∧ Eats Cat Mouse → Eats x Cow

-- Rule R3: If someone visits the mouse then the mouse sees the cow
axiom R3 : ∀ x : obj, Visits x Mouse → Sees Mouse Cow

-- Rule R4: If the cow eats the cat then the cat is big
axiom R4 : ∀ x : obj, Eats Cow Cat → Big Cat

-- Rule R5: If someone visits the bear then the bear visits the mouse
axiom R5 : ∀ x : obj, Visits x Bear → Visits Bear Mouse

-- Rule R6: If someone sees the cow then they eat the mouse
axiom R6 : ∀ x : obj, Sees x Cow → Eats x Mouse

-- Rule R7: If someone visits the mouse then they are cold
axiom R7 : ∀ x : obj, Visits x Mouse → Cold x

-- Rule R8: If someone eats the cat and they are cold then the cat visits the bear
axiom R8 : ∀ x : obj, Eats x Cat ∧ Cold x → Visits Cat Bear

-- Rule R9: If someone sees the bear and they are rough then they see the cow
axiom R9 : ∀ x : obj, Sees x Bear ∧ Rough x → Sees x Cow


theorem mouse_eats_cow : Eats Mouse Cow :=
begin
  sorry
end


theorem not_mouse_eats_cow : ¬ Eats Mouse Cow :=
begin
  sorry
end
