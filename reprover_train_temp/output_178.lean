universe u

constant obj : Type u

constant Cat : obj
constant Lion : obj
constant Mouse : obj
constant Rabbit : obj

constant Red : obj → Prop
constant Kind : obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop

axiom T1 : ¬ Red Cat
axiom T2 : Kind Lion
axiom T3 : Chases Mouse Cat
axiom T4 : Eats Mouse Cat
axiom T5 : Eats Mouse Lion
axiom T6 : Young Mouse
axiom T7 : Sees Mouse Rabbit
axiom T8 : Chases Rabbit Lion
axiom T9 : Young Rabbit
axiom T10 : Sees Rabbit Lion

axiom R1 : ∀ x : obj, Nice x ∧ Sees x Mouse → Sees x Cat
axiom R2 : ∀ x : obj, Kind x → Eats x Cat
axiom R3 : ∀ x : obj, Rough x → Chases x Rabbit
axiom R4 : ∀ x : obj, Chases x Cat → Young Cat
axiom R5 : ∀ x : obj, Sees x Mouse → ¬ Eats x Lion
axiom R6 : ∀ x : obj, Young x → Kind x
axiom R7 : ∀ x : obj, Eats x Mouse ∧ Sees x Rabbit → Eats Rabbit Mouse
axiom R8 : ∀ x : obj, Kind x → Nice x
axiom R9 : ∀ x : obj, Nice x ∧ ¬ Red x → Rough x

theorem cat_does_not_chase_rabbit : ¬ Chases Cat Rabbit :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Cat chases Rabbit

theorem cat_chases_rabbit : Chases Cat Rabbit :=
begin
  apply R3,
  apply R9,
  split,
  apply R8,
  apply R6,
  apply R4,
  exact T3,
  exact T1,
end

-- It can be proven in Lean. So
-- The answer is False