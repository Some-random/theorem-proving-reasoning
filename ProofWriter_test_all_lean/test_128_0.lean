universe u

constant obj : Type u

constant Cat : obj
constant Lion : obj
constant Rabbit : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom A1 : Chases Cat Tiger
axiom A2 : Red Cat
axiom A3 : Nice Lion
axiom A4 : Red Lion
axiom A5 : Sees Lion Cat
axiom A6 : Sees Lion Rabbit
axiom A7 : Sees Lion Tiger
axiom A8 : Chases Rabbit Tiger
axiom A9 : Sees Rabbit Tiger
axiom A10 : Chases Tiger Cat
axiom A11 : Chases Tiger Rabbit
axiom A12 : Nice Tiger

-- Rule R1: If someone is red and they eat the rabbit then they are blue
axiom R1 : ∀ x : obj, Red x ∧ Eats x Rabbit → Blue x

-- Rule R2: If the lion eats the cat and the lion chases the rabbit then the cat is kind
axiom R2 : Eats Lion Cat ∧ Chases Lion Rabbit → Kind Cat

-- Rule R3: If the rabbit eats the tiger then the tiger is nice
axiom R3 : Eats Rabbit Tiger → Nice Tiger

-- Rule R4: If someone is rough then they see the cat
axiom R4 : ∀ x : obj, Rough x → Sees x Cat

-- Rule R5: If someone is nice and they chase the rabbit then the rabbit is nice
axiom R5 : ∀ x : obj, Nice x ∧ Chases x Rabbit → Nice Rabbit

-- Rule R6: If someone eats the cat and they are kind then they see the tiger
axiom R6 : ∀ x : obj, Eats x Cat ∧ Kind x → Sees x Tiger

-- Rule R7: If someone is nice and they chase the tiger then they are blue
axiom R7 : ∀ x : obj, Nice x ∧ Chases x Tiger → Blue x

-- Rule R8: If someone is blue then they eat the cat
axiom R8 : ∀ x : obj, Blue x → Eats x Cat

-- Rule R9: If someone eats the cat then the cat is blue
axiom R9 : ∀ x : obj, Eats x Cat → Blue Cat


theorem not_nice_rabbit : ¬ Nice Rabbit :=
begin
  sorry
end


theorem nice_rabbit : Nice Rabbit :=
begin
  sorry
end
