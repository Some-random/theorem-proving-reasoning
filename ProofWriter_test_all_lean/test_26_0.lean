universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Big : obj → Prop

axiom A1 : Nice Bear
axiom A2 : Likes Bear Cat
axiom A3 : Sees Bear Dog
axiom A4 : Eats Cat Bear
axiom A5 : Cold Cat
axiom A6 : Sees Cat Bear
axiom A7 : Eats Dog Bear
axiom A8 : Eats Dog Lion
axiom A9 : Blue Dog
axiom A10 : Sees Dog Cat
axiom A11 : Eats Lion Cat
axiom A12 : Cold Lion
axiom A13 : Likes Lion Bear
axiom A14 : Likes Lion Cat

-- Rule R1: If someone is big then they eat the dog
axiom R1 : ∀ x : obj, Big x → Eats x Dog

-- Rule R2: If someone is cold then they are nice
axiom R2 : ∀ x : obj, Cold x → Nice x

-- Rule R3: If someone is blue and they see the bear then they see the dog
axiom R3 : ∀ x : obj, Blue x ∧ Sees x Bear → Sees x Dog

-- Rule R4: If someone eats the dog then the dog is nice
axiom R4 : ∀ x : obj, Eats x Dog → Nice Dog

-- Rule R5: If someone is blue and they see the dog then they are big
axiom R5 : ∀ x : obj, Blue x ∧ Sees x Dog → Big x

-- Rule R6: If someone eats the bear and they are nice then they are blue
axiom R6 : ∀ x : obj, Eats x Bear ∧ Nice x → Blue x

-- Rule R7: If someone eats the bear and they see the dog then the dog is big
axiom R7 : ∀ x : obj, Eats x Bear ∧ Sees x Dog → Big Dog


theorem not_sees_cat_dog : ¬ Sees Cat Dog :=
begin
  sorry
end


theorem sees_cat_dog : Sees Cat Dog :=
begin
  sorry
end
