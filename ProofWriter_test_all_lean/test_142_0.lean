universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Dog : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop

axiom A1 : Big Bear
axiom A2 : Cold Bear
axiom A3 : Likes Bear Cat
axiom A4 : Visits Bear Cat
axiom A5 : Visits Bear Cow
axiom A6 : Green Cat
axiom A7 : Needs Cat Bear
axiom A8 : Needs Cow Dog
axiom A9 : Blue Dog
axiom A10 : Likes Dog Bear
axiom A11 : Visits Dog Cow

-- Rule R1: If something is blue then it is red
axiom R1 : ∀ x : obj, Blue x → Red x

-- Rule R2: If something likes the cow then the cow is big
axiom R2 : ∀ x : obj, Likes x Cow → Big Cow

-- Rule R3: If the cow needs the cat then the cow likes the cat
axiom R3 : ∀ x : obj, Needs Cow Cat → Likes Cow Cat

-- Rule R4: If something is blue then it is cold
axiom R4 : ∀ x : obj, Blue x → Cold x

-- Rule R5: If something is big and it likes the dog then the dog likes the cow
axiom R5 : ∀ x : obj, Big x ∧ Likes x Dog → Likes Dog Cow

-- Rule R6: If something needs the bear and the bear needs the dog then the bear is red
axiom R6 : ∀ x : obj, Needs x Bear ∧ Needs Bear Dog → Red Bear

-- Rule R7: If something likes the bear and it is big then it needs the dog
axiom R7 : ∀ x : obj, Likes x Bear ∧ Big x → Needs x Dog

-- Rule R8: If something is big then it needs the cat
axiom R8 : ∀ x : obj, Big x → Needs x Cat

-- Rule R9: If the bear is big then the bear likes the dog
axiom R9 : ∀ x : obj, Big Bear → Likes Bear Dog


theorem dog_is_big : Big Dog :=
begin
  sorry
end


theorem not_big_dog : ¬ Big Dog :=
begin
  sorry
end
