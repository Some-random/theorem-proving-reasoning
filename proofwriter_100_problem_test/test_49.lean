universe u

constant obj : Type u

constant Bear : obj
constant Rabbit : obj
constant Squirrel : obj
constant Mouse : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop

axiom A1 : Eats Bear Rabbit
axiom A2 : Sees Bear Squirrel
axiom A3 : Eats Mouse Squirrel
axiom A4 : Kind Mouse
axiom A5 : Sees Mouse Rabbit
axiom A6 : Needs Rabbit Squirrel
axiom A7 : Eats Squirrel Bear

axiom R1 : ∀ x : obj, Sees x Squirrel ∧ Sees Squirrel Bear → Needs Squirrel Mouse
axiom R2 : ∀ x : obj, Needs x Rabbit ∧ Sees Rabbit Mouse → Sees Mouse Rabbit
axiom R3 : ∀ x : obj, Rough x → Needs x Rabbit
axiom R4 : ∀ x : obj, Needs x Rabbit → Sees Rabbit Squirrel
axiom R5 : ∀ x : obj, Sees x Squirrel → Rough x
axiom R6 : ∀ x : obj, Nice x ∧ Needs x Mouse → Rough x
axiom R7 : ∀ x : obj, Green x → Kind x

theorem bear_is_rough : Rough Bear :=
begin
  sorry
end


theorem not_rough_Bear : ¬ Rough Bear :=
begin
  sorry
end
