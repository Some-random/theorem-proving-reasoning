universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Young Anne
axiom A3 : Rough Bob
axiom A4 : Cold Charlie
axiom A5 : Kind Charlie
axiom A6 : Rough Charlie
axiom A7 : Smart Charlie
axiom A8 : Kind Fiona
axiom A9 : Rough Fiona
axiom A10 : Smart Fiona

-- Rule R1: Rough and cold things are smart
axiom R1 : ∀ x : obj, Rough x ∧ Cold x → Smart x

-- Rule R2: All young things are kind
axiom R2 : ∀ x : obj, Young x → Kind x

-- Rule R3: All kind things are blue
axiom R3 : ∀ x : obj, Kind x → Blue x

-- Rule R4: Young things are cold
axiom R4 : ∀ x : obj, Young x → Cold x

-- Rule R5: If something is rough then it is cold
axiom R5 : ∀ x : obj, Rough x → Cold x

-- Rule R6: All young, blue things are kind
axiom R6 : ∀ x : obj, Young x ∧ Blue x → Kind x

-- Rule R7: If something is cold and smart then it is young
axiom R7 : ∀ x : obj, Cold x ∧ Smart x → Young x


theorem bob_is_young : Young Bob :=
begin
  sorry
end


theorem not_young_Bob : ¬ Young Bob :=
begin
  sorry
end
