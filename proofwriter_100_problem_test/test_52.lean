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

axiom T1 : Big Cat
axiom T2 : Cold Cat
axiom T3 : Likes Cat Cow
axiom T4 : Visits Cat Lion
axiom T5 : Blue Cow
axiom T6 : Likes Cow Lion
axiom T7 : ¬ Visits Cow Lion
axiom T8 : Chases Lion Cat
axiom T9 : ¬ Big Lion
axiom T10 : Rough Lion
axiom T11 : Visits Lion Cat
axiom T12 : Likes Squirrel Cow

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
  sorry
end


theorem not_cat_likes_lion : ¬ Likes Cat Lion :=
begin
  sorry
end
