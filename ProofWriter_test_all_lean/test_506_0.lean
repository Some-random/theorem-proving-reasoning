universe u

constant obj : Type u

constant Dog : obj
constant Squirrel : obj
constant Lion : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Big : obj → Prop

axiom A1 : Chases Dog Squirrel
axiom A2 : Eats Lion Squirrel
axiom A3 : Sees Lion Dog
axiom A4 : Chases Squirrel Dog
axiom A5 : Chases Squirrel Lion
axiom A6 : Eats Squirrel Lion
axiom A7 : Green Squirrel
axiom A8 : Rough Squirrel
axiom A9 : Sees Squirrel Dog
axiom A10 : Sees Squirrel Lion
axiom A11 : Rough Tiger

-- Rule R1: If something is blue then it chases the lion
axiom R1 : ∀ x : obj, Blue x → Chases x Lion

-- Rule R2: If something chases the lion and it eats the squirrel then the squirrel sees the tiger
axiom R2 : ∀ x : obj, Chases x Lion ∧ Eats x Squirrel → Sees Squirrel Tiger

-- Rule R3: If the squirrel eats the lion and the squirrel is green then the lion sees the tiger
axiom R3 : Eats Squirrel Lion ∧ Green Squirrel → Sees Lion Tiger

-- Rule R4: If something sees the tiger then it is blue
axiom R4 : ∀ x : obj, Sees x Tiger → Blue x

-- Rule R5: Rough things are big
axiom R5 : ∀ x : obj, Rough x → Big x

-- Rule R6: If something chases the dog then it chases the tiger
axiom R6 : ∀ x : obj, Chases x Dog → Chases x Tiger


theorem not_blue_Squirrel : ¬ Blue Squirrel :=
begin
  sorry
end


theorem blue_Squirrel : Blue Squirrel :=
begin
  sorry
end
