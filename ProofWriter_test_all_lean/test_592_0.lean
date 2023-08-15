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

axiom A1 : Chases Dog Squirrel
axiom A2 : Chases Dog Tiger
axiom A3 : Eats Dog Tiger
axiom A4 : Young Dog
axiom A5 : Needs Dog Squirrel
axiom A6 : Chases Rabbit Dog
axiom A7 : Chases Rabbit Tiger
axiom A8 : Chases Squirrel Dog
axiom A9 : Round Squirrel
axiom A10 : Needs Squirrel Rabbit
axiom A11 : Needs Squirrel Tiger
axiom A12 : Chases Tiger Dog
axiom A13 : Eats Tiger Dog
axiom A14 : Eats Tiger Squirrel
axiom A15 : Green Tiger
axiom A16 : Round Tiger

-- Rule R1: If someone is green then they eat the rabbit
axiom R1 : ∀ x : obj, Green x → Eats x Rabbit

-- Rule R2: If someone needs the squirrel and the squirrel is green then they need the tiger
axiom R2 : ∀ x : obj, Needs x Squirrel ∧ Green Squirrel → Needs x Tiger

-- Rule R3: If someone eats the rabbit then they need the squirrel
axiom R3 : ∀ x : obj, Eats x Rabbit → Needs x Squirrel

-- Rule R4: If the tiger needs the rabbit then the rabbit is green
axiom R4 : ∀ x : obj, Needs Tiger Rabbit → Green Rabbit

-- Rule R5: If someone is nice then they need the rabbit
axiom R5 : ∀ x : obj, Nice x → Needs x Rabbit

-- Rule R6: If the tiger is round then the tiger is young
axiom R6 : ∀ x : obj, Round Tiger → Young Tiger

-- Rule R7: If someone chases the tiger and the tiger is kind then the tiger eats the rabbit
axiom R7 : ∀ x : obj, Chases x Tiger ∧ Kind Tiger → Eats Tiger Rabbit

-- Rule R8: If someone needs the squirrel then they are nice
axiom R8 : ∀ x : obj, Needs x Squirrel → Nice x

-- Rule R9: If someone chases the tiger then the tiger chases the squirrel
axiom R9 : ∀ x : obj, Chases x Tiger → Chases Tiger Squirrel


theorem tiger_needs_rabbit : Needs Tiger Rabbit :=
begin
  sorry
end


theorem not_tiger_needs_rabbit : ¬ Needs Tiger Rabbit :=
begin
  sorry
end
