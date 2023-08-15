universe u

constant obj : Type u

constant Cow : obj
constant Dog : obj
constant Lion : obj
constant Rabbit : obj

constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop

axiom T1 : Likes Cow Lion
axiom T2 : Sees Cow Dog
axiom T3 : Big Dog
axiom T4 : Cold Dog
axiom T5 : Likes Dog Lion
axiom T6 : Nice Lion
axiom T7 : Rough Lion
axiom T8 : ¬ Needs Lion Dog
axiom T9 : Cold Rabbit
axiom T10 : Needs Rabbit Cow
axiom T11 : Needs Rabbit Lion
axiom T12 : Sees Rabbit Dog

-- If someone likes the cow then they are big
axiom R1 : ∀ x : obj, Likes x Cow → Big x
-- If someone needs the lion then the lion needs the cow
axiom R2 : ∀ x : obj, Needs x Lion → Needs Lion Cow
-- If someone likes the lion then they like the rabbit
axiom R3 : ∀ x : obj, Likes x Lion → Likes x Rabbit
-- If someone sees the cow and they are not big then they do not like the lion
axiom R4 : ∀ x : obj, Sees x Cow ∧ ¬ Big x → ¬ Likes x Lion
-- If someone is green then they see the rabbit
axiom R5 : ∀ x : obj, Green x → Sees x Rabbit
-- If someone is green and they like the cow then the cow needs the rabbit
axiom R6 : ∀ x : obj, Green x ∧ Likes x Cow → Needs Cow Rabbit
-- If someone sees the rabbit then the rabbit likes the lion
axiom R7 : ∀ x : obj, Sees x Rabbit → Likes Rabbit Lion
-- If someone likes the lion and they do not see the dog then they need the lion
axiom R8 : ∀ x : obj, Likes x Lion ∧ ¬ Sees x Dog → Needs x Lion
-- If someone likes the lion and they like the rabbit then the lion is green
axiom R9 : ∀ x : obj, Likes x Lion ∧ Likes x Rabbit → Green Lion


theorem not_likes_lion_rabbit : ¬ Likes Lion Rabbit :=
begin
  sorry
end


theorem likes_lion_rabbit : Likes Lion Rabbit :=
begin
  sorry
end
