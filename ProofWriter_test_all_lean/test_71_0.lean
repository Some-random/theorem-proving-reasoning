universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Lion : obj

constant Eats : obj → obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom A1 : Eats BaldEagle Cow
axiom A2 : ¬ Eats BaldEagle Dog
axiom A3 : Rough BaldEagle
axiom A4 : Round Cow
axiom A5 : Sees Cow BaldEagle
axiom A6 : ¬ Sees Cow Dog
axiom A7 : Visits Cow BaldEagle
axiom A8 : Visits Cow Lion
axiom A9 : Rough Dog
axiom A10 : Young Lion
axiom A11 : ¬ Sees Lion BaldEagle
axiom A12 : Sees Lion Cow

-- Rule R1: If someone is green and they eat the bald eagle then the bald eagle is not rough
axiom R1 : ∀ x : obj, Green x ∧ Eats x BaldEagle → ¬ Rough BaldEagle

-- Rule R2: If someone is big and they do not see the bald eagle then the bald eagle is rough
axiom R2 : ∀ x : obj, Big x ∧ ¬ Sees x BaldEagle → Rough BaldEagle

-- Rule R3: If someone is big then they visit the dog
axiom R3 : ∀ x : obj, Big x → Visits x Dog

-- Rule R4: If someone eats the lion and they are big then the lion eats the dog
axiom R4 : ∀ x : obj, Eats x Lion ∧ Big x → Eats Lion Dog

-- Rule R5: If someone visits the dog then the dog eats the cow
axiom R5 : ∀ x : obj, Visits x Dog → Eats Dog Cow

-- Rule R6: If someone is rough and they eat the cow then they are young
axiom R6 : ∀ x : obj, Rough x ∧ Eats x Cow → Young x

-- Rule R7: If the lion eats the cow then the lion visits the bald eagle
axiom R7 : Eats Lion Cow → Visits Lion BaldEagle

-- Rule R8: If someone is big and they see the lion then they are green
axiom R8 : ∀ x : obj, Big x ∧ Sees x Lion → Green x

-- Rule R9: If someone is young then they are big
axiom R9 : ∀ x : obj, Young x → Big x


theorem lion_is_big : Big Lion :=
begin
  sorry
end


theorem not_big_Lion : ¬ Big Lion :=
begin
  sorry
end
