universe u

constant obj : Type u

constant Dog : obj
constant Mouse : obj
constant Rabbit : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Green : obj → Prop
constant Chases : obj → obj → Prop
constant Young : obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop

axiom A1 : ¬ Eats Dog Rabbit
axiom A2 : Eats Mouse Tiger
axiom A3 : Green Mouse
axiom A4 : ¬ Chases Rabbit Tiger
axiom A5 : Eats Rabbit Dog
axiom A6 : Young Rabbit
axiom A7 : Green Tiger

-- Rule R1: If something visits the mouse then the mouse is big
axiom R1 : ∀ x : obj, Visits x Mouse → Big Mouse

-- Rule R2: If something eats the tiger then the tiger visits the mouse
axiom R2 : ∀ x : obj, Eats x Tiger → Visits Tiger Mouse

-- Rule R3: If the dog is young and the dog does not visit the mouse then the mouse does not visit the rabbit
axiom R3 : Young Dog ∧ ¬ Visits Dog Mouse → ¬ Visits Mouse Rabbit

-- Rule R4: If something is green and it chases the rabbit then the rabbit does not eat the mouse
axiom R4 : ∀ x : obj, Green x ∧ Chases x Rabbit → ¬ Eats Rabbit Mouse

-- Rule R5: If something is green then it visits the dog
axiom R5 : ∀ x : obj, Green x → Visits x Dog

-- Rule R6: If something visits the rabbit and the rabbit is young then it is round
axiom R6 : ∀ x : obj, Visits x Rabbit ∧ Young Rabbit → Round x

-- Rule R7: If something is round and it visits the dog then it chases the tiger
axiom R7 : ∀ x : obj, Round x ∧ Visits x Dog → Chases x Tiger

-- Rule R8: If something is big then it visits the rabbit
axiom R8 : ∀ x : obj, Big x → Visits x Rabbit


theorem not_big_Mouse : ¬ Big Mouse :=
begin
  sorry
end


theorem big_Mouse : Big Mouse :=
begin
  sorry
end
