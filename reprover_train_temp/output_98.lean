universe u

constant obj : Type u

constant Dog : obj
constant Rabbit : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Big : obj → Prop
constant Likes : obj → obj → Prop
constant Kind : obj → Prop

axiom T1 : Chases Dog Rabbit
axiom T2 : Chases Mouse Rabbit
axiom T3 : Blue Mouse
axiom T4 : ¬ Rough Mouse
axiom T5 : Needs Rabbit Tiger
axiom T6 : Chases Tiger Dog
axiom T7 : Chases Tiger Rabbit
axiom T8 : Big Tiger
axiom T9 : ¬ Likes Tiger Dog
axiom T10 : Needs Tiger Mouse

axiom R1 : ∀ x : obj, Chases x Tiger → ¬ Needs x Rabbit
axiom R2 : ∀ x : obj, Needs x Rabbit → ¬ Needs x Tiger
axiom R3 : ∀ x : obj, Big x → Kind x
axiom R4 : ∀ x : obj, Needs x Dog → ¬ Likes Dog Mouse
axiom R5 : ∀ x : obj, Blue x ∧ ¬ Needs x Rabbit → Big Rabbit
axiom R6 : ∀ x : obj, Kind x ∧ Chases x Rabbit → Needs x Dog
axiom R7 : ∀ x : obj, Likes x Rabbit → Big x
axiom R8 : ∀ x : obj, Needs Tiger Dog → Likes Dog Rabbit
axiom R9 : ∀ x : obj, Big x ∧ Chases x Mouse → Rough Mouse

theorem dog_is_kind : Kind Dog :=
begin
  apply R3,
  apply R7,
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Dog is not kind

theorem not_dog_is_kind : ¬ Kind Dog :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either.
-- The answer is False