universe u

constant obj : Type u

constant Bear : obj
constant Tiger : obj
constant Squirrel : obj
constant Mouse : obj

constant Eats : obj → obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop

axiom A1 : Eats Bear Tiger
axiom A2 : ¬ Red Bear
axiom A3 : Likes Bear Squirrel
axiom A4 : Visits Bear Squirrel
axiom A5 : Eats Mouse Tiger
axiom A6 : Red Mouse
axiom A7 : Rough Mouse
axiom A8 : Likes Mouse Bear
axiom A9 : ¬ Likes Mouse Tiger
axiom A10 : Likes Squirrel Bear
axiom A11 : Eats Tiger Mouse

-- Rule R1: If the mouse likes the bear and the bear likes the mouse then the mouse is not kind
axiom R1 : Likes Mouse Bear ∧ Likes Bear Mouse → ¬ Kind Mouse

-- Rule R2: If someone visits the mouse then they like the squirrel
axiom R2 : ∀ x : obj, Visits x Mouse → Likes x Squirrel

-- Rule R3: If someone is green then they visit the bear
axiom R3 : ∀ x : obj, Green x → Visits x Bear

-- Rule R4: If someone likes the bear and the bear visits the tiger then they visit the bear
axiom R4 : ∀ x : obj, Likes x Bear ∧ Visits Bear Tiger → Visits x Bear

-- Rule R5: If someone eats the bear and they do not like the tiger then they are green
axiom R5 : ∀ x : obj, Eats x Bear ∧ ¬ Likes x Tiger → Green x

-- Rule R6: If someone visits the mouse then the mouse eats the bear
axiom R6 : ∀ x : obj, Visits x Mouse → Eats Mouse Bear

-- Rule R7: If someone is red and they eat the tiger then the tiger visits the mouse
axiom R7 : ∀ x : obj, Red x ∧ Eats x Tiger → Visits Tiger Mouse

-- Rule R8: If someone visits the bear then they are kind
axiom R8 : ∀ x : obj, Visits x Bear → Kind x


theorem not_mouse_visits_squirrel : ¬ Visits Mouse Squirrel :=
begin
  sorry
end


theorem mouse_visits_squirrel : Visits Mouse Squirrel :=
begin
  sorry
end
