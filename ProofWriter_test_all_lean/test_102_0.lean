universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Rough : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom A1 : Rough Anne
axiom A2 : Young Anne
axiom A3 : Nice Bob
axiom A4 : Red Bob
axiom A5 : Young Bob
axiom A6 : Cold Charlie
axiom A7 : Quiet Charlie
axiom A8 : Red Charlie
axiom A9 : Rough Charlie
axiom A10 : Smart Charlie
axiom A11 : Cold Fiona
axiom A12 : Quiet Fiona

-- Rule R1: Cold people are young
axiom R1 : ∀ x : obj, Cold x → Young x

-- Rule R2: Rough, young people are nice
axiom R2 : ∀ x : obj, Rough x ∧ Young x → Nice x

-- Rule R3: Cold, red people are smart
axiom R3 : ∀ x : obj, Cold x ∧ Red x → Smart x

-- Rule R4: Red people are smart
axiom R4 : ∀ x : obj, Red x → Smart x

-- Rule R5: If someone is smart and quiet then they are cold
axiom R5 : ∀ x : obj, Smart x ∧ Quiet x → Cold x

-- Rule R6: All rough, nice people are red
axiom R6 : ∀ x : obj, Rough x ∧ Nice x → Red x

-- Rule R7: All red, quiet people are cold
axiom R7 : ∀ x : obj, Red x ∧ Quiet x → Cold x

-- Rule R8: All smart people are quiet
axiom R8 : ∀ x : obj, Smart x → Quiet x


theorem not_quiet_Anne : ¬ Quiet Anne :=
begin
  sorry
end


theorem quiet_Anne : Quiet Anne :=
begin
  sorry
end
