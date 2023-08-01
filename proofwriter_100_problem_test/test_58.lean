universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Furry : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Kind Anne
axiom A3 : Nice Anne
axiom A4 : Young Anne
axiom A5 : Big Bob
axiom A6 : Furry Bob
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Cold Dave
axiom A10 : Kind Dave
axiom A11 : Young Dave

axiom R1 : ∀ x : obj, Cold x ∧ Big x → Furry x
axiom R2 : ∀ x : obj, Big x → Rough x
axiom R3 : ∀ x : obj, Kind x ∧ Big x → Rough x
axiom R4 : ∀ x : obj, Nice x ∧ Rough x → Kind x
axiom R5 : ∀ x : obj, Kind Charlie → Big Charlie
axiom R6 : ∀ x : obj, Rough x ∧ Kind x → Cold x
axiom R7 : ∀ x : obj, Nice x → Big x
axiom R8 : ∀ x : obj, Rough x ∧ Furry x → Cold x
axiom R9 : ∀ x : obj, Cold x ∧ Nice x → Big x

theorem charlie_is_furry : Furry Charlie :=
begin
end


theorem not_furry_Charlie : ¬ Furry Charlie :=
begin
end
