universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Rabbit : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop

axiom T1 : Eats BaldEagle Dog
axiom T2 : Sees BaldEagle Dog
axiom T3 : Cold Dog
axiom T4 : Likes Dog Squirrel
axiom T5 : Sees Dog Rabbit
axiom T6 : Eats Rabbit Dog
axiom T7 : Eats Rabbit Squirrel
axiom T8 : Likes Rabbit Dog
axiom T9 : Sees Rabbit Squirrel
axiom T10 : Likes Squirrel BaldEagle

axiom R1 : ∀ x : obj, Cold x ∧ Likes x BaldEagle → Eats x Rabbit
axiom R2 : ∀ x : obj, Likes x Dog ∧ Sees x Squirrel → Likes Dog BaldEagle
axiom R3 : ∀ x : obj, Sees BaldEagle Dog ∧ Cold BaldEagle → Likes BaldEagle Dog
axiom R4 : ∀ x : obj, Likes x Rabbit → Young x
axiom R5 : ∀ x : obj, Likes x Dog ∧ Likes Dog Squirrel → Likes x BaldEagle
axiom R6 : ∀ x : obj, Red BaldEagle ∧ Likes BaldEagle Squirrel → Eats Squirrel Rabbit
axiom R7 : ∀ x : obj, Likes Dog BaldEagle ∧ Sees BaldEagle Dog → Cold BaldEagle
axiom R8 : ∀ x : obj, Sees x BaldEagle → Young BaldEagle

theorem not_eat_BaldEagle_Rabbit : ¬ Eats BaldEagle Rabbit :=
begin
  sorry
end


theorem eat_BaldEagle_Rabbit : Eats BaldEagle Rabbit :=
begin
  sorry
end
