universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Big Anne
axiom A2 : Blue Anne
axiom A3 : Kind Anne
axiom A4 : Nice Anne
axiom A5 : Big Charlie
axiom A6 : Blue Charlie
axiom A7 : Nice Charlie
axiom A8 : Blue Dave
axiom A9 : Cold Dave
axiom A10 : Nice Dave
axiom A11 : Blue Harry

-- Rule R1: If Charlie is cold then Charlie is nice
axiom R1 : Cold Charlie → Nice Charlie

-- Rule R2: If Harry is kind and Harry is nice then Harry is quiet
axiom R2 : Kind Harry ∧ Nice Harry → Quiet Harry

-- Rule R3: All blue things are cold
axiom R3 : ∀ x : obj, Blue x → Cold x

-- Rule R4: If something is quiet then it is kind
axiom R4 : ∀ x : obj, Quiet x → Kind x

-- Rule R5: All kind things are big
axiom R5 : ∀ x : obj, Kind x → Big x

-- Rule R6: Cold things are nice
axiom R6 : ∀ x : obj, Cold x → Nice x

-- Rule R7: If Harry is nice and Harry is big then Harry is kind
axiom R7 : Nice Harry ∧ Big Harry → Kind Harry

-- Rule R8: If something is nice then it is quiet
axiom R8 : ∀ x : obj, Nice x → Quiet x


theorem charlie_is_kind : Kind Charlie :=
begin
  sorry
end


theorem not_kind_Charlie : ¬ Kind Charlie :=
begin
  sorry
end
