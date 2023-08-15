universe u

constant obj : Type u

constant Cat : obj
constant Lion : obj
constant Rabbit : obj
constant Dog : obj

constant Chases : obj → obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Likes : obj → obj → Prop
constant Round : obj → Prop

axiom A1 : Chases Cat Lion
axiom A2 : Rough Cat
axiom A3 : Young Cat
axiom A4 : Needs Cat Lion
axiom A5 : Needs Cat Rabbit
axiom A6 : Green Dog
axiom A7 : Young Dog
axiom A8 : Likes Dog Cat
axiom A9 : Blue Lion
axiom A10 : Green Lion
axiom A11 : Chases Rabbit Lion
axiom A12 : Blue Rabbit
axiom A13 : Rough Rabbit
axiom A14 : Likes Rabbit Dog
axiom A15 : Needs Rabbit Dog
axiom A16 : Needs Rabbit Lion

-- Rule R1: If someone chases the lion then they are round
axiom R1 : ∀ x : obj, Chases x Lion → Round x

-- Rule R2: If the lion needs the rabbit and the rabbit chases the dog then the lion likes the dog
axiom R2 : Needs Lion Rabbit ∧ Chases Rabbit Dog → Likes Lion Dog

-- Rule R3: If someone is round and they chase the lion then they need the cat
axiom R3 : ∀ x : obj, Round x ∧ Chases x Lion → Needs x Cat

-- Rule R4: If someone needs the cat and they chase the dog then they like the rabbit
axiom R4 : ∀ x : obj, Needs x Cat ∧ Chases x Dog → Likes x Rabbit

-- Rule R5: If someone chases the lion and the lion is blue then the lion is round
axiom R5 : ∀ x : obj, Chases x Lion ∧ Blue Lion → Round Lion

-- Rule R6: If someone chases the rabbit then they are rough
axiom R6 : ∀ x : obj, Chases x Rabbit → Rough x

-- Rule R7: If someone is rough and they like the rabbit then the rabbit is young
axiom R7 : ∀ x : obj, Rough x ∧ Likes x Rabbit → Young Rabbit

-- Rule R8: If the rabbit chases the cat and the cat needs the lion then the rabbit is young
axiom R8 : Chases Rabbit Cat ∧ Needs Cat Lion → Young Rabbit

-- Rule R9: If someone is round and they need the cat then they chase the dog
axiom R9 : ∀ x : obj, Round x ∧ Needs x Cat → Chases x Dog


theorem cat_needs_cat : Needs Cat Cat :=
begin
  sorry
end


theorem not_cat_needs_cat : ¬ Needs Cat Cat :=
begin
  sorry
end
