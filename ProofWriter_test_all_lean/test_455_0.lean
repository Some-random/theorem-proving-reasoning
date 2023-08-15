universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Furry : obj → Prop
constant Smart : obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Smart Anne
axiom A3 : Furry Bob
axiom A4 : Red Dave
axiom A5 : Smart Dave
axiom A6 : Nice Fiona
axiom A7 : ¬ Round Fiona

-- Rule R1: All smart, round things are not nice
axiom R1 : ∀ x : obj, Smart x ∧ Round x → ¬ Nice x

-- Rule R2: All smart, blue things are nice
axiom R2 : ∀ x : obj, Smart x ∧ Blue x → Nice x

-- Rule R3: If something is blue then it is green
axiom R3 : ∀ x : obj, Blue x → Green x

-- Rule R4: All nice, furry things are not green
axiom R4 : ∀ x : obj, Nice x ∧ Furry x → ¬ Green x

-- Rule R5: All furry things are green
axiom R5 : ∀ x : obj, Furry x → Green x

-- Rule R6: If something is red then it is smart
axiom R6 : ∀ x : obj, Red x → Smart x

-- Rule R7: If something is smart then it is round
axiom R7 : ∀ x : obj, Smart x → Round x

-- Rule R8: Green things are red
axiom R8 : ∀ x : obj, Green x → Red x


theorem fiona_is_red : Red Fiona :=
begin
  sorry
end


theorem not_red_Fiona : ¬ Red Fiona :=
begin
  sorry
end
