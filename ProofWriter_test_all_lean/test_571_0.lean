universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Furry Anne
axiom A3 : Rough Anne
axiom A4 : Smart Anne
axiom A5 : White Anne
axiom A6 : Nice Bob
axiom A7 : Rough Bob
axiom A8 : Cold Erin
axiom A9 : Furry Erin
axiom A10 : Nice Erin
axiom A11 : Rough Erin
axiom A12 : Smart Erin
axiom A13 : White Erin
axiom A14 : Young Erin
axiom A15 : Cold Fiona
axiom A16 : Furry Fiona

-- Rule R1: All smart things are cold
axiom R1 : ∀ x : obj, Smart x → Cold x

-- Rule R2: If Bob is young and Bob is cold then Bob is furry
axiom R2 : ∀ x : obj, Young Bob ∧ Cold Bob → Furry Bob

-- Rule R3: Young things are cold
axiom R3 : ∀ x : obj, Young x → Cold x

-- Rule R4: If Fiona is rough and Fiona is cold then Fiona is smart
axiom R4 : ∀ x : obj, Rough Fiona ∧ Cold Fiona → Smart Fiona

-- Rule R5: Cold, furry things are white
axiom R5 : ∀ x : obj, Cold x ∧ Furry x → White x

-- Rule R6: All rough, nice things are young
axiom R6 : ∀ x : obj, Rough x ∧ Nice x → Young x

-- Rule R7: If something is white and furry then it is smart
axiom R7 : ∀ x : obj, White x ∧ Furry x → Smart x


theorem anne_is_young : Young Anne :=
begin
  sorry
end


theorem not_young_Anne : ¬ Young Anne :=
begin
  sorry
end
