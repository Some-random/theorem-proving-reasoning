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

axiom R1 : ∀ x : obj, Likes Mouse Bear ∧ Likes Bear Mouse → ¬ Kind Mouse
axiom R2 : ∀ x : obj, Visits x Mouse → Likes x Squirrel
axiom R3 : ∀ x : obj, Green x → Visits x Bear
axiom R4 : ∀ x : obj, Likes x Bear ∧ Visits Bear Tiger → Visits x Bear
axiom R5 : ∀ x : obj, Eats x Bear ∧ ¬ Likes x Tiger → Green x
axiom R6 : ∀ x : obj, Visits x Mouse → Eats Mouse Bear
axiom R7 : ∀ x : obj, Red x ∧ Eats x Tiger → Visits Tiger Mouse
axiom R8 : ∀ x : obj, Visits x Bear → Kind x

theorem not_mouse_visits_squirrel : ¬ Visits Mouse Squirrel :=
begin
end


theorem mouse_visits_squirrel : Visits Mouse Squirrel :=
begin
end
