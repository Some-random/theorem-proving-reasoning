universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Lion : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : ¬ Eats BaldEagle Lion
axiom A3 : Eats BaldEagle Squirrel
axiom A4 : ¬ Sees BaldEagle Rabbit
axiom A5 : ¬ Chases Lion Rabbit
axiom A6 : Kind Lion
axiom A7 : Chases Rabbit BaldEagle
axiom A8 : Eats Rabbit BaldEagle
axiom A9 : Big Rabbit
axiom A10 : Cold Rabbit
axiom A11 : Sees Rabbit Squirrel
axiom A12 : Blue Squirrel
axiom A13 : Cold Squirrel
axiom A14 : Kind Squirrel

-- Rule R1: If something chases the rabbit then it is kind
axiom R1 : ∀ x : obj, Chases x Rabbit → Kind x

-- Rule R2: If something sees the lion then it chases the rabbit
axiom R2 : ∀ x : obj, Sees x Lion → Chases x Rabbit

-- Rule R3: If the rabbit sees the squirrel and the squirrel eats the rabbit then the rabbit is green
axiom R3 : Sees Rabbit Squirrel ∧ Eats Squirrel Rabbit → Green Rabbit

-- Rule R4: If something eats the lion then the lion chases the squirrel
axiom R4 : ∀ x : obj, Eats x Lion → Chases Lion Squirrel

-- Rule R5: If something eats the rabbit then the rabbit sees the lion
axiom R5 : ∀ x : obj, Eats x Rabbit → Sees Rabbit Lion

-- Rule R6: If something is kind then it eats the rabbit
axiom R6 : ∀ x : obj, Kind x → Eats x Rabbit

-- Rule R7: If something sees the lion and it does not eat the lion then it eats the bald eagle
axiom R7 : ∀ x : obj, Sees x Lion ∧ ¬ Eats x Lion → Eats x BaldEagle

-- Rule R8: If something eats the squirrel and the squirrel eats the bald eagle then the squirrel is cold
axiom R8 : ∀ x : obj, Eats x Squirrel ∧ Eats Squirrel BaldEagle → Cold Squirrel


theorem lion_sees_bald_eagle : Sees Lion BaldEagle :=
begin
  sorry
end


theorem not_lion_sees_bald_eagle : ¬ Sees Lion BaldEagle :=
begin
  sorry
end
