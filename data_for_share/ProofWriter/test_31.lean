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

axiom T1 : Eats Bear Tiger
axiom T2 : ¬ Red Bear
axiom T3 : Likes Bear Squirrel
axiom T4 : Visits Bear Squirrel
axiom T5 : Eats Mouse Tiger
axiom T6 : Red Mouse
axiom T7 : Rough Mouse
axiom T8 : Likes Mouse Bear
axiom T9 : ¬ Likes Mouse Tiger
axiom T10 : Likes Squirrel Bear
axiom T11 : Eats Tiger Mouse

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
  sorry
end


theorem mouse_visits_squirrel : Visits Mouse Squirrel :=
begin
  sorry
end
