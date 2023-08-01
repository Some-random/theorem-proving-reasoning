universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Kind : obj → obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Needs : obj → obj → Prop
constant Cold : obj → Prop

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

axiom R1 : ∀ x : obj, Cold x → Green x
axiom R2 : ∀ x : obj, Sees x Lion → Needs x Dog
axiom R3 : ∀ x : obj, Needs x BaldEagle → Sees x Lion
axiom R4 : ∀ x : obj, Nice x → Sees x Lion
axiom R5 : ∀ x : obj, Big x → Sees x Cat
axiom R6 : ∀ x : obj, Green x ∧ Needs x Dog → Eats x Cat
axiom R7 : ∀ x : obj, Green x ∧ Eats x Cat → Needs Cat BaldEagle
axiom R8 : ∀ x : obj, Eats x BaldEagle → Nice BaldEagle

theorem not_needs_cat_bald_eagle : ¬ Needs Cat BaldEagle :=
begin
end


theorem needs_cat_bald_eagle : Needs Cat BaldEagle :=
begin
end
