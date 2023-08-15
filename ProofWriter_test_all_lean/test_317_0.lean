universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Dog : obj
constant Tiger : obj

constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop

axiom A1 : Likes Bear Cow
axiom A2 : ¬ Sees Bear Cow
axiom A3 : Chases Cow Bear
axiom A4 : Cold Cow
axiom A5 : Sees Cow Dog
axiom A6 : Likes Dog Bear
axiom A7 : ¬ Likes Dog Tiger
axiom A8 : ¬ Big Tiger
axiom A9 : ¬ Sees Tiger Bear
axiom A10 : Sees Tiger Cow

-- Rule R1: If something likes the dog then it is round
axiom R1 : ∀ x : obj, Likes x Dog → Round x

-- Rule R2: If something sees the cow then it is round
axiom R2 : ∀ x : obj, Sees x Cow → Round x

-- Rule R3: If the cow is young and the bear does not see the cow then the bear is young
axiom R3 : Young Cow ∧ ¬ Sees Bear Cow → Young Bear

-- Rule R4: If something chases the dog then it likes the tiger
axiom R4 : ∀ x : obj, Chases x Dog → Likes x Tiger

-- Rule R5: If something chases the dog and it is cold then it is young
axiom R5 : ∀ x : obj, Chases x Dog ∧ Cold x → Young x

-- Rule R6: If the bear likes the cow then the cow chases the dog
axiom R6 : Likes Bear Cow → Chases Cow Dog

-- Rule R7: If something sees the bear and the bear is young then the bear is rough
axiom R7 : ∀ x : obj, Sees x Bear ∧ Young Bear → Rough Bear

-- Rule R8: If something chases the bear and the bear is young then the bear chases the dog
axiom R8 : ∀ x : obj, Chases x Bear ∧ Young Bear → Chases Bear Dog


theorem tiger_likes_tiger : Likes Tiger Tiger :=
begin
  sorry
end


theorem not_tiger_likes_tiger : ¬ Likes Tiger Tiger :=
begin
  sorry
end
