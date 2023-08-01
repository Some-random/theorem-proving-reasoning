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

axiom R1 : ∀ x : obj, Visits x Rabbit → Likes Rabbit Lion
axiom R2 : ∀ x : obj, Likes x Rabbit ∧ Red Rabbit → Big Rabbit
axiom R3 : ∀ x : obj, Likes x Lion ∧ Sees x Rabbit → Likes Lion Rabbit
axiom R4 : ∀ x : obj, Young x → Likes x Rabbit
axiom R5 : ∀ x : obj, Young x → Sees x Lion
axiom R6 : Big Lion → Visits Lion Dog
axiom R7 : Likes Rabbit Lion → Young Rabbit
axiom R8 : ∀ x : obj, Young x ∧ Likes x Rabbit → Visits x Rabbit

theorem lion_sees_lion : Sees Lion Lion :=
begin
end


theorem not_lion_sees_lion : ¬ Sees Lion Lion :=
begin
end
