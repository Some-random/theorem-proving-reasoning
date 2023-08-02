universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Big : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Big Anne
axiom A2 : Rough Anne
axiom A3 : Young Anne
axiom A4 : Young Bob
axiom A5 : Cold Charlie
axiom A6 : Green Charlie
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Green Gary
axiom A10 : Young Gary

axiom R1 : ∀ x : obj, Big x ∧ Quiet x → Green x
axiom R2 : ∀ x : obj, Cold x ∧ Young x → Nice x
axiom R3 : ∀ x : obj, Rough Bob ∧ Green Bob → Cold Bob
axiom R4 : ∀ x : obj, Green x → Nice x
axiom R5 : ∀ x : obj, Nice x → Quiet x
axiom R6 : ∀ x : obj, Young x → Cold x
axiom R7 : ∀ x : obj, Quiet x ∧ Nice x → Rough x
axiom R8 : ∀ x : obj, Rough x ∧ Young x → Cold x
axiom R9 : ∀ x : obj, Rough x ∧ Nice x → Big x

theorem not_nice_Charlie : ¬ Nice Charlie :=
begin
  sorry
end


theorem nice_Charlie : Nice Charlie :=
begin
  sorry
end
