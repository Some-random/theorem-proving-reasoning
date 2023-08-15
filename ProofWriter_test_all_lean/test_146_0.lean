universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Cold Bob
axiom A3 : Rough Bob
axiom A4 : White Bob
axiom A5 : Cold Dave
axiom A6 : Green Dave
axiom A7 : White Dave
axiom A8 : Cold Fiona
axiom A9 : Nice Fiona
axiom A10 : Rough Fiona

-- Rule R1: Kind things are nice
axiom R1 : ∀ x : obj, Kind x → Nice x

-- Rule R2: White and round things are green
axiom R2 : ∀ x : obj, White x ∧ Round x → Green x

-- Rule R3: If something is nice and round then it is white
axiom R3 : ∀ x : obj, Nice x ∧ Round x → White x

-- Rule R4: If something is rough then it is round
axiom R4 : ∀ x : obj, Rough x → Round x

-- Rule R5: Cold things are rough
axiom R5 : ∀ x : obj, Cold x → Rough x

-- Rule R6: If Anne is kind and Anne is nice then Anne is cold
axiom R6 : ∀ x : obj, Kind Anne ∧ Nice Anne → Cold Anne


theorem not_nice_Anne : ¬ Nice Anne :=
begin
  sorry
end


theorem nice_Anne : Nice Anne :=
begin
  sorry
end
