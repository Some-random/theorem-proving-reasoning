universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Kind Anne
axiom A3 : Quiet Anne
axiom A4 : ¬ Kind Bob
axiom A5 : Young Bob
axiom A6 : White Erin
axiom A7 : Blue Gary
axiom A8 : Kind Gary
axiom A9 : Nice Gary
axiom A10 : Quiet Gary
axiom A11 : Rough Gary

-- Rule R1: Nice people are kind
axiom R1 : ∀ x : obj, Nice x → Kind x

-- Rule R2: All white, quiet people are blue
axiom R2 : ∀ x : obj, White x ∧ Quiet x → Blue x

-- Rule R3: Kind, nice people are quiet
axiom R3 : ∀ x : obj, Kind x ∧ Nice x → Quiet x

-- Rule R4: Rough people are nice
axiom R4 : ∀ x : obj, Rough x → Nice x

-- Rule R5: If someone is white then they are rough
axiom R5 : ∀ x : obj, White x → Rough x

-- Rule R6: All blue, nice people are rough
axiom R6 : ∀ x : obj, Blue x ∧ Nice x → Rough x


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end


theorem quiet_Bob : Quiet Bob :=
begin
  sorry
end
