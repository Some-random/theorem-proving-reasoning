universe u

constant obj : Type u

constant Dog : obj
constant Squirrel : obj
constant Tiger : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Kind : obj → Prop

axiom T1 : Chases Dog Squirrel
axiom T2 : Chases Dog Tiger
axiom T3 : Eats Dog Tiger
axiom T4 : Young Dog
axiom T5 : Needs Dog Squirrel
axiom T6 : Chases Rabbit Dog
axiom T7 : Chases Rabbit Tiger
axiom T8 : Chases Squirrel Dog
axiom T9 : Round Squirrel
axiom T10 : Needs Squirrel Rabbit
axiom T11 : Needs Squirrel Tiger
axiom T12 : Chases Tiger Dog
axiom T13 : Eats Tiger Dog
axiom T14 : Eats Tiger Squirrel
axiom T15 : Green Tiger
axiom T16 : Round Tiger

axiom R1 : ∀ x : obj, Green x → Eats x Rabbit
axiom R2 : ∀ x : obj, Needs x Squirrel ∧ Green Squirrel → Needs x Tiger
axiom R3 : ∀ x : obj, Eats x Rabbit → Needs x Squirrel
axiom R4 : ∀ x : obj, Needs Tiger Rabbit → Green Rabbit
axiom R5 : ∀ x : obj, Nice x → Needs x Rabbit
axiom R6 : Round Tiger → Young Tiger
axiom R7 : ∀ x : obj, Chases x Tiger ∧ Kind Tiger → Eats Tiger Rabbit
axiom R8 : ∀ x : obj, Needs x Squirrel → Nice x
axiom R9 : ∀ x : obj, Chases x Tiger → Chases Tiger Squirrel

theorem tiger_needs_rabbit : Needs Tiger Rabbit :=
begin
end


theorem not_tiger_needs_rabbit : ¬ Needs Tiger Rabbit :=
begin
end
