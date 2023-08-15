universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Furry : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Rough Anne
axiom A3 : Round Anne
axiom A4 : Smart Anne
axiom A5 : White Anne
axiom A6 : Furry Dave
axiom A7 : Big Erin
axiom A8 : White Erin
axiom A9 : Quiet Gary
axiom A10 : Round Gary
axiom A11 : Smart Gary
axiom A12 : White Gary

-- Rule R1: Rough and furry things are smart
axiom R1 : ∀ x : obj, Rough x ∧ Furry x → Smart x

-- Rule R2: If something is rough and round then it is smart
axiom R2 : ∀ x : obj, Rough x ∧ Round x → Smart x

-- Rule R3: If Dave is smart then Dave is white
axiom R3 : Smart Dave → White Dave

-- Rule R4: If something is furry then it is rough
axiom R4 : ∀ x : obj, Furry x → Rough x

-- Rule R5: Round and rough things are smart
axiom R5 : ∀ x : obj, Round x ∧ Rough x → Smart x

-- Rule R6: White and furry things are round
axiom R6 : ∀ x : obj, White x ∧ Furry x → Round x

-- Rule R7: All white and big things are round
axiom R7 : ∀ x : obj, White x ∧ Big x → Round x

-- Rule R8: All rough and big things are smart
axiom R8 : ∀ x : obj, Rough x ∧ Big x → Smart x

-- Rule R9: If something is round then it is big
axiom R9 : ∀ x : obj, Round x → Big x


theorem not_quiet_Dave : ¬ Quiet Dave :=
begin
  sorry
end


theorem quiet_Dave : Quiet Dave :=
begin
  sorry
end
