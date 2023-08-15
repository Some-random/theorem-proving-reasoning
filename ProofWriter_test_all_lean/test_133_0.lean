universe u

constant obj : Type u

constant Cow : obj
constant Squirrel : obj
constant Dog : obj
constant Rabbit : obj

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

-- If someone chases the cow then the cow is big
axiom R1 : ∀ x : obj, Chases x Cow → Big Cow
-- If someone likes the rabbit and they do not see the squirrel then they are big
axiom R2 : ∀ x : obj, Likes x Rabbit ∧ ¬ Sees x Squirrel → Big x
-- If someone is big then they like the rabbit
axiom R3 : ∀ x : obj, Big x → Likes x Rabbit
-- If someone is young then they do not see the dog
axiom R4 : ∀ x : obj, Young x → ¬ Sees x Dog
-- If someone is blue then they chase the cow
axiom R5 : ∀ x : obj, Blue x → Chases x Cow
-- If someone likes the rabbit then they like the cow
axiom R6 : ∀ x : obj, Likes x Rabbit → Likes x Cow
-- If someone likes the cow then they see the cow
axiom R7 : ∀ x : obj, Likes x Cow → Sees x Cow
-- If someone sees the cow and they chase the squirrel then they see the rabbit
axiom R8 : ∀ x : obj, Sees x Cow ∧ Chases x Squirrel → Sees x Rabbit


theorem not_cow_chases_squirrel : ¬ Chases Cow Squirrel :=
begin
  sorry
end


theorem cow_chases_squirrel : Chases Cow Squirrel :=
begin
  sorry
end
