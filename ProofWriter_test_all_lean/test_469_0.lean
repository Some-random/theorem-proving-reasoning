universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Dog : obj

constant Blue : obj → Prop
constant Eats : obj → obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Chases : obj → obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue Bear
axiom A2 : Eats Cat Cow
axiom A3 : Red Cat
axiom A4 : Round Cat
axiom A5 : ¬ Needs Cat Cow
axiom A6 : ¬ Needs Cat Dog
axiom A7 : ¬ Round Cow
axiom A8 : Chases Dog Bear
axiom A9 : Chases Dog Cat
axiom A10 : Round Dog

-- Rule R1: If the bear is not green then the bear eats the cat
axiom R1 : ¬ Green Bear → Eats Bear Cat

-- Rule R2: If the dog needs the cat then the dog chases the bear
axiom R2 : Needs Dog Cat → Chases Dog Bear

-- Rule R3: If the cow needs the bear then the cow is green
axiom R3 : Needs Cow Bear → Green Cow

-- Rule R4: If the dog chases the cow then the dog needs the bear
axiom R4 : Chases Dog Cow → Needs Dog Bear

-- Rule R5: Red things are nice
axiom R5 : ∀ x : obj, Red x → Nice x

-- Rule R6: If something is green then it needs the cow
axiom R6 : ∀ x : obj, Green x → Needs x Cow

-- Rule R7: If something is nice then it eats the bear
axiom R7 : ∀ x : obj, Nice x → Eats x Bear

-- Rule R8: If something is nice and it eats the bear then the bear is red
axiom R8 : ∀ x : obj, Nice x ∧ Eats x Bear → Red Bear

-- Rule R9: If something eats the dog and it is not red then the dog does not need the cow
axiom R9 : ∀ x : obj, Eats x Dog ∧ ¬ Red x → ¬ Needs Dog Cow


theorem not_needs_dog_cow : ¬ Needs Dog Cow :=
begin
  sorry
end


theorem needs_dog_cow : Needs Dog Cow :=
begin
  sorry
end
