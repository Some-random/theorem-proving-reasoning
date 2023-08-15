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

axiom T1 : Blue Bear
axiom T2 : Eats Cat Cow
axiom T3 : Red Cat
axiom T4 : Round Cat
axiom T5 : ¬ Needs Cat Cow
axiom T6 : ¬ Needs Cat Dog
axiom T7 : ¬ Round Cow
axiom T8 : Chases Dog Bear
axiom T9 : Chases Dog Cat
axiom T10 : Round Dog

-- If the bear is not green then the bear eats the cat
axiom R1 : ¬ Green Bear → Eats Bear Cat
-- If the dog needs the cat then the dog chases the bear
axiom R2 : Needs Dog Cat → Chases Dog Bear
-- If the cow needs the bear then the cow is green
axiom R3 : Needs Cow Bear → Green Cow
-- If the dog chases the cow then the dog needs the bear
axiom R4 : Chases Dog Cow → Needs Dog Bear
-- Red things are nice
axiom R5 : ∀ x : obj, Red x → Nice x
-- If something is green then it needs the cow
axiom R6 : ∀ x : obj, Green x → Needs x Cow
-- If something is nice then it eats the bear
axiom R7 : ∀ x : obj, Nice x → Eats x Bear
-- If something is nice and it eats the bear then the bear is red
axiom R8 : ∀ x : obj, Nice x ∧ Eats x Bear → Red Bear
-- If something eats the dog and it is not red then the dog does not need the cow
axiom R9 : ∀ x : obj, Eats x Dog ∧ ¬ Red x → ¬ Needs Dog Cow


theorem not_bear_eats_bear : ¬ Eats Bear Bear :=
begin
  sorry
end


theorem bear_eats_bear : Eats Bear Bear :=
begin
  sorry
end
