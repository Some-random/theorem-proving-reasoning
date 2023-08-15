universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Gary : obj

constant Cold : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop

axiom A1 : Cold Anne
axiom A2 : White Anne
axiom A3 : Nice Bob
axiom A4 : White Bob
axiom A5 : Blue Dave
axiom A6 : Blue Gary
axiom A7 : Smart Gary

-- Rule R1: All blue people are smart
axiom R1 : ∀ x : obj, Blue x → Smart x

-- Rule R2: If someone is smart then they are cold
axiom R2 : ∀ x : obj, Smart x → Cold x

-- Rule R3: If someone is white then they are quiet
axiom R3 : ∀ x : obj, White x → Quiet x

-- Rule R4: If someone is nice and quiet then they are blue
axiom R4 : ∀ x : obj, Nice x ∧ Quiet x → Blue x

-- Rule R5: All white, furry people are blue
axiom R5 : ∀ x : obj, White x ∧ Furry x → Blue x

-- Rule R6: If Gary is furry then Gary is cold
axiom R6 : ∀ x : obj, Furry Gary → Cold Gary

-- Rule R7: If Bob is not white then Bob is smart
axiom R7 : ∀ x : obj, ¬ White Bob → Smart Bob

-- Rule R8: All cold, blue people are not furry
axiom R8 : ∀ x : obj, Cold x ∧ Blue x → ¬ Furry x


theorem bob_is_quiet : Quiet Bob :=
begin
  sorry
end


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end
