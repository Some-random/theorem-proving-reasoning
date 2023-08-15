universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop

axiom A1 : Kind Bob
axiom A2 : Cold Charlie
axiom A3 : Kind Charlie
axiom A4 : Nice Charlie
axiom A5 : Quiet Charlie
axiom A6 : Smart Charlie
axiom A7 : Quiet Fiona
axiom A8 : Smart Fiona
axiom A9 : Nice Gary
axiom A10 : Quiet Gary
axiom A11 : White Gary

-- Rule R1: If Fiona is cold then Fiona is nice
axiom R1 : Cold Fiona → Nice Fiona

-- Rule R2: All nice things are white
axiom R2 : ∀ x : obj, Nice x → White x

-- Rule R3: If something is white then it is nice
axiom R3 : ∀ x : obj, White x → Nice x

-- Rule R4: Nice, white things are quiet
axiom R4 : ∀ x : obj, Nice x ∧ White x → Quiet x

-- Rule R5: White, smart things are rough
axiom R5 : ∀ x : obj, White x ∧ Smart x → Rough x

-- Rule R6: Smart, kind things are rough
axiom R6 : ∀ x : obj, Smart x ∧ Kind x → Rough x

-- Rule R7: All cold things are white
axiom R7 : ∀ x : obj, Cold x → White x

-- Rule R8: If Bob is kind then Bob is white
axiom R8 : Kind Bob → White Bob

-- Rule R9: Quiet, kind things are smart
axiom R9 : ∀ x : obj, Quiet x ∧ Kind x → Smart x


theorem fiona_is_rough : Rough Fiona :=
begin
  sorry
end


theorem not_rough_Fiona : ¬ Rough Fiona :=
begin
  sorry
end
