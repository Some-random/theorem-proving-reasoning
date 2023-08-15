universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Lion : obj
constant Squirrel : obj

constant Nice : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Chases : obj → obj → Prop
constant Big : obj → Prop

axiom T1 : Nice Cat
axiom T2 : Needs Cat Lion
axiom T3 : Visits Cat Lion
axiom T4 : Nice Cow
axiom T5 : Needs Cow Cat
axiom T6 : Nice Lion
axiom T7 : Red Lion
axiom T8 : Young Lion
axiom T9 : Needs Lion Cow
axiom T10 : Needs Lion Squirrel
axiom T11 : Young Squirrel

-- If the cow needs the lion then the lion visits the squirrel
axiom R1 : Needs Cow Lion → Visits Lion Squirrel
-- If something needs the squirrel then it visits the cat
axiom R2 : ∀ x : obj, Needs x Squirrel → Visits x Cat
-- If something needs the cow and it chases the squirrel then the cow is rough
axiom R3 : ∀ x : obj, Needs x Cow ∧ Chases x Squirrel → Rough Cow
-- If something chases the squirrel and it is young then the squirrel needs the cat
axiom R4 : ∀ x : obj, Chases x Squirrel ∧ Young x → Needs Squirrel Cat
-- If something visits the cow then it is rough
axiom R5 : ∀ x : obj, Visits x Cow → Rough x
-- If the squirrel visits the cat and the cat is red then the squirrel chases the cow
axiom R6 : Visits Squirrel Cat ∧ Red Cat → Chases Squirrel Cow
-- All nice things are big
axiom R7 : ∀ x : obj, Nice x → Big x
-- If something is big then it visits the squirrel
axiom R8 : ∀ x : obj, Big x → Visits x Squirrel
-- If something visits the cat and the cat visits the squirrel then the squirrel is nice
axiom R9 : ∀ x : obj, Visits x Cat ∧ Visits Cat Squirrel → Nice Squirrel


theorem not_cow_needs_squirrel : ¬ Needs Cow Squirrel :=
begin
  sorry
end


theorem cow_needs_squirrel : Needs Cow Squirrel :=
begin
  sorry
end
