universe u

constant obj : Type u

constant Bear : obj
constant Mouse : obj
constant Rabbit : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Chases : obj → obj → Prop
constant Blue : obj → Prop

axiom T1 : Eats Bear Mouse
axiom T2 : Needs Bear Rabbit
axiom T3 : Needs Bear Tiger
axiom T4 : Eats Mouse Bear
axiom T5 : Green Mouse
axiom T6 : Kind Mouse
axiom T7 : Round Mouse
axiom T8 : Needs Mouse Tiger
axiom T9 : Chases Rabbit Tiger
axiom T10 : Eats Rabbit Mouse
axiom T11 : Blue Rabbit
axiom T12 : Kind Rabbit
axiom T13 : Round Rabbit
axiom T14 : Needs Rabbit Bear
axiom T15 : Needs Rabbit Tiger
axiom T16 : Eats Tiger Mouse

axiom R1 : ∀ x : obj, Chases x Bear → Eats x Rabbit
axiom R2 : ∀ x : obj, Blue x → Green x
axiom R3 : ∀ x : obj, Round x ∧ Needs x Rabbit → Green Rabbit
axiom R4 : ∀ x : obj, Kind x ∧ Eats x Bear → Eats x Rabbit
axiom R5 : ∀ x : obj, Chases x Bear ∧ Kind x → Blue Bear
axiom R6 : ∀ x : obj, Blue x ∧ Green x → Chases x Bear

theorem bear_chases_bear : Chases Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bear does not chase Bear

theorem not_bear_chases_bear : ¬ Chases Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either.
-- The answer is False