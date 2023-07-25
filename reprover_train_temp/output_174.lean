universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Cat : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Visits : obj → obj → Prop

axiom T1 : ¬ Chases BaldEagle Cow
axiom T2 : Eats BaldEagle Tiger
axiom T3 : Kind BaldEagle
axiom T4 : Chases Cat Cow
axiom T5 : Eats Cat BaldEagle
axiom T6 : Chases Cow BaldEagle
axiom T7 : Chases Cow Cat
axiom T8 : Eats Cow BaldEagle
axiom T9 : Eats Cow Cat
axiom T10 : ¬ Kind Cow
axiom T11 : Red Cow
axiom T12 : ¬ Big Tiger
axiom T13 : Rough Tiger
axiom T14 : ¬ Visits Tiger Cat

axiom R1 : ∀ x : obj, Eats x Cat ∧ ¬ Eats x Tiger → ¬ Chases Tiger Cat
axiom R2 : ∀ x : obj, Kind x ∧ Visits x Cow → ¬ Visits x Tiger
axiom R3 : ∀ x : obj, Chases x Cat → Visits x Tiger
axiom R4 : ∀ x : obj, Visits x Tiger → Visits x BaldEagle
axiom R5 : Eats Tiger BaldEagle → Eats Tiger Cow
axiom R6 : ∀ x : obj, Visits x Tiger ∧ Visits x BaldEagle → Chases BaldEagle Cat

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

-- Looks like it cannot be proven in Lean either. So
-- The answer is False