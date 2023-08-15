universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Rabbit : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Eats : obj → obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Visits : obj → obj → Prop

axiom A1 : Chases BaldEagle Tiger
axiom A2 : Cold BaldEagle
axiom A3 : Rough BaldEagle
axiom A4 : Chases Dog Rabbit
axiom A5 : Eats Dog Rabbit
axiom A6 : Chases Rabbit Dog
axiom A7 : Round Rabbit
axiom A8 : Chases Tiger Dog
axiom A9 : Eats Tiger Rabbit
axiom A10 : Cold Tiger

-- Rule R1: If someone visits the dog and the dog eats the bald eagle then the bald eagle is green
axiom R1 : ∀ x : obj, Visits x Dog ∧ Eats Dog BaldEagle → Green BaldEagle

-- Rule R2: If someone is red then they chase the rabbit
axiom R2 : ∀ x : obj, Red x → Chases x Rabbit

-- Rule R3: If someone eats the dog then they eat the rabbit
axiom R3 : ∀ x : obj, Eats x Dog → Eats x Rabbit

-- Rule R4: If someone chases the rabbit and the rabbit is green then they are green
axiom R4 : ∀ x : obj, Chases x Rabbit ∧ Green Rabbit → Green x

-- Rule R5: If someone is green then they eat the dog
axiom R5 : ∀ x : obj, Green x → Eats x Dog

-- Rule R6: If someone visits the bald eagle and they are round then the bald eagle is green
axiom R6 : ∀ x : obj, Visits x BaldEagle ∧ Round x → Green BaldEagle

-- Rule R7: If someone visits the rabbit and they eat the bald eagle then they eat the dog
axiom R7 : ∀ x : obj, Visits x Rabbit ∧ Eats x BaldEagle → Eats x Dog

-- Rule R8: If someone chases the dog then they visit the bald eagle
axiom R8 : ∀ x : obj, Chases x Dog → Visits x BaldEagle

-- Rule R9: If someone is rough and they eat the rabbit then they eat the tiger
axiom R9 : ∀ x : obj, Rough x ∧ Eats x Rabbit → Eats x Tiger


theorem tiger_visits_bald_eagle : Visits Tiger BaldEagle :=
begin
  sorry
end


theorem not_tiger_visits_bald_eagle : ¬ Visits Tiger BaldEagle :=
begin
  sorry
end
