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

-- If something visits the squirrel then it likes the cat
axiom R1 : ∀ x : obj, Visits x Squirrel → Likes x Cat
-- If something visits the cat then it likes the cat
axiom R2 : ∀ x : obj, Visits x Cat → Likes x Cat
-- If something likes the squirrel and it is big then the squirrel likes the lion
axiom R3 : ∀ x : obj, Likes x Squirrel ∧ Big x → Likes Squirrel Lion
-- If something likes the cow and it visits the cow then the cow visits the cat
axiom R4 : ∀ x : obj, Likes x Cow ∧ Visits x Cow → Visits Cow Cat
-- If something likes the cat then it chases the squirrel
axiom R5 : ∀ x : obj, Likes x Cat → Chases x Squirrel
-- If something chases the lion and the lion is not cold then it visits the cow
axiom R6 : ∀ x : obj, Chases x Lion ∧ ¬ Cold Lion → Visits x Cow
-- If something chases the lion then the lion chases the cow
axiom R7 : ∀ x : obj, Chases x Lion → Chases Lion Cow
-- If something chases the squirrel then the squirrel visits the cat
axiom R8 : ∀ x : obj, Chases x Squirrel → Visits Squirrel Cat
-- If the cow is rough then the cow chases the cat
axiom R9 : ∀ x : obj, Rough Cow → Chases Cow Cat


theorem squirrel_likes_cat : Likes Squirrel Cat :=
begin
  sorry
end


theorem not_squirrel_likes_cat : ¬ Likes Squirrel Cat :=
begin
  sorry
end
