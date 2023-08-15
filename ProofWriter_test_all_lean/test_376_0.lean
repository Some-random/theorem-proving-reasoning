universe u

constant obj : Type u

constant Bear : obj
constant Squirrel : obj
constant Dog : obj
constant Tiger : obj

constant Big : obj → Prop
constant Needs : obj → obj → Prop
constant Nice : obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Green : obj → Prop

axiom A1 : ¬ Big Bear
axiom A2 : Needs Bear Squirrel
axiom A3 : Nice Dog
axiom A4 : Sees Dog Tiger
axiom A5 : Sees Squirrel Bear
axiom A6 : Sees Squirrel Tiger
axiom A7 : Eats Tiger Dog
axiom A8 : Green Tiger
axiom A9 : Needs Tiger Bear
axiom A10 : Sees Tiger Squirrel

-- Rule R1: If someone eats the dog then the dog needs the bear
axiom R1 : ∀ x : obj, Eats x Dog → Needs Dog Bear

-- Rule R2: If someone eats the bear then they eat the tiger
axiom R2 : ∀ x : obj, Eats x Bear → Eats x Tiger

-- Rule R3: If someone needs the tiger and they see the dog then they eat the tiger
axiom R3 : ∀ x : obj, Needs x Tiger ∧ Sees x Dog → Eats x Tiger

-- Rule R4: If someone is nice and they need the bear then they eat the bear
axiom R4 : ∀ x : obj, Nice x ∧ Needs x Bear → Eats x Bear

-- Rule R5: If someone sees the dog then they eat the squirrel
axiom R5 : ∀ x : obj, Sees x Dog → Eats x Squirrel

-- Rule R6: If someone needs the tiger and the tiger eats the bear then they eat the squirrel
axiom R6 : ∀ x : obj, Needs x Tiger ∧ Eats Tiger Bear → Eats x Squirrel

-- Rule R7: If someone eats the tiger then the tiger eats the bear
axiom R7 : ∀ x : obj, Eats x Tiger → Eats Tiger Bear


theorem not_needs_dog_bear : ¬ Needs Dog Bear :=
begin
  sorry
end


theorem needs_dog_bear : Needs Dog Bear :=
begin
  sorry
end
