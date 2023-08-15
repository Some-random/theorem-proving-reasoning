universe u

constant obj : Type u

constant BaldEagle : obj
constant Tiger : obj
constant Rabbit : obj
constant Bear : obj

constant Eats : obj → obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop
constant Sees : obj → obj → Prop

axiom A1 : Eats BaldEagle Tiger
axiom A2 : Red BaldEagle
axiom A3 : Likes BaldEagle Rabbit
axiom A4 : Eats Bear BaldEagle
axiom A5 : Rough Bear
axiom A6 : Eats Rabbit Tiger
axiom A7 : Eats Tiger BaldEagle
axiom A8 : Eats Tiger Rabbit
axiom A9 : Kind Tiger
axiom A10 : Likes Tiger Bear

-- Rule R1: If someone is cold then they see the rabbit
axiom R1 : ∀ x : obj, Cold x → Sees x Rabbit

-- Rule R2: If someone sees the tiger and the tiger is kind then they see the bald eagle
axiom R2 : ∀ x : obj, Sees x Tiger ∧ Kind Tiger → Sees x BaldEagle

-- Rule R3: If the rabbit is red and the rabbit is rough then the rabbit likes the bear
axiom R3 : ∀ x : obj, Red Rabbit ∧ Rough Rabbit → Likes Rabbit Bear

-- Rule R4: If someone sees the rabbit then the rabbit eats the bald eagle
axiom R4 : ∀ x : obj, Sees x Rabbit → Eats Rabbit BaldEagle

-- Rule R5: If someone eats the bald eagle then they are cold
axiom R5 : ∀ x : obj, Eats x BaldEagle → Cold x

-- Rule R6: If someone sees the bald eagle and they eat the bear then they like the bald eagle
axiom R6 : ∀ x : obj, Sees x BaldEagle ∧ Eats x Bear → Likes x BaldEagle


theorem rabbit_sees_rabbit : Sees Rabbit Rabbit :=
begin
  sorry
end


theorem not_rabbit_sees_rabbit : ¬ Sees Rabbit Rabbit :=
begin
  sorry
end
