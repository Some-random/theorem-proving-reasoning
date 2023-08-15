universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Rabbit : obj
constant Cow : obj

constant Chases : obj → obj → Prop
constant Big : obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Visits : obj → obj → Prop
constant Rough : obj → Prop

axiom A1 : Chases BaldEagle Lion
axiom A2 : Chases BaldEagle Rabbit
axiom A3 : Big BaldEagle
axiom A4 : Needs Cow BaldEagle
axiom A5 : Needs Cow Rabbit
axiom A6 : Chases Lion Cow
axiom A7 : Chases Lion Rabbit
axiom A8 : Kind Lion
axiom A9 : ¬ Round Lion
axiom A10 : Needs Lion BaldEagle
axiom A11 : ¬ Visits Lion Cow
axiom A12 : Visits Lion Rabbit
axiom A13 : Chases Rabbit BaldEagle
axiom A14 : Visits Rabbit BaldEagle

-- Rule R1: If someone needs the rabbit then the rabbit chases the lion
axiom R1 : ∀ x : obj, Needs x Rabbit → Chases Rabbit Lion

-- Rule R2: If someone is rough and they do not chase the rabbit then they visit the bald eagle
axiom R2 : ∀ x : obj, Rough x ∧ ¬ Chases x Rabbit → Visits x BaldEagle

-- Rule R3: If someone chases the lion then they do not need the cow
axiom R3 : ∀ x : obj, Chases x Lion → ¬ Needs x Cow

-- Rule R4: If someone needs the bald eagle and the bald eagle chases the cow then the bald eagle is not round
axiom R4 : ∀ x : obj, Needs x BaldEagle ∧ Chases BaldEagle Cow → ¬ Round BaldEagle

-- Rule R5: If someone chases the bald eagle and they do not need the cow then they visit the cow
axiom R5 : ∀ x : obj, Chases x BaldEagle ∧ ¬ Needs x Cow → Visits x Cow

-- Rule R6: If someone needs the rabbit and the rabbit visits the cow then the rabbit is big
axiom R6 : ∀ x : obj, Needs x Rabbit ∧ Visits Rabbit Cow → Big Rabbit

-- Rule R7: If someone is big then they do not visit the lion
axiom R7 : ∀ x : obj, Big x → ¬ Visits x Lion


theorem not_visits_rabbit_cow : ¬ Visits Rabbit Cow :=
begin
  sorry
end


theorem visits_rabbit_cow : Visits Rabbit Cow :=
begin
  sorry
end
