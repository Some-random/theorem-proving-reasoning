universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Lion : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Chases : obj → obj → Prop

axiom A1 : Big Cat
axiom A2 : Cold Cat
axiom A3 : Likes Cat Cow
axiom A4 : Visits Cat Lion
axiom A5 : Blue Cow
axiom A6 : Likes Cow Lion
axiom A7 : ¬ Visits Cow Lion
axiom A8 : Chases Lion Cat
axiom A9 : ¬ Big Lion
axiom A10 : Rough Lion
axiom A11 : Visits Lion Cat
axiom A12 : Likes Squirrel Cow

axiom R1 : ∀ x : obj, Visits x Squirrel → Likes x Cat
axiom R2 : ∀ x : obj, Visits x Cat → Likes x Cat
axiom R3 : ∀ x : obj, Likes x Squirrel ∧ Big x → Likes Squirrel Lion
axiom R4 : ∀ x : obj, Likes x Cow ∧ Visits x Cow → Visits Cow Cat
axiom R5 : ∀ x : obj, Likes x Cat → Chases x Squirrel
axiom R6 : ∀ x : obj, Chases x Lion ∧ ¬ Cold Lion → Visits x Cow
axiom R7 : ∀ x : obj, Chases x Lion → Chases Lion Cow
axiom R8 : ∀ x : obj, Chases x Squirrel → Visits Squirrel Cat
axiom R9 : Rough Cow → Chases Cow Cat

theorem cat_likes_lion : Likes Cat Lion :=
begin
end


theorem not_cat_likes_lion : ¬ Likes Cat Lion :=
begin
end
