universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Round : obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Visits : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop

axiom T1 : Round BaldEagle
axiom T2 : Eats Mouse Squirrel
axiom T3 : Cold Mouse
axiom T4 : Visits Mouse Rabbit
axiom T5 : Eats Rabbit BaldEagle
axiom T6 : Eats Rabbit Squirrel
axiom T7 : Sees Rabbit Mouse
axiom T8 : ¬ Visits Rabbit BaldEagle
axiom T9 : ¬ Big Squirrel
axiom T10 : ¬ Visits Squirrel BaldEagle
axiom T11 : Visits Squirrel Rabbit

axiom R1 : ∀ x : obj, Sees x Rabbit → Visits x BaldEagle
axiom R2 : ∀ x : obj, Sees Mouse Rabbit ∧ Blue Rabbit → Blue Mouse
axiom R3 : ∀ x : obj, Cold x → Sees x Rabbit
axiom R4 : ∀ x : obj, Visits x BaldEagle → Cold BaldEagle
axiom R5 : ∀ x : obj, Visits x Rabbit → Sees Rabbit Squirrel

theorem bald_eagle_does_not_visit_bald_eagle : ¬ Visits BaldEagle BaldEagle :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bald Eagle visits Bald Eagle

theorem bald_eagle_visits_bald_eagle : Visits BaldEagle BaldEagle :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either.
-- The answer is False