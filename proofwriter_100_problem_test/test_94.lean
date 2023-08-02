universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Nice : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop

axiom A1 : Nice Bob
axiom A2 : Big Dave
axiom A3 : Furry Erin
axiom A4 : Nice Erin
axiom A5 : Rough Erin
axiom A6 : Cold Harry
axiom A7 : White Harry

axiom R1 : ∀ x : obj, Rough x → Furry x
axiom R2 : ∀ x : obj, Rough x ∧ Cold x → White x
axiom R3 : ∀ x : obj, Nice x → Big x
axiom R4 : ∀ x : obj, Furry x ∧ Nice x → Big x
axiom R5 : ∀ x : obj, Big x → Red x
axiom R6 : ∀ x : obj, Nice x ∧ Big x → Rough x
axiom R7 : ∀ x : obj, Furry x ∧ Big x → Cold x
axiom R8 : ∀ x : obj, Cold x ∧ White x → Rough x

theorem not_white_Harry : ¬ White Harry :=
begin
  sorry
end


theorem white_Harry : White Harry :=
begin
  sorry
end
