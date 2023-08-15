universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Cat : obj
constant Cow : obj

constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Blue : obj → Prop
constant Visits : obj → obj → Prop
constant Nice : obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Needs BaldEagle Lion
axiom A3 : Sees BaldEagle Cat
axiom A4 : Sees BaldEagle Lion
axiom A5 : Sees Cat BaldEagle
axiom A6 : Sees Cow BaldEagle
axiom A7 : Needs Lion BaldEagle

-- Rule R1: If someone sees the cat and the cat is green then they visit the cat
axiom R1 : ∀ x : obj, Sees x Cat ∧ Green Cat → Visits x Cat

-- Rule R2: If someone needs the cat and the cat needs the bald eagle then they are blue
axiom R2 : ∀ x : obj, Needs x Cat ∧ Needs Cat BaldEagle → Blue x

-- Rule R3: If someone is blue and they need the lion then they see the lion
axiom R3 : ∀ x : obj, Blue x ∧ Needs x Lion → Sees x Lion

-- Rule R4: If someone sees the cow then the cow needs the bald eagle
axiom R4 : ∀ x : obj, Sees x Cow → Needs Cow BaldEagle

-- Rule R5: If someone needs the bald eagle then they see the lion
axiom R5 : ∀ x : obj, Needs x BaldEagle → Sees x Lion

-- Rule R6: If someone needs the cat then the cat is blue
axiom R6 : ∀ x : obj, Needs x Cat → Blue Cat

-- Rule R7: If someone visits the lion and they are nice then the lion visits the cat
axiom R7 : ∀ x : obj, Visits x Lion ∧ Nice x → Visits Lion Cat

-- Rule R8: If someone needs the bald eagle and they see the lion then they see the cow
axiom R8 : ∀ x : obj, Needs x BaldEagle ∧ Sees x Lion → Sees x Cow



theorem not_needs_cow_bald_eagle : ¬ Needs Cow BaldEagle :=
begin
  sorry
end


theorem needs_cow_bald_eagle : Needs Cow BaldEagle :=
begin
  sorry
end
