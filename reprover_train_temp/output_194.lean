universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Rabbit : obj
constant Tiger : obj

constant Big : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop

axiom T1 : Big BaldEagle
axiom T2 : Sees BaldEagle Lion
axiom T3 : Visits BaldEagle Rabbit
axiom T4 : Eats Lion BaldEagle
axiom T5 : Blue Lion
axiom T6 : Cold Lion
axiom T7 : Visits Lion BaldEagle
axiom T8 : Visits Lion Rabbit
axiom T9 : Eats Rabbit Tiger
axiom T10 : Big Rabbit
axiom T11 : Sees Rabbit BaldEagle
axiom T12 : Visits Rabbit Tiger
axiom T13 : Red Tiger
axiom T14 : Visits Tiger BaldEagle

axiom R1 : ∀ x : obj, Eats x BaldEagle → Visits BaldEagle Lion
axiom R2 : ∀ x : obj, Visits x BaldEagle ∧ Sees BaldEagle Rabbit → Red Rabbit
axiom R3 : Blue Lion → Sees Lion Tiger
axiom R4 : ∀ x : obj, Big x → Cold x
axiom R5 : ∀ x : obj, Red x → Visits x Lion
axiom R6 : ∀ x : obj, Eats x BaldEagle → Sees x BaldEagle
axiom R7 : ∀ x : obj, Eats x Tiger ∧ Sees Tiger Lion → Visits x Lion
axiom R8 : ∀ x : obj, Eats x Lion ∧ Sees Lion Rabbit → Sees Rabbit BaldEagle
axiom R9 : ∀ x : obj, Visits x Lion ∧ Sees Lion Tiger → Sees x Rabbit

theorem rabbit_does_not_see_rabbit : ¬ Sees Rabbit Rabbit :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Rabbit sees Rabbit

theorem rabbit_sees_rabbit : Sees Rabbit Rabbit :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either. So
-- The answer is False