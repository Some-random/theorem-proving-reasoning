universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Big : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Furry Anne
axiom A3 : ¬ Quiet Anne
axiom A4 : Kind Charlie
axiom A5 : ¬ Quiet Fiona
axiom A6 : Young Fiona
axiom A7 : Cold Harry

axiom R1 : ∀ x : obj, Kind x → Furry x
axiom R2 : ∀ x : obj, Nice x → Big x
axiom R3 : ∀ x : obj, Furry x → Nice x
axiom R4 : ∀ x : obj, Young x ∧ Furry x → Quiet x
axiom R5 : ∀ x : obj, Quiet Anne → Cold Anne
axiom R6 : ∀ x : obj, Kind x ∧ Big x → Young x
axiom R7 : ∀ x : obj, Kind x ∧ ¬ Furry x → ¬ Young x

theorem anne_is_nice : Nice Anne :=
begin
end


theorem not_nice_Anne : ¬ Nice Anne :=
begin
end
