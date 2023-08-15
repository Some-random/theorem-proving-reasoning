universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Dog : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop

axiom A1 : Rough BaldEagle
axiom A2 : Eats Bear Dog
axiom A3 : Big Bear
axiom A4 : Needs Bear Dog
axiom A5 : Sees Bear Cat
axiom A6 : Sees Bear Dog
axiom A7 : Eats Cat Dog
axiom A8 : Nice Dog
axiom A9 : Rough Dog
axiom A10 : Needs Dog Bear
axiom A11 : Needs Dog Cat
axiom A12 : Sees Dog BaldEagle

-- Rule R1: If something eats the bear then the bear eats the bald eagle
axiom R1 : ∀ x : obj, Eats x Bear → Eats Bear BaldEagle

-- Rule R2: If something needs the cat then the cat eats the bald eagle
axiom R2 : ∀ x : obj, Needs x Cat → Eats Cat BaldEagle

-- Rule R3: If something sees the cat and the cat is green then the cat eats the bear
axiom R3 : ∀ x : obj, Sees x Cat ∧ Green Cat → Eats Cat Bear

-- Rule R4: If something eats the bear and it eats the dog then the bear is rough
axiom R4 : ∀ x : obj, Eats x Bear ∧ Eats x Dog → Rough Bear

-- Rule R5: If something eats the bald eagle then it is green
axiom R5 : ∀ x : obj, Eats x BaldEagle → Green x


theorem not_rough_Bear : ¬ Rough Bear :=
begin
  sorry
end


theorem rough_Bear : Rough Bear :=
begin
  sorry
end
