universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Red : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Red Anne
axiom A2 : Big Bob
axiom A3 : Green Bob
axiom A4 : Red Bob
axiom A5 : Furry Charlie
axiom A6 : Big Dave
axiom A7 : Blue Dave

axiom R1 : ∀ x : obj, Big x → Smart x
axiom R2 : ∀ x : obj, Blue x → Green x
axiom R3 : ∀ x : obj, Furry x → Big x
axiom R4 : ∀ x : obj, Smart x → Blue x
axiom R5 : ∀ x : obj, Green x → Furry x
axiom R6 : ∀ x : obj, Green x → Smart x
axiom R7 : ∀ x : obj, Green x → Quiet x

theorem charlie_is_red : Red Charlie :=
begin
end


theorem not_red_Charlie : ¬ Red Charlie :=
begin
end
