universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop

axiom B1 : Big Bob
axiom B2 : Blue Bob
axiom B3 : Cold Bob
axiom B4 : Red Bob
axiom B5 : Rough Bob
axiom C1 : ¬ Cold Charlie
axiom C2 : Green Charlie
axiom G1 : Blue Gary
axiom H1 : Cold Harry
axiom H2 : Rough Harry

axiom R1 : ∀ x : obj, Quiet x ∧ Blue x → Big x
axiom R2 : ∀ x : obj, Rough x ∧ Quiet x → Red x
axiom R3 : ∀ x : obj, Green x → Rough x
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Green x
axiom R5 : ∀ x : obj, Blue x → Quiet x
axiom R6 : ∀ x : obj, ¬ Blue Gary → Big Gary

theorem not_blue_Bob : ¬ Blue Bob :=
begin
end


theorem blue_Bob : Blue Bob :=
begin
end
