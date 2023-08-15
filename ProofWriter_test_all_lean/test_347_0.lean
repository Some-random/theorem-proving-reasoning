universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom A1 : Big Bob
axiom A2 : Big Dave
axiom A3 : Quiet Dave
axiom A4 : Round Dave
axiom A5 : Round Fiona
axiom A6 : Kind Harry
axiom A7 : Smart Harry

-- Rule R1: Big people are kind
axiom R1 : ∀ x : obj, Big x → Kind x

-- Rule R2: All kind, big people are round
axiom R2 : ∀ x : obj, Kind x ∧ Big x → Round x

-- Rule R3: If someone is smart then they are kind
axiom R3 : ∀ x : obj, Smart x → Kind x

-- Rule R4: If someone is green and smart then they are furry
axiom R4 : ∀ x : obj, Green x ∧ Smart x → Furry x

-- Rule R5: If someone is quiet and furry then they are smart
axiom R5 : ∀ x : obj, Quiet x ∧ Furry x → Smart x

-- Rule R6: Furry, big people are quiet
axiom R6 : ∀ x : obj, Furry x ∧ Big x → Quiet x

-- Rule R7: All smart, kind people are big
axiom R7 : ∀ x : obj, Smart x ∧ Kind x → Big x

-- Rule R8: If someone is furry then they are big
axiom R8 : ∀ x : obj, Furry x → Big x

-- Rule R9: Round people are furry
axiom R9 : ∀ x : obj, Round x → Furry x


theorem harry_is_green : Green Harry :=
begin
  sorry
end


theorem not_green_Harry : ¬ Green Harry :=
begin
  sorry
end
