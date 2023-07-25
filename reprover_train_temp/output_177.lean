universe u

constant obj : Type u

constant Bear : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop

axiom T1 : Eats Bear Squirrel
axiom T2 : Eats Mouse Squirrel
axiom T3 : Visits Mouse Bear
axiom T4 : Visits Mouse Rabbit
axiom T5 : Sees Rabbit Mouse
axiom T6 : Sees Rabbit Squirrel
axiom T7 : Big Squirrel
axiom T8 : Rough Squirrel
axiom T9 : Sees Squirrel Bear
axiom T10 : Visits Squirrel Mouse
axiom T11 : Visits Squirrel Rabbit

axiom R1 : Visits Bear Squirrel → Eats Squirrel Rabbit
axiom R2 : ∀ x : obj, Eats x Squirrel ∧ Sees x Bear → Eats Bear Rabbit
axiom R3 : ∀ x : obj, Kind x → Blue x
axiom R4 : ∀ x : obj, Rough x ∧ Visits x Rabbit → Eats x Mouse
axiom R5 : Visits Bear Squirrel → Big Squirrel
axiom R6 : ∀ x : obj, Big x ∧ Eats x Mouse → Kind Mouse
axiom R7 : ∀ x : obj, Blue x → Sees x Bear
axiom R8 : ∀ x : obj, Sees x Mouse → Eats x Bear

theorem bear_eats_rabbit : Eats Bear Rabbit :=
begin
  apply R2 Mouse,
  split,
  exact T2,
  apply R7,
  apply R3,
  apply R6 Squirrel,
  split,
  exact T7,
  apply R4 Squirrel,
  split,
  exact T8,
  exact T11,
end

-- The answer is True