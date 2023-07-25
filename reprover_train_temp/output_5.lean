universe u

constant obj : Type u

constant Bear : obj
constant Tiger : obj
constant Cat : obj
constant Mouse : obj

constant Nice : obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom T1 : Nice Bear
axiom T2 : Visits Bear Tiger
axiom T3 : Cold Cat
axiom T4 : ¬ Needs Cat Tiger
axiom T5 : Sees Cat Mouse
axiom T6 : Visits Cat Bear
axiom T7 : Needs Mouse Bear
axiom T8 : Sees Mouse Cat
axiom T9 : Visits Mouse Bear
axiom T10 : ¬ Rough Tiger
axiom T11 : ¬ Needs Tiger Mouse

axiom R1 : ∀ x : obj, Rough x → Cold x
axiom R2 : ∀ x : obj, Needs x Bear → Needs x Mouse
axiom R3 : ∀ x : obj, Kind x → Needs x Mouse
axiom R4 : ∀ x : obj, Sees x Bear → Rough x
axiom R5 : ∀ x : obj, Visits x Mouse → Sees x Bear
axiom R6 : ∀ x : obj, Kind x → Visits x Mouse
axiom R7 : ∀ x : obj, Needs x Bear → Kind x
axiom R8 : ∀ x : obj, Sees x Bear ∧ ¬ Visits Bear Cat → ¬ Needs Bear Mouse
axiom R9 : ∀ x : obj, Visits x Cat → Visits Cat Bear

theorem mouse_is_not_cold : ¬ Cold Mouse :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Mouse is cold

theorem mouse_is_cold : Cold Mouse :=
begin
  apply R1,
  apply R4,
  apply R5,
  apply R6,
  apply R7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False