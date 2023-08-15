universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Red : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop

axiom A1 : Red Bob
axiom A2 : Young Bob
axiom A3 : Big Charlie
axiom A4 : Green Charlie
axiom A5 : Red Charlie
axiom A6 : Rough Charlie
axiom A7 : Young Charlie
axiom A8 : Big Dave
axiom A9 : Rough Harry
axiom A10 : Round Harry
axiom A11 : Young Harry

-- Rule R1: All rough, white things are young
axiom R1 : ∀ x : obj, Rough x ∧ White x → Young x
-- Rule R2: All big things are round
axiom R2 : ∀ x : obj, Big x → Round x
-- Rule R3: All white, red things are rough
axiom R3 : ∀ x : obj, White x ∧ Red x → Rough x
-- Rule R4: All round things are green
axiom R4 : ∀ x : obj, Round x → Green x
-- Rule R5: All big things are white
axiom R5 : ∀ x : obj, Big x → White x
-- Rule R6: If Harry is round then Harry is big
axiom R6 : Round Harry → Big Harry
-- Rule R7: All rough, young things are red
axiom R7 : ∀ x : obj, Rough x ∧ Young x → Red x
-- Rule R8: If something is young then it is green
axiom R8 : ∀ x : obj, Young x → Green x
-- Rule R9: All green things are red
axiom R9 : ∀ x : obj, Green x → Red x


theorem dave_is_young : Young Dave :=
begin
  sorry
end


theorem not_young_Dave : ¬ Young Dave :=
begin
  sorry
end
