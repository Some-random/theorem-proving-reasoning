universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop

axiom A1 : Big Bob
axiom A2 : Nice Bob
axiom A3 : Smart Bob
axiom A4 : Nice Charlie
axiom A5 : Nice Dave
axiom A6 : Big Erin
axiom A7 : Blue Erin
axiom A8 : Furry Erin
axiom A9 : Quiet Erin
axiom A10 : Round Erin
axiom A11 : Smart Erin

-- Rule R1: All nice things are big
axiom R1 : ∀ x : obj, Nice x → Big x

-- Rule R2: All furry things are blue
axiom R2 : ∀ x : obj, Furry x → Blue x

-- Rule R3: Blue, furry things are quiet
axiom R3 : ∀ x : obj, Blue x ∧ Furry x → Quiet x

-- Rule R4: If something is round and nice then it is blue
axiom R4 : ∀ x : obj, Round x ∧ Nice x → Blue x

-- Rule R5: If Bob is round then Bob is blue
axiom R5 : Round Bob → Blue Bob

-- Rule R6: Big, quiet things are furry
axiom R6 : ∀ x : obj, Big x ∧ Quiet x → Furry x

-- Rule R7: If something is blue and furry then it is smart
axiom R7 : ∀ x : obj, Blue x ∧ Furry x → Smart x

-- Rule R8: If Charlie is nice and Charlie is big then Charlie is quiet
axiom R8 : Nice Charlie ∧ Big Charlie → Quiet Charlie


theorem charlie_is_blue : Blue Charlie :=
begin
  sorry
end


theorem not_blue_Charlie : ¬ Blue Charlie :=
begin
  sorry
end
