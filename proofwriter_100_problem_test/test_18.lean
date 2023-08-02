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

axiom A1 : Cold BaldEagle
axiom A2 : Green BaldEagle
axiom A3 : Needs BaldEagle Lion
axiom A4 : Visits BaldEagle Rabbit
axiom A5 : Sees Dog Lion
axiom A6 : Cold Lion
axiom A7 : Green Lion
axiom A8 : Needs Lion Dog
axiom A9 : Needs Lion Rabbit
axiom A10 : Visits Lion BaldEagle
axiom A11 : Visits Lion Dog
axiom A12 : Round Rabbit
axiom A13 : Visits Rabbit Dog
axiom A14 : Visits Rabbit Lion

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
