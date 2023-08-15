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

-- Rule R1: If someone sees the squirrel and the squirrel sees the bear then the squirrel needs the mouse
axiom R1 : ∀ x : obj, Sees x Squirrel ∧ Sees Squirrel Bear → Needs Squirrel Mouse

-- Rule R2: If someone needs the rabbit and the rabbit sees the mouse then the mouse sees the rabbit
axiom R2 : ∀ x : obj, Needs x Rabbit ∧ Sees Rabbit Mouse → Sees Mouse Rabbit

-- Rule R3: If someone is rough then they need the rabbit
axiom R3 : ∀ x : obj, Rough x → Needs x Rabbit

-- Rule R4: If someone needs the rabbit then the rabbit sees the squirrel
axiom R4 : ∀ x : obj, Needs x Rabbit → Sees Rabbit Squirrel

-- Rule R5: If someone sees the squirrel then they are rough
axiom R5 : ∀ x : obj, Sees x Squirrel → Rough x

-- Rule R6: If someone is nice and they need the mouse then they are rough
axiom R6 : ∀ x : obj, Nice x ∧ Needs x Mouse → Rough x

-- Rule R7: If someone is green then they are kind
axiom R7 : ∀ x : obj, Green x → Kind x


theorem bear_is_rough : Rough Bear :=
begin
  sorry
end


theorem not_rough_Bear : ¬ Rough Bear :=
begin
  sorry
end
