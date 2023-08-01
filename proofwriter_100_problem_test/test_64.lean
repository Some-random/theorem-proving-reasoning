universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : ¬ Rough Bob
axiom A3 : Big Gary
axiom A4 : Kind Gary
axiom A5 : Rough Gary
axiom A6 : Young Gary
axiom A7 : Young Harry

axiom R1 : ∀ x : obj, Big x → Furry x
axiom R2 : ∀ x : obj, Young x → Furry x
axiom R3 : ∀ x : obj, Quiet x ∧ Kind x → Furry x
axiom R4 : ∀ x : obj, Furry Harry ∧ Quiet Harry → Round Harry
axiom R5 : ∀ x : obj, Rough x ∧ Kind x → Quiet x
axiom R6 : ∀ x : obj, Young x ∧ Rough x → Kind x
axiom R7 : ∀ x : obj, Quiet x ∧ Furry x → Round x
axiom R8 : ∀ x : obj, Furry x → Rough x

theorem gary_is_young : Young Gary :=
begin
end


theorem not_young_Gary : ¬ Young Gary :=
begin
end
