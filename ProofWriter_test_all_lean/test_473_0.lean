universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Quiet : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop

axiom A1 : Quiet Bob
axiom A2 : Young Bob
axiom A3 : Quiet Charlie
axiom A4 : Young Charlie
axiom A5 : Nice Fiona
axiom A6 : Quiet Fiona
axiom A7 : Round Fiona
axiom A8 : White Fiona
axiom A9 : Green Gary
axiom A10 : Nice Gary
axiom A11 : Quiet Gary
axiom A12 : Young Gary

-- Rule R1: If someone is quiet and green then they are kind
axiom R1 : ∀ x : obj, Quiet x ∧ Green x → Kind x

-- Rule R2: Quiet people are white
axiom R2 : ∀ x : obj, Quiet x → White x

-- Rule R3: All green, young people are nice
axiom R3 : ∀ x : obj, Green x ∧ Young x → Nice x

-- Rule R4: All green, white people are round
axiom R4 : ∀ x : obj, Green x ∧ White x → Round x

-- Rule R5: White people are nice
axiom R5 : ∀ x : obj, White x → Nice x

-- Rule R6: Quiet people are young
axiom R6 : ∀ x : obj, Quiet x → Young x

-- Rule R7: All green, white people are nice
axiom R7 : ∀ x : obj, Green x ∧ White x → Nice x

-- Rule R8: If someone is kind and white then they are green
axiom R8 : ∀ x : obj, Kind x ∧ White x → Green x

-- Rule R9: All nice, quiet people are kind
axiom R9 : ∀ x : obj, Nice x ∧ Quiet x → Kind x


theorem charlie_is_round : Round Charlie :=
begin
  sorry
end


theorem not_round_Charlie : ¬ Round Charlie :=
begin
  sorry
end
