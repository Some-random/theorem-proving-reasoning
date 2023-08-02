universe u

constant obj : Type u

constant Cow : obj
constant Squirrel : obj
constant Rabbit : obj
constant Dog : obj

constant Chases : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop

axiom T1 : Chases Cow Squirrel
axiom T2 : Young Cow
axiom T3 : Sees Cow Squirrel
axiom T4 : Round Dog
axiom T5 : Likes Dog Rabbit
axiom T6 : Likes Dog Squirrel
axiom T7 : Sees Dog Rabbit
axiom T8 : Chases Rabbit Cow
axiom T9 : ¬ Chases Rabbit Dog
axiom T10 : Chases Squirrel Rabbit
axiom T11 : Young Squirrel
axiom T12 : Likes Squirrel Cow

axiom R1 : ∀ x : obj, Chases x Cow → Big x
axiom R2 : ∀ x : obj, Likes x Rabbit ∧ ¬ Sees x Squirrel → Big x
axiom R3 : ∀ x : obj, Big x → Likes x Rabbit
axiom R4 : ∀ x : obj, Young x → ¬ Sees x Dog
axiom R5 : ∀ x : obj, Blue x → Chases x Cow
axiom R6 : ∀ x : obj, Likes x Rabbit → Likes x Cow
axiom R7 : ∀ x : obj, Likes x Cow → Sees x Cow
axiom R8 : ∀ x : obj, Sees x Cow ∧ Chases x Squirrel → Sees x Rabbit

theorem not_sees_squirrel_rabbit : ¬ Sees Squirrel Rabbit :=
begin
  sorry
end


theorem sees_squirrel_rabbit : Sees Squirrel Rabbit :=
begin
  sorry
end
