universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Cat : obj
constant Dog : obj

constant Green : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Rough BaldEagle
axiom A3 : Young BaldEagle
axiom A4 : Needs BaldEagle Squirrel
axiom A5 : Sees BaldEagle Squirrel
axiom A6 : Round Cat
axiom A7 : Needs Cat BaldEagle
axiom A8 : Needs Cat Dog
axiom A9 : Visits Cat BaldEagle
axiom A10 : Needs Dog BaldEagle
axiom A11 : Sees Dog BaldEagle
axiom A12 : Visits Dog Cat
axiom A13 : Needs Squirrel Cat
axiom A14 : Visits Squirrel BaldEagle

-- Rule R1: If something sees the dog then it sees the cat
axiom R1 : ∀ x : obj, Sees x Dog → Sees x Cat

-- Rule R2: If something needs the dog and it is round then it needs the cat
axiom R2 : ∀ x : obj, Needs x Dog ∧ Round x → Needs x Cat

-- Rule R3: If something visits the squirrel then the squirrel visits the dog
axiom R3 : ∀ x : obj, Visits x Squirrel → Visits Squirrel Dog

-- Rule R4: If something is nice then it sees the dog
axiom R4 : ∀ x : obj, Nice x → Sees x Dog

-- Rule R5: If something needs the cat then it is nice
axiom R5 : ∀ x : obj, Needs x Cat → Nice x

-- Rule R6: If something sees the cat then it is green
axiom R6 : ∀ x : obj, Sees x Cat → Green x

-- Rule R7: If something needs the cat then it is rough
axiom R7 : ∀ x : obj, Needs x Cat → Rough x

-- Rule R8: If something visits the squirrel and the squirrel visits the dog then the squirrel visits the bald eagle
axiom R8 : ∀ x : obj, Visits x Squirrel ∧ Visits Squirrel Dog → Visits Squirrel BaldEagle


theorem not_green_cat : ¬ Green Cat :=
begin
  sorry
end


theorem green_cat : Green Cat :=
begin
  sorry
end
