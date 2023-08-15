universe u

constant obj : Type u

constant Cow : obj
constant Lion : obj
constant Dog : obj
constant Rabbit : obj

constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Visits : obj → obj → Prop

axiom T1 : Young Cow
axiom T2 : Sees Cow Lion
axiom T3 : Likes Dog Cow
axiom T4 : Likes Dog Rabbit
axiom T5 : Sees Dog Rabbit
axiom T6 : Young Lion
axiom T7 : Sees Lion Cow
axiom T8 : Sees Lion Dog
axiom T9 : Sees Lion Rabbit
axiom T10 : Round Rabbit
axiom T11 : Likes Rabbit Cow

-- If someone visits the rabbit then the rabbit likes the lion
axiom R1 : ∀ x : obj, Visits x Rabbit → Likes Rabbit Lion
-- If someone likes the rabbit and the rabbit is red then the rabbit is big
axiom R2 : ∀ x : obj, Likes x Rabbit ∧ Red Rabbit → Big Rabbit
-- If someone likes the lion and they see the rabbit then the lion likes the rabbit
axiom R3 : ∀ x : obj, Likes x Lion ∧ Sees x Rabbit → Likes Lion Rabbit
-- If someone is young then they like the rabbit
axiom R4 : ∀ x : obj, Young x → Likes x Rabbit
-- If someone is young then they see the lion
axiom R5 : ∀ x : obj, Young x → Sees x Lion
-- If the lion is big then the lion visits the dog
axiom R6 : Big Lion → Visits Lion Dog
-- If the rabbit likes the lion then the rabbit is young
axiom R7 : Likes Rabbit Lion → Young Rabbit
-- If someone is young and they like the rabbit then they visit the rabbit
axiom R8 : ∀ x : obj, Young x ∧ Likes x Rabbit → Visits x Rabbit


theorem not_sees_rabbit_lion : ¬ Sees Rabbit Lion :=
begin
  sorry
end


theorem sees_rabbit_lion : Sees Rabbit Lion :=
begin
  sorry
end
