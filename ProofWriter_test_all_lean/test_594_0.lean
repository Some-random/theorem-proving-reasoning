universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Lion : obj

constant Big : obj → Prop
constant Rough : obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Round : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : Rough BaldEagle
axiom A3 : Sees BaldEagle Lion
axiom A4 : Chases Cat Lion
axiom A5 : Red Cat
axiom A6 : Rough Cat
axiom A7 : Sees Cat BaldEagle
axiom A8 : ¬ Eats Cow BaldEagle
axiom A9 : ¬ Young Cow
axiom A10 : Eats Lion Cow
axiom A11 : Rough Lion

-- Rule R1: If something sees the bald eagle and the bald eagle chases the cat then it is red
axiom R1 : ∀ x : obj, Sees x BaldEagle ∧ Chases BaldEagle Cat → Red x

-- Rule R2: If something is big and rough then it chases the cat
axiom R2 : ∀ x : obj, Big x ∧ Rough x → Chases x Cat

-- Rule R3: If something chases the cow and the cow chases the cat then it is rough
axiom R3 : ∀ x : obj, Chases x Cow ∧ Chases Cow Cat → Rough x

-- Rule R4: If something chases the cow then it eats the bald eagle
axiom R4 : ∀ x : obj, Chases x Cow → Eats x BaldEagle

-- Rule R5: If something chases the cat then it sees the bald eagle
axiom R5 : ∀ x : obj, Chases x Cat → Sees x BaldEagle

-- Rule R6: If something is red then it chases the cow
axiom R6 : ∀ x : obj, Red x → Chases x Cow

-- Rule R7: If something is round and it chases the lion then it does not eat the lion
axiom R7 : ∀ x : obj, Round x ∧ Chases x Lion → ¬ Eats x Lion

-- Rule R8: If the cow chases the lion then the lion does not chase the bald eagle
axiom R8 : ∀ x : obj, Chases Cow Lion → ¬ Chases Lion BaldEagle


theorem not_cat_chases_cow : ¬ Chases Cat Cow :=
begin
  sorry
end


theorem cat_chases_cow : Chases Cat Cow :=
begin
  sorry
end
