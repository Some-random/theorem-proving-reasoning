universe u

constant obj : Type u

constant Lion : obj
constant Mouse : obj
constant Squirrel : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom A1 : Eats Lion Mouse
axiom A2 : Green Lion
axiom A3 : Kind Mouse
axiom A4 : Green Squirrel
axiom A5 : Round Squirrel
axiom A6 : Likes Squirrel Lion
axiom A7 : Visits Squirrel Mouse
axiom A8 : Visits Squirrel Tiger
axiom A9 : Kind Tiger
axiom A10 : Nice Tiger

-- Rule R1: If someone visits the mouse then the mouse is nice
axiom R1 : ∀ x : obj, Visits x Mouse → Nice Mouse

-- Rule R2: If someone eats the mouse and they visit the tiger then the mouse is green
axiom R2 : ∀ x : obj, Eats x Mouse ∧ Visits x Tiger → Green Mouse

-- Rule R3: Big, nice people are round
axiom R3 : ∀ x : obj, Big x ∧ Nice x → Round x

-- Rule R4: If the mouse is green then the mouse is big
axiom R4 : ∀ x : obj, Green Mouse → Big Mouse

-- Rule R5: If the lion is nice then the lion does not visit the tiger
axiom R5 : ∀ x : obj, Nice Lion → ¬ Visits Lion Tiger

-- Rule R6: If someone is round and big then they like the lion
axiom R6 : ∀ x : obj, Round x ∧ Big x → Likes x Lion

-- Rule R7: If someone is green then they visit the tiger
axiom R7 : ∀ x : obj, Green x → Visits x Tiger

-- Rule R8: If someone eats the tiger and they are not nice then the tiger likes the lion
axiom R8 : ∀ x : obj, Eats x Tiger ∧ ¬ Nice x → Likes Tiger Lion

-- Rule R9: If someone likes the tiger and they do not eat the squirrel then the tiger likes the lion
axiom R9 : ∀ x : obj, Likes x Tiger ∧ ¬ Eats x Squirrel → Likes Tiger Lion


theorem not_mouse_likes_lion : ¬ Likes Mouse Lion :=
begin
  sorry
end


theorem mouse_likes_lion : Likes Mouse Lion :=
begin
  sorry
end
