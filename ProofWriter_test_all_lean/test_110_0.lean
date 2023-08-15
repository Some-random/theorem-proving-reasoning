universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop

axiom A1 : Kind Bob
axiom A2 : Quiet Charlie
axiom A3 : Rough Charlie
axiom A4 : Kind Fiona
axiom A5 : Rough Fiona
axiom A6 : White Fiona
axiom A7 : Nice Gary

-- If Gary is red and Gary is white then Gary is quiet
axiom R1 : Red Gary ∧ White Gary → Quiet Gary
-- All white things are rough
axiom R2 : ∀ x : obj, White x → Rough x
-- If something is rough then it is red
axiom R3 : ∀ x : obj, Rough x → Red x
-- If something is nice then it is white
axiom R4 : ∀ x : obj, Nice x → White x
-- All smart things are white
axiom R5 : ∀ x : obj, Smart x → White x
-- Rough, quiet things are not kind
axiom R6 : ∀ x : obj, Rough x ∧ Quiet x → ¬ Kind x
-- If something is quiet and not smart then it is kind
axiom R7 : ∀ x : obj, Quiet x ∧ ¬ Smart x → Kind x
-- Smart things are quiet
axiom R8 : ∀ x : obj, Smart x → Quiet x
-- If something is smart and not rough then it is quiet
axiom R9 : ∀ x : obj, Smart x ∧ ¬ Rough x → Quiet x


theorem not_white_Charlie : ¬ White Charlie :=
begin
  sorry
end


theorem white_Charlie : White Charlie :=
begin
  sorry
end
