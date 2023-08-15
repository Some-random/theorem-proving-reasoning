universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop

axiom A1 : Cold Bob
axiom A2 : Furry Bob
axiom A3 : Kind Bob
axiom A4 : ¬ Nice Bob
axiom A5 : White Bob
axiom A6 : Cold Charlie
axiom A7 : ¬ Furry Charlie
axiom A8 : Kind Charlie
axiom A9 : Red Charlie
axiom A10 : Kind Gary
axiom A11 : Nice Gary
axiom A12 : Red Gary
axiom A13 : Cold Harry
axiom A14 : Furry Harry

-- Rule R1: Kind things are cold
axiom R1 : ∀ x : obj, Kind x → Cold x

-- Rule R2: If something is blue then it is kind
axiom R2 : ∀ x : obj, Blue x → Kind x

-- Rule R3: Red, furry things are kind
axiom R3 : ∀ x : obj, Red x ∧ Furry x → Kind x

-- Rule R4: If something is white and nice then it is red
axiom R4 : ∀ x : obj, White x ∧ Nice x → Red x

-- Rule R5: All cold things are red
axiom R5 : ∀ x : obj, Cold x → Red x

-- Rule R6: All nice, cold things are red
axiom R6 : ∀ x : obj, Nice x ∧ Cold x → Red x

-- Rule R7: If Harry is red and kind then Harry is blue
axiom R7 : ∀ x : obj, Red Harry ∧ Kind Harry → Blue Harry

-- Rule R8: If something is red and blue then it is white
axiom R8 : ∀ x : obj, Red x ∧ Blue x → White x

-- Rule R9: If something is blue and white then it is not nice
axiom R9 : ∀ x : obj, Blue x ∧ White x → ¬ Nice x


theorem not_cold_Gary : ¬ Cold Gary :=
begin
  sorry
end


theorem cold_Gary : Cold Gary :=
begin
  sorry
end
