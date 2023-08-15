universe u

constant obj : Type u

constant Anne : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop

axiom A1 : Big Anne
axiom A2 : Kind Anne
axiom A3 : Quiet Anne
axiom A4 : Rough Anne
axiom A5 : White Anne
axiom A6 : Big Fiona
axiom A7 : Big Gary
axiom A8 : Cold Gary
axiom A9 : Kind Gary
axiom A10 : Kind Harry

-- Rule R1: If something is kind then it is big
axiom R1 : ∀ x : obj, Kind x → Big x

-- Rule R2: If something is white and kind then it is rough
axiom R2 : ∀ x : obj, White x ∧ Kind x → Rough x

-- Rule R3: If Harry is quiet and cold then Harry is big
axiom R3 : ∀ x : obj, Quiet Harry ∧ Cold Harry → Big Harry

-- Rule R4: If something is quiet then it is big
axiom R4 : ∀ x : obj, Quiet x → Big x

-- Rule R5: If something is cold and rough then it is quiet
axiom R5 : ∀ x : obj, Cold x ∧ Rough x → Quiet x

-- Rule R6: All kind things are young
axiom R6 : ∀ x : obj, Kind x → Young x

-- Rule R7: If Harry is kind and cold then Harry is white
axiom R7 : ∀ x : obj, Kind Harry ∧ Cold Harry → White Harry

-- Rule R8: If something is young and kind then it is cold
axiom R8 : ∀ x : obj, Young x ∧ Kind x → Cold x


theorem not_rough_Gary : ¬ Rough Gary :=
begin
  sorry
end


theorem rough_Gary : Rough Gary :=
begin
  sorry
end
