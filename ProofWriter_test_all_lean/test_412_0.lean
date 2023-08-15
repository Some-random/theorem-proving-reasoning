universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Cold : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Smart Anne
axiom A3 : Big Bob
axiom A4 : Rough Bob
axiom A5 : Big Erin
axiom A6 : Cold Erin
axiom A7 : Kind Erin
axiom A8 : Rough Erin
axiom A9 : Smart Erin
axiom A10 : White Erin
axiom A11 : Young Erin
axiom A12 : Cold Harry
axiom A13 : Kind Harry
axiom A14 : Rough Harry

-- Rule R1: Smart things are cold
axiom R1 : ∀ x : obj, Smart x → Cold x

-- Rule R2: If Erin is kind then Erin is young
axiom R2 : ∀ x : obj, Kind Erin → Young Erin

-- Rule R3: White things are kind
axiom R3 : ∀ x : obj, White x → Kind x

-- Rule R4: If something is rough and kind then it is smart
axiom R4 : ∀ x : obj, Rough x ∧ Kind x → Smart x

-- Rule R5: If Anne is smart then Anne is white
axiom R5 : ∀ x : obj, Smart Anne → White Anne

-- Rule R6: All smart, cold things are kind
axiom R6 : ∀ x : obj, Smart x ∧ Cold x → Kind x

-- Rule R7: Big, cold things are young
axiom R7 : ∀ x : obj, Big x ∧ Cold x → Young x

-- Rule R8: If Bob is rough then Bob is white
axiom R8 : ∀ x : obj, Rough Bob → White Bob


theorem not_smart_Bob : ¬ Smart Bob :=
begin
  sorry
end


theorem smart_Bob : Smart Bob :=
begin
  sorry
end
