universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Quiet : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop

axiom A1 : Quiet Bob
axiom A2 : White Bob
axiom A3 : Kind Dave
axiom A4 : Red Dave
axiom A5 : Young Dave
axiom A6 : Red Fiona
axiom A7 : Round Fiona
axiom A8 : Quiet Gary
axiom A9 : Red Gary
axiom A10 : Round Gary

-- Rule R1: White things are round
axiom R1 : ∀ x : obj, White x → Round x

-- Rule R2: If something is kind and white then it is green
axiom R2 : ∀ x : obj, Kind x ∧ White x → Green x

-- Rule R3: All young things are kind
axiom R3 : ∀ x : obj, Young x → Kind x

-- Rule R4: All round things are young
axiom R4 : ∀ x : obj, Round x → Young x

-- Rule R5: All quiet, kind things are white
axiom R5 : ∀ x : obj, Quiet x ∧ Kind x → White x

-- Rule R6: Quiet, green things are red
axiom R6 : ∀ x : obj, Quiet x ∧ Green x → Red x

-- Rule R7: Young, quiet things are kind
axiom R7 : ∀ x : obj, Young x ∧ Quiet x → Kind x

-- Rule R8: All quiet, red things are kind
axiom R8 : ∀ x : obj, Quiet x ∧ Red x → Kind x

-- Rule R9: If Gary is young then Gary is round
axiom R9 : ∀ x : obj, Young Gary → Round Gary


theorem not_quiet_Gary : ¬ Quiet Gary :=
begin
  sorry
end


theorem quiet_Gary : Quiet Gary :=
begin
  sorry
end
