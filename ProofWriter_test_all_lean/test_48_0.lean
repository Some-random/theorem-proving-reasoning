universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop

axiom A1 : ¬ Blue Anne
axiom A2 : Green Anne
axiom A3 : Kind Anne
axiom A4 : White Charlie
axiom A5 : Green Gary
axiom A6 : Kind Gary
axiom A7 : Rough Gary
axiom A8 : Round Gary
axiom A9 : ¬ White Gary
axiom A10 : Kind Harry
axiom A11 : Quiet Harry
axiom A12 : White Harry

-- Rule R1: White people are green
axiom R1 : ∀ x : obj, White x → Green x

-- Rule R2: If someone is green and white then they are quiet
axiom R2 : ∀ x : obj, Green x ∧ White x → Quiet x

-- Rule R3: Blue, quiet people are round
axiom R3 : ∀ x : obj, Blue x ∧ Quiet x → Round x

-- Rule R4: All quiet people are blue
axiom R4 : ∀ x : obj, Quiet x → Blue x

-- Rule R5: If someone is blue and not round then they are kind
axiom R5 : ∀ x : obj, Blue x ∧ ¬ Round x → Kind x

-- Rule R6: If someone is quiet and round then they are kind
axiom R6 : ∀ x : obj, Quiet x ∧ Round x → Kind x


theorem harry_is_rough : Rough Harry :=
begin
  sorry
end


theorem not_rough_Harry : ¬ Rough Harry :=
begin
  sorry
end
