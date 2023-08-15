universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Rabbit : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom T1 : Eats Cat Squirrel
axiom T2 : Sees Cat Squirrel
axiom T3 : Eats Cow Squirrel
axiom T4 : Sees Cow Cat
axiom T5 : Round Rabbit
axiom T6 : Sees Rabbit Cat
axiom T7 : Eats Squirrel Rabbit
axiom T8 : Cold Squirrel
axiom T9 : Needs Squirrel Rabbit
axiom T10 : Sees Squirrel Cat

-- If someone sees the cat and they are not green then they see the cow
axiom R1 : ∀ x : obj, Sees x Cat ∧ ¬ Green x → Sees x Cow
-- If the rabbit is kind and the rabbit sees the squirrel then the squirrel needs the rabbit
axiom R2 : ∀ x : obj, Kind Rabbit ∧ Sees Rabbit Squirrel → Needs Squirrel Rabbit
-- Rough people are cold
axiom R3 : ∀ x : obj, Rough x → Cold x
-- If someone sees the rabbit then they are not round
axiom R4 : ∀ x : obj, Sees x Rabbit → ¬ Round x
-- If someone sees the squirrel and they are not green then they need the squirrel
axiom R5 : ∀ x : obj, Sees x Squirrel ∧ ¬ Green x → Needs x Squirrel
-- If someone eats the cow then they see the rabbit
axiom R6 : ∀ x : obj, Eats x Cow → Sees x Rabbit
-- If someone eats the squirrel then they are rough
axiom R7 : ∀ x : obj, Eats x Squirrel → Rough x
-- If someone is cold then they eat the cow
axiom R8 : ∀ x : obj, Cold x → Eats x Cow


theorem not_round_cat : ¬ Round Cat :=
begin
  sorry
end


theorem round_cat : Round Cat :=
begin
  sorry
end
