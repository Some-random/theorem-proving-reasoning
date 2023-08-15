universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

axiom A1 : Chases Cat Dog
axiom A2 : Chases Cat Mouse
axiom A3 : Chases Cat Tiger
axiom A4 : Eats Cat Dog
axiom A5 : Big Dog
axiom A6 : Sees Dog Cat
axiom A7 : ¬ Eats Mouse Cat
axiom A8 : Eats Mouse Tiger
axiom A9 : ¬ Sees Mouse Tiger
axiom A10 : Eats Tiger Dog
axiom A11 : Nice Tiger

-- Rule R1: If something is young and it eats the tiger then it eats the dog
axiom R1 : ∀ x : obj, Young x ∧ Eats x Tiger → Eats x Dog

-- Rule R2: If something sees the mouse and it eats the mouse then the mouse sees the tiger
axiom R2 : ∀ x : obj, Sees x Mouse ∧ Eats x Mouse → Sees Mouse Tiger

-- Rule R3: If something sees the mouse then it is big
axiom R3 : ∀ x : obj, Sees x Mouse → Big x

-- Rule R4: If something chases the dog then the dog chases the cat
axiom R4 : ∀ x : obj, Chases x Dog → Chases Dog Cat

-- Rule R5: If something chases the dog then it chases the cat
axiom R5 : ∀ x : obj, Chases x Dog → Chases x Cat

-- Rule R6: If something chases the tiger and the tiger eats the cat then the cat sees the mouse
axiom R6 : ∀ x : obj, Chases x Tiger ∧ Eats Tiger Cat → Sees Cat Mouse

-- Rule R7: If something sees the dog and it chases the tiger then the tiger chases the dog
axiom R7 : ∀ x : obj, Sees x Dog ∧ Chases x Tiger → Chases Tiger Dog

-- Rule R8: If the tiger is green and the tiger is big then the tiger sees the dog
axiom R8 : Green Tiger ∧ Big Tiger → Sees Tiger Dog

-- Rule R9: If something chases the cat then it sees the dog
axiom R9 : ∀ x : obj, Chases x Cat → Sees x Dog


theorem tiger_sees_dog : Sees Tiger Dog :=
begin
  sorry
end


theorem not_tiger_sees_dog : ¬ Sees Tiger Dog :=
begin
  sorry
end
