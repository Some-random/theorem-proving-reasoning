universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Rabbit : obj
constant Tiger : obj

constant Needs : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom A1 : Needs Cat Dog
axiom A2 : Kind Dog
axiom A3 : Needs Dog Rabbit
axiom A4 : Eats Rabbit Dog
axiom A5 : Green Rabbit
axiom A6 : Chases Tiger Rabbit
axiom A7 : Big Tiger

-- Rule R1: If something is nice and it eats the tiger then it needs the dog
axiom R1 : ∀ x : obj, Nice x ∧ Eats x Tiger → Needs x Dog

-- Rule R2: If something chases the cat then it eats the cat
axiom R2 : ∀ x : obj, Chases x Cat → Eats x Cat

-- Rule R3: If the dog chases the tiger then the tiger needs the rabbit
axiom R3 : Chases Dog Tiger → Needs Tiger Rabbit

-- Rule R4: If the rabbit chases the tiger then the rabbit chases the cat
axiom R4 : Chases Rabbit Tiger → Chases Rabbit Cat

-- Rule R5: If something chases the cat then the cat is kind
axiom R5 : ∀ x : obj, Chases x Cat → Kind Cat

-- Rule R6: If something eats the dog then it chases the cat
axiom R6 : ∀ x : obj, Eats x Dog → Chases x Cat

-- Rule R7: If something is rough then it eats the dog
axiom R7 : ∀ x : obj, Rough x → Eats x Dog

-- Rule R8: If something is kind then it is rough
axiom R8 : ∀ x : obj, Kind x → Rough x

-- Rule R9: If something eats the rabbit and the rabbit is big then it is kind
axiom R9 : ∀ x : obj, Eats x Rabbit ∧ Big Rabbit → Kind x


theorem not_rough_cat : ¬ Rough Cat :=
begin
  sorry
end


theorem rough_cat : Rough Cat :=
begin
  sorry
end
