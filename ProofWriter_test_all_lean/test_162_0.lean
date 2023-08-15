universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop

axiom A1 : Eats BaldEagle Bear
axiom A2 : Eats BaldEagle Cat
axiom A3 : Eats BaldEagle Rabbit
axiom A4 : Young BaldEagle
axiom A5 : Likes BaldEagle Bear
axiom A6 : Sees BaldEagle Cat
axiom A7 : Sees BaldEagle Rabbit
axiom A8 : Eats Bear BaldEagle
axiom A9 : Eats Cat BaldEagle
axiom A10 : Likes Cat Rabbit
axiom A11 : Round Rabbit
axiom A12 : Sees Rabbit BaldEagle

-- Rule R1: If someone eats the bald eagle and they see the rabbit then they are round
axiom R1 : ∀ x : obj, Eats x BaldEagle ∧ Sees x Rabbit → Round x

-- Rule R2: If someone eats the bald eagle and they eat the rabbit then the rabbit likes the cat
axiom R2 : ∀ x : obj, Eats x BaldEagle ∧ Eats x Rabbit → Likes Rabbit Cat

-- Rule R3: If someone is young and they eat the rabbit then the rabbit sees the cat
axiom R3 : ∀ x : obj, Young x ∧ Eats x Rabbit → Sees Rabbit Cat

-- Rule R4: If someone eats the rabbit and the rabbit is cold then they are blue
axiom R4 : ∀ x : obj, Eats x Rabbit ∧ Cold Rabbit → Blue x

-- Rule R5: If the rabbit sees the cat and the rabbit is round then the cat eats the rabbit
axiom R5 : ∀ x : obj, Sees Rabbit Cat ∧ Round Rabbit → Eats Cat Rabbit

-- Rule R6: If the bald eagle sees the bear and the bald eagle likes the bear then the bald eagle is red
axiom R6 : ∀ x : obj, Sees BaldEagle Bear ∧ Likes BaldEagle Bear → Red BaldEagle

-- Rule R7: If someone eats the rabbit and they are blue then they eat the bald eagle
axiom R7 : ∀ x : obj, Eats x Rabbit ∧ Blue x → Eats x BaldEagle

-- Rule R8: If someone likes the cat then the cat is round
axiom R8 : ∀ x : obj, Likes x Cat → Round Cat

-- Rule R9: If the rabbit likes the cat and the cat is round then the rabbit is blue
axiom R9 : ∀ x : obj, Likes Rabbit Cat ∧ Round Cat → Blue Rabbit


theorem not_likes_rabbit_cat : ¬ Likes Rabbit Cat :=
begin
  sorry
end


theorem likes_rabbit_cat : Likes Rabbit Cat :=
begin
  sorry
end
