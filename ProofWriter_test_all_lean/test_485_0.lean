universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Dog : obj
constant Bear : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : Eats BaldEagle Dog
axiom A3 : Eats Bear BaldEagle
axiom A4 : Eats Bear Dog
axiom A5 : Chases Dog BaldEagle
axiom A6 : Chases Dog Bear
axiom A7 : Chases Dog Squirrel
axiom A8 : Eats Dog Squirrel
axiom A9 : Big Dog
axiom A10 : Blue Dog
axiom A11 : Green Dog
axiom A12 : Green Squirrel

-- Rule R1: If someone likes the squirrel then they chase the dog
axiom R1 : ∀ x : obj, Likes x Squirrel → Chases x Dog

-- Rule R2: If someone eats the bald eagle then they are red
axiom R2 : ∀ x : obj, Eats x BaldEagle → Red x

-- Rule R3: If someone is green and they eat the bear then they like the squirrel
axiom R3 : ∀ x : obj, Green x ∧ Eats x Bear → Likes x Squirrel

-- Rule R4: If someone eats the dog then the dog eats the bald eagle
axiom R4 : ∀ x : obj, Eats x Dog → Eats Dog BaldEagle

-- Rule R5: If someone eats the bear then the bear is big
axiom R5 : ∀ x : obj, Eats x Bear → Big Bear

-- Rule R6: If someone eats the squirrel and they chase the bear then the bear chases the bald eagle
axiom R6 : ∀ x : obj, Eats x Squirrel ∧ Chases x Bear → Chases Bear BaldEagle

-- Rule R7: If someone is red and green then they eat the bear
axiom R7 : ∀ x : obj, Red x ∧ Green x → Eats x Bear

-- Rule R8: If someone likes the bear and they eat the bear then the bear eats the bald eagle
axiom R8 : ∀ x : obj, Likes x Bear ∧ Eats x Bear → Eats Bear BaldEagle


theorem squirrel_is_blue : Blue Squirrel :=
begin
  sorry
end


theorem not_blue_squirrel : ¬ Blue Squirrel :=
begin
  sorry
end
