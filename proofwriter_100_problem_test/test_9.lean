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
constant Big : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

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

axiom R1 : ∀ x : obj, Young x → Nice x
axiom R2 : Green Anne → Big Anne
axiom R3 : ∀ x : obj, Smart x → Nice x
axiom R4 : ∀ x : obj, Smart x ∧ Kind x → Green x
axiom R5 : ∀ x : obj, Young x ∧ Big x → Kind x
axiom R6 : ∀ x : obj, Kind x ∧ Smart x → Furry x
axiom R7 : ∀ x : obj, Nice x ∧ Big x → Young x
axiom R8 : ∀ x : obj, Nice x → Kind x
axiom R9 : ∀ x : obj, Young Anne ∧ Big Anne → Nice Anne

theorem not_big_Bob : ¬ Big Bob :=
begin
  sorry
end


theorem big_Bob : Big Bob :=
begin
  sorry
end
