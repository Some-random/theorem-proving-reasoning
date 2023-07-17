universe u
constant obj : Type u

constant Cow : obj
constant Dog : obj
constant Rabbit : obj

constant Big : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Blue : obj → Prop

axiom T1 : Big Cow
axiom T2 : Needs Cow Dog
axiom T3 : Sees Dog Rabbit
axiom T4 : Chases Rabbit Cow
axiom T5 : Chases Rabbit Dog
axiom T6 : Big Rabbit
axiom T7 : Sees Rabbit Dog

axiom R1 : Blue Cow ∧ Needs Cow Rabbit → Needs Cow Dog
axiom R2 : Chases Cow Dog → Sees Cow Rabbit
axiom R3 : ∀ x : obj, Big x → Chases x Dog

theorem cow_sees_rabbit : Sees Cow Rabbit :=
begin
  apply R2,
  exact R3 Cow T1,
end

-- The answer is True