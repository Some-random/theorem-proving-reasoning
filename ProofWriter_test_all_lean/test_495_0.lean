universe u

constant obj : Type u

constant Cow : obj
constant Lion : obj
constant Rabbit : obj
constant Squirrel : obj

constant Rough : obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom T1 : ¬ Rough Cow
axiom T2 : Green Lion
axiom T3 : Needs Lion Cow
axiom T4 : Needs Lion Rabbit
axiom T5 : ¬ Rough Rabbit
axiom T6 : Chases Squirrel Rabbit
axiom T7 : ¬ Rough Squirrel

-- If something needs the squirrel then it likes the cow
axiom R1 : ∀ x : obj, Needs x Squirrel → Likes x Cow
-- If something needs the cow then it needs the squirrel
axiom R2 : ∀ x : obj, Needs x Cow → Needs x Squirrel
-- If something is round and young then it does not need the squirrel
axiom R3 : ∀ x : obj, Round x ∧ Young x → ¬ Needs x Squirrel
-- If something is round then it does not need the rabbit
axiom R4 : ∀ x : obj, Round x → ¬ Needs x Rabbit
-- If something likes the rabbit then it chases the lion
axiom R5 : ∀ x : obj, Likes x Rabbit → Chases x Lion
-- If something needs the lion then it chases the squirrel
axiom R6 : ∀ x : obj, Needs x Lion → Chases x Squirrel
-- If the squirrel likes the cow then the cow does not need the rabbit
axiom R7 : ∀ x : obj, Likes Squirrel Cow → ¬ Needs Cow Rabbit
-- If the squirrel likes the cow and the squirrel is not green then the squirrel needs the rabbit
axiom R8 : ∀ x : obj, Likes Squirrel Cow ∧ ¬ Green Squirrel → Needs Squirrel Rabbit
-- If something needs the squirrel then the squirrel needs the cow
axiom R9 : ∀ x : obj, Needs x Squirrel → Needs Squirrel Cow


theorem not_rough_rabbit : ¬ Rough Rabbit :=
begin
  sorry
end


theorem rough_rabbit : Rough Rabbit :=
begin
  sorry
end
