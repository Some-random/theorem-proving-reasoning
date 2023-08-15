universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Furry : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Smart Anne
axiom A3 : Kind Bob
axiom A4 : Nice Bob
axiom A5 : Big Charlie
axiom A6 : Green Charlie
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Furry Gary
axiom A10 : Kind Gary
axiom A11 : Nice Gary
axiom A12 : Young Gary

-- Rule R1: If something is young then it is nice
axiom R1 : ∀ x : obj, Young x → Nice x

-- Rule R2: If Anne is green then Anne is big
axiom R2 : ∀ x : obj, Green Anne → Big Anne

-- Rule R3: Smart things are nice
axiom R3 : ∀ x : obj, Smart x → Nice x

-- Rule R4: All smart, kind things are green
axiom R4 : ∀ x : obj, Smart x ∧ Kind x → Green x

-- Rule R5: Young, big things are kind
axiom R5 : ∀ x : obj, Young x ∧ Big x → Kind x

-- Rule R6: Kind, smart things are furry
axiom R6 : ∀ x : obj, Kind x ∧ Smart x → Furry x

-- Rule R7: If something is nice and big then it is young
axiom R7 : ∀ x : obj, Nice x ∧ Big x → Young x

-- Rule R8: All nice things are kind
axiom R8 : ∀ x : obj, Nice x → Kind x

-- Rule R9: If Anne is young and big then Anne is nice
axiom R9 : ∀ x : obj, Young Anne ∧ Big Anne → Nice Anne



theorem not_big_Bob : ¬ Big Bob :=
begin
  sorry
end


theorem big_Bob : Big Bob :=
begin
  sorry
end
