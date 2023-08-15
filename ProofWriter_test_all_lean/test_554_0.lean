universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Green : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Green Anne
axiom A2 : Rough Anne
axiom A3 : Young Anne
axiom A4 : Cold Dave
axiom A5 : Nice Dave
axiom A6 : Rough Dave
axiom A7 : Kind Fiona
axiom A8 : Green Harry
axiom A9 : Kind Harry
axiom A10 : Quiet Harry
axiom A11 : Young Harry

-- Rule R1: Kind and quiet things are green
axiom R1 : ∀ x : obj, Kind x ∧ Quiet x → Green x

-- Rule R2: If Dave is kind then Dave is quiet
axiom R2 : Kind Dave → Quiet Dave

-- Rule R3: All kind things are young
axiom R3 : ∀ x : obj, Kind x → Young x

-- Rule R4: All rough and kind things are quiet
axiom R4 : ∀ x : obj, Rough x ∧ Kind x → Quiet x

-- Rule R5: If Anne is cold and kind then Anne is green
axiom R5 : Cold Anne ∧ Kind Anne → Green Anne

-- Rule R6: If something is young then it is rough
axiom R6 : ∀ x : obj, Young x → Rough x

-- Rule R7: If something is green and quiet then it is cold
axiom R7 : ∀ x : obj, Green x ∧ Quiet x → Cold x


theorem dave_is_rough : Rough Dave :=
begin
  sorry
end


theorem not_rough_Dave : ¬ Rough Dave :=
begin
  sorry
end
