universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Lion : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Nice : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop

axiom A1 : ¬ Eats BaldEagle Mouse
axiom A2 : ¬ Rough BaldEagle
axiom A3 : Needs BaldEagle Lion
axiom A4 : Sees BaldEagle Lion
axiom A5 : Nice Lion
axiom A6 : Kind Mouse
axiom A7 : Needs Mouse BaldEagle
axiom A8 : Needs Mouse Lion
axiom A9 : Sees Mouse Lion
axiom A10 : Eats Rabbit BaldEagle
axiom A11 : Needs Rabbit Mouse

-- Rule R1: If someone eats the bald eagle and they see the bald eagle then they are big
axiom R1 : ∀ x : obj, Eats x BaldEagle ∧ Sees x BaldEagle → Big x

-- Rule R2: If someone is nice and they eat the rabbit then they eat the bald eagle
axiom R2 : ∀ x : obj, Nice x ∧ Eats x Rabbit → Eats x BaldEagle

-- Rule R3: If someone eats the bald eagle then they are cold
axiom R3 : ∀ x : obj, Eats x BaldEagle → Cold x

-- Rule R4: If someone needs the rabbit and they are big then the rabbit sees the mouse
axiom R4 : ∀ x : obj, Needs x Rabbit ∧ Big x → Sees Rabbit Mouse

-- Rule R5: If someone is cold then they need the lion
axiom R5 : ∀ x : obj, Cold x → Needs x Lion

-- Rule R6: If someone is cold and big then they do not need the bald eagle
axiom R6 : ∀ x : obj, Cold x ∧ Big x → ¬ Needs x BaldEagle

-- Rule R7: If someone needs the lion then they see the bald eagle
axiom R7 : ∀ x : obj, Needs x Lion → Sees x BaldEagle

-- Rule R8: If the rabbit sees the bald eagle and the rabbit is not big then the bald eagle eats the lion
axiom R8 : ∀ x : obj, Sees Rabbit BaldEagle ∧ ¬ Big Rabbit → Eats BaldEagle Lion

-- Rule R9: If the bald eagle eats the lion then the bald eagle does not see the lion
axiom R9 : ∀ x : obj, Eats BaldEagle Lion → ¬ Sees BaldEagle Lion


theorem not_needs_rabbit_lion : ¬ Needs Rabbit Lion :=
begin
  sorry
end


theorem needs_rabbit_lion : Needs Rabbit Lion :=
begin
  sorry
end
