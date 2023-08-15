universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Anne
axiom A2 : Blue Anne
axiom A3 : Kind Anne
axiom A4 : Round Anne
axiom A5 : Green Charlie
axiom A6 : Kind Gary
axiom A7 : Round Harry

-- Rule R1: All blue things are rough
axiom R1 : ∀ x : obj, Blue x → Rough x

-- Rule R2: All white things are kind
axiom R2 : ∀ x : obj, White x → Kind x

-- Rule R3: If something is green and kind then it is round
axiom R3 : ∀ x : obj, Green x ∧ Kind x → Round x

-- Rule R4: If Anne is rough then Anne is big
axiom R4 : ∀ x : obj, Rough Anne → Big Anne

-- Rule R5: All big things are blue
axiom R5 : ∀ x : obj, Big x → Blue x

-- Rule R6: If something is green then it is blue
axiom R6 : ∀ x : obj, Green x → Blue x

-- Rule R7: Blue things are big
axiom R7 : ∀ x : obj, Blue x → Big x

-- Rule R8: If Anne is big and Anne is green then Anne is kind
axiom R8 : ∀ x : obj, Big Anne ∧ Green Anne → Kind Anne

-- Rule R9: Rough things are white
axiom R9 : ∀ x : obj, Rough x → White x


theorem not_rough_Charlie : ¬ Rough Charlie :=
begin
  sorry
end


theorem rough_Charlie : Rough Charlie :=
begin
  sorry
end
