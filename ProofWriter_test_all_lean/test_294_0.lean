universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Mouse : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop

axiom A1 : Eats BaldEagle Bear
axiom A2 : Cold BaldEagle
axiom A3 : ¬ Likes BaldEagle Bear
axiom A4 : Likes BaldEagle Tiger
axiom A5 : Visits BaldEagle Bear
axiom A6 : Eats Bear BaldEagle
axiom A7 : Blue Bear
axiom A8 : ¬ Visits Bear Tiger
axiom A9 : Likes Mouse Tiger
axiom A10 : Eats Tiger Mouse
axiom A11 : Cold Tiger
axiom A12 : Likes Tiger Bear

-- Rule R1: If the mouse is kind then the mouse eats the bald eagle
axiom R1 : Kind Mouse → Eats Mouse BaldEagle

-- Rule R2: If something eats the bald eagle and the bald eagle likes the tiger then the tiger likes the mouse
axiom R2 : ∀ x : obj, Eats x BaldEagle ∧ Likes BaldEagle Tiger → Likes Tiger Mouse

-- Rule R3: If something likes the tiger then it visits the mouse
axiom R3 : ∀ x : obj, Likes x Tiger → Visits x Mouse

-- Rule R4: If the tiger likes the mouse and the mouse does not eat the tiger then the mouse is big
axiom R4 : Likes Tiger Mouse ∧ ¬ Eats Mouse Tiger → Big Mouse

-- Rule R5: If something visits the bear and it is kind then the bear likes the tiger
axiom R5 : ∀ x : obj, Visits x Bear ∧ Kind x → Likes Bear Tiger

-- Rule R6: Cold and kind things are big
axiom R6 : ∀ x : obj, Cold x ∧ Kind x → Big x

-- Rule R7: If the tiger eats the bald eagle then the tiger does not eat the mouse
axiom R7 : Eats Tiger BaldEagle → ¬ Eats Tiger Mouse

-- Rule R8: If something visits the mouse then it is kind
axiom R8 : ∀ x : obj, Visits x Mouse → Kind x

-- Rule R9: If the bald eagle eats the mouse and the mouse does not eat the bear then the bald eagle is big
axiom R9 : Eats BaldEagle Mouse ∧ ¬ Eats Mouse Bear → Big BaldEagle



theorem bear_visits_mouse : Visits Bear Mouse :=
begin
  sorry
end


theorem not_bear_visits_mouse : ¬ Visits Bear Mouse :=
begin
  sorry
end
