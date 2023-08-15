universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Young : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop

axiom A1 : Young Anne
axiom A2 : ¬ Red Charlie
axiom A3 : ¬ Blue Gary
axiom A4 : Kind Gary
axiom A5 : ¬ Rough Gary
axiom A6 : ¬ Young Gary
axiom A7 : Green Harry

-- If Gary is green then Gary is not blue
axiom R1 : Green Gary → ¬ Blue Gary
-- All young people are blue
axiom R2 : ∀ x : obj, Young x → Blue x
-- If Harry is white and Harry is young then Harry is not green
axiom R3 : White Harry ∧ Young Harry → ¬ Green Harry
-- All red people are green
axiom R4 : ∀ x : obj, Red x → Green x
-- Blue, young people are red
axiom R5 : ∀ x : obj, Blue x ∧ Young x → Red x
-- If someone is green then they are white
axiom R6 : ∀ x : obj, Green x → White x
-- If someone is blue and white then they are kind
axiom R7 : ∀ x : obj, Blue x ∧ White x → Kind x
-- All red people are not rough
axiom R8 : ∀ x : obj, Red x → ¬ Rough x
-- If someone is young and not white then they are rough
axiom R9 : ∀ x : obj, Young x ∧ ¬ White x → Rough x


theorem anne_is_rough : Rough Anne :=
begin
  sorry
end


theorem not_rough_Anne : ¬ Rough Anne :=
begin
  sorry
end
