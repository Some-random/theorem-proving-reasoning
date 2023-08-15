universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop

axiom B1 : Big Bob
axiom B2 : Blue Bob
axiom B3 : Cold Bob
axiom B4 : White Bob
axiom D1 : Cold Dave
axiom D2 : Kind Dave
axiom D3 : Nice Dave
axiom G1 : Cold Gary
axiom G2 : Kind Gary
axiom H1 : White Harry

-- Rule R1: All white things are blue
axiom R1 : ∀ x : obj, White x → Blue x

-- Rule R2: All big, kind things are nice
axiom R2 : ∀ x : obj, Big x ∧ Kind x → Nice x

-- Rule R3: If something is nice then it is big
axiom R3 : ∀ x : obj, Nice x → Big x

-- Rule R4: If something is kind then it is nice
axiom R4 : ∀ x : obj, Kind x → Nice x

-- Rule R5: If something is rough then it is white
axiom R5 : ∀ x : obj, Rough x → White x

-- Rule R6: If something is big and nice then it is rough
axiom R6 : ∀ x : obj, Big x ∧ Nice x → Rough x

-- Rule R7: All white, blue things are cold
axiom R7 : ∀ x : obj, White x ∧ Blue x → Cold x


theorem not_blue_Bob : ¬ Blue Bob :=
begin
  sorry
end


theorem blue_Bob : Blue Bob :=
begin
  sorry
end
