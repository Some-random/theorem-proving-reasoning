universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Rabbit : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop

axiom A1 : ¬ Big Cat
axiom A2 : Kind Cat
axiom A3 : Sees Cat Rabbit
axiom A4 : Chases Cow Rabbit
axiom A5 : Chases Cow Squirrel
axiom A6 : Sees Cow Squirrel
axiom A7 : Visits Cow Cat
axiom A8 : Visits Cow Squirrel
axiom A9 : Chases Rabbit Cat
axiom A10 : Chases Rabbit Cow
axiom A11 : Green Rabbit
axiom A12 : Visits Rabbit Squirrel
axiom A13 : Blue Squirrel
axiom A14 : Kind Squirrel
axiom A15 : Sees Squirrel Rabbit
axiom A16 : Visits Squirrel Rabbit

-- Rule R1: If something visits the cow then it chases the rabbit
axiom R1 : ∀ x : obj, Visits x Cow → Chases x Rabbit

-- Rule R2: If something chases the cat then the cat chases the cow
axiom R2 : ∀ x : obj, Chases x Cat → Chases Cat Cow

-- Rule R3: If something chases the cow and the cow sees the squirrel then the squirrel is big
axiom R3 : ∀ x : obj, Chases x Cow ∧ Sees Cow Squirrel → Big Squirrel

-- Rule R4: If something chases the cat then it visits the rabbit
axiom R4 : ∀ x : obj, Chases x Cat → Visits x Rabbit

-- Rule R5: If something visits the rabbit then it sees the cow
axiom R5 : ∀ x : obj, Visits x Rabbit → Sees x Cow

-- Rule R6: If something chases the cat and it sees the cow then the cow chases the cat
axiom R6 : ∀ x : obj, Chases x Cat ∧ Sees x Cow → Chases Cow Cat

-- Rule R7: If something sees the rabbit and it chases the cat then the rabbit chases the squirrel
axiom R7 : ∀ x : obj, Sees x Rabbit ∧ Chases x Cat → Chases Rabbit Squirrel


theorem not_cat_chases_rabbit : ¬ Chases Cat Rabbit :=
begin
  sorry
end


theorem cat_chases_rabbit : Chases Cat Rabbit :=
begin
  sorry
end
