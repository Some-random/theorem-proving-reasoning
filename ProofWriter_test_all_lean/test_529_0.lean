universe u

constant obj : Type u

constant Dog : obj
constant Squirrel : obj
constant Lion : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop

axiom T1 : Chases Dog Squirrel
axiom T2 : Chases Lion Rabbit
axiom T3 : Needs Lion Dog
axiom T4 : Visits Lion Dog
axiom T5 : Visits Lion Rabbit
axiom T6 : Cold Rabbit
axiom T7 : Visits Squirrel Dog

-- If something is rough and it chases the rabbit then the rabbit is rough
axiom R1 : ∀ x : obj, Rough x ∧ Chases x Rabbit → Rough Rabbit
-- If something chases the squirrel then it visits the dog
axiom R2 : ∀ x : obj, Chases x Squirrel → Visits x Dog
-- If something chases the lion then it is rough
axiom R3 : ∀ x : obj, Chases x Lion → Rough x
-- If something is green then it needs the dog
axiom R4 : ∀ x : obj, Green x → Needs x Dog
-- If something is green then it needs the lion
axiom R5 : ∀ x : obj, Green x → Needs x Lion
-- If something visits the dog then it is green
axiom R6 : ∀ x : obj, Visits x Dog → Green x
-- If something needs the lion then it chases the lion
axiom R7 : ∀ x : obj, Needs x Lion → Chases x Lion
-- All cold things are green
axiom R8 : ∀ x : obj, Cold x → Green x
-- If the rabbit needs the lion and the lion is cold then the lion visits the squirrel
axiom R9 : ∀ x : obj, Needs Rabbit Lion ∧ Cold Lion → Visits Lion Squirrel


theorem dog_is_green : Green Dog :=
begin
  sorry
end


theorem not_green_Dog : ¬ Green Dog :=
begin
  sorry
end
