universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop

axiom A1 : Sees BaldEagle Cat
axiom A2 : Eats Cat Dog
axiom A3 : Big Cat
axiom A4 : Kind Cat
axiom A5 : Eats Dog BaldEagle
axiom A6 : Eats Dog Cat
axiom A7 : Kind Dog
axiom A8 : Sees Dog Lion
axiom A9 : Eats Lion BaldEagle
axiom A10 : Green Lion
axiom A11 : Nice Lion
axiom A12 : Sees Lion Dog

-- Rule R1: Cold things are green
axiom R1 : ∀ x : obj, Cold x → Green x

-- Rule R2: If something sees the lion then it needs the dog
axiom R2 : ∀ x : obj, Sees x Lion → Needs x Dog

-- Rule R3: If something needs the bald eagle then it sees the lion
axiom R3 : ∀ x : obj, Needs x BaldEagle → Sees x Lion

-- Rule R4: If something is nice then it sees the lion
axiom R4 : ∀ x : obj, Nice x → Sees x Lion

-- Rule R5: If something is big then it sees the cat
axiom R5 : ∀ x : obj, Big x → Sees x Cat

-- Rule R6: If something is green and it needs the dog then it eats the cat
axiom R6 : ∀ x : obj, Green x ∧ Needs x Dog → Eats x Cat

-- Rule R7: If something is green and it eats the cat then the cat needs the bald eagle
axiom R7 : ∀ x : obj, Green x ∧ Eats x Cat → Needs Cat BaldEagle

-- Rule R8: If something eats the bald eagle then the bald eagle is nice
axiom R8 : ∀ x : obj, Eats x BaldEagle → Nice BaldEagle



theorem not_needs_cat_bald_eagle : ¬ Needs Cat BaldEagle :=
begin
  sorry
end


theorem needs_cat_bald_eagle : Needs Cat BaldEagle :=
begin
  sorry
end
