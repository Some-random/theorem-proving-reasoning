universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Rabbit : obj
constant Dog : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Sees : obj → obj → Prop

axiom T1 : Cold BaldEagle
axiom T2 : Green BaldEagle
axiom T3 : Needs BaldEagle Lion
axiom T4 : Visits BaldEagle Rabbit
axiom T5 : Sees Dog Lion
axiom T6 : Cold Lion
axiom T7 : Green Lion
axiom T8 : Needs Lion Dog
axiom T9 : Needs Lion Rabbit
axiom T10 : Visits Lion BaldEagle
axiom T11 : Visits Lion Dog
axiom T12 : Round Rabbit
axiom T13 : Visits Rabbit Dog
axiom T14 : Visits Rabbit Lion

axiom R1 : ∀ x : obj, Round x → Rough x
axiom R2 : ∀ x : obj, Visits x Rabbit ∧ Needs x BaldEagle → Visits Rabbit BaldEagle
axiom R3 : ∀ x : obj, Rough x → Visits x Lion
axiom R4 : ∀ x : obj, Needs Dog Rabbit ∧ Sees Rabbit BaldEagle → Sees BaldEagle Dog
axiom R5 : ∀ x : obj, Visits Rabbit Lion ∧ Needs Rabbit Dog → Round Dog
axiom R6 : ∀ x : obj, Visits x Rabbit → Needs Rabbit BaldEagle
axiom R7 : ∀ x : obj, Visits x Lion ∧ Needs Lion Dog → Needs x Dog

theorem not_sees_rabbit_bald_eagle : ¬ Sees Rabbit BaldEagle :=
begin
  sorry
end


theorem sees_rabbit_bald_eagle : Sees Rabbit BaldEagle :=
begin
  sorry
end
