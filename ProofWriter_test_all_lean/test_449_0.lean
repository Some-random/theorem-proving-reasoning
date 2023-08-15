universe u

constant obj : Type u

constant Bear : obj
constant Rabbit : obj
constant Mouse : obj
constant Tiger : obj

constant Big : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop

axiom A1 : Big Bear
axiom A2 : Needs Bear Rabbit
axiom A3 : Sees Bear Rabbit
axiom A4 : Likes Mouse Tiger
axiom A5 : Needs Mouse Rabbit
axiom A6 : Sees Mouse Rabbit
axiom A7 : Sees Mouse Tiger
axiom A8 : Round Rabbit
axiom A9 : Likes Rabbit Tiger
axiom A10 : Needs Rabbit Tiger
axiom A11 : Red Tiger
axiom A12 : Likes Tiger Mouse

-- Rule R1: If something sees the mouse and it likes the mouse then it sees the bear
axiom R1 : ∀ x : obj, Sees x Mouse ∧ Likes x Mouse → Sees x Bear

-- Rule R2: If something needs the tiger then it likes the mouse
axiom R2 : ∀ x : obj, Needs x Tiger → Likes x Mouse

-- Rule R3: If something is red then it likes the mouse
axiom R3 : ∀ x : obj, Red x → Likes x Mouse

-- Rule R4: If something likes the mouse then it sees the mouse
axiom R4 : ∀ x : obj, Likes x Mouse → Sees x Mouse

-- Rule R5: If something needs the mouse then the mouse sees the tiger
axiom R5 : ∀ x : obj, Needs x Mouse → Sees Mouse Tiger

-- Rule R6: If the rabbit is nice then the rabbit likes the bear
axiom R6 : ∀ x : obj, Nice Rabbit → Likes Rabbit Bear

-- Rule R7: If something is big and nice then it needs the bear
axiom R7 : ∀ x : obj, Big x ∧ Nice x → Needs x Bear

-- Rule R8: If something is round and it sees the bear then the bear likes the mouse
axiom R8 : ∀ x : obj, Round x ∧ Sees x Bear → Likes Bear Mouse

-- Rule R9: If something likes the rabbit and the rabbit needs the tiger then the tiger likes the rabbit
axiom R9 : ∀ x : obj, Likes x Rabbit ∧ Needs Rabbit Tiger → Likes Tiger Rabbit


theorem bear_likes_tiger : Likes Bear Tiger :=
begin
  sorry
end


theorem not_bear_likes_tiger : ¬ Likes Bear Tiger :=
begin
  sorry
end
