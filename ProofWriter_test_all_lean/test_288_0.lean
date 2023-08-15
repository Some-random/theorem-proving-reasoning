universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Mouse : obj

constant Round : obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop

axiom A1 : Round Bear
axiom A2 : Young Bear
axiom A3 : Needs Bear Dog
axiom A4 : Sees Bear Cat
axiom A5 : Eats Cat Bear
axiom A6 : Green Cat
axiom A7 : Needs Cat Mouse
axiom A8 : Eats Dog Cat
axiom A9 : Cold Dog
axiom A10 : Green Dog
axiom A11 : Needs Dog Cat
axiom A12 : Sees Dog Bear
axiom A13 : Eats Mouse Dog
axiom A14 : Cold Mouse
axiom A15 : Needs Mouse Bear
axiom A16 : Needs Mouse Dog

-- Rule R1: If something eats the mouse then it needs the dog
axiom R1 : ∀ x : obj, Eats x Mouse → Needs x Dog

-- Rule R2: If the mouse sees the bear then the bear needs the mouse
axiom R2 : ∀ x : obj, Sees Mouse Bear → Needs Bear Mouse

-- Rule R3: If something eats the dog and the dog eats the bear then it needs the bear
axiom R3 : ∀ x : obj, Eats x Dog ∧ Eats Dog Bear → Needs x Bear

-- Rule R4: If something is round and it eats the bear then it sees the bear
axiom R4 : ∀ x : obj, Round x ∧ Eats x Bear → Sees x Bear

-- Rule R5: If something eats the bear then it is round
axiom R5 : ∀ x : obj, Eats x Bear → Round x

-- Rule R6: If something eats the dog and it needs the cat then it eats the bear
axiom R6 : ∀ x : obj, Eats x Dog ∧ Needs x Cat → Eats x Bear

-- Rule R7: If something needs the mouse then the mouse needs the cat
axiom R7 : ∀ x : obj, Needs x Mouse → Needs Mouse Cat


theorem not_dog_eats_bear : ¬ Eats Dog Bear :=
begin
  sorry
end


theorem dog_eats_bear : Eats Dog Bear :=
begin
  sorry
end
