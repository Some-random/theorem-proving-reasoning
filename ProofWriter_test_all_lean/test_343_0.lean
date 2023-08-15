universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Nice : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Nice Bob
axiom A2 : Round Bob
axiom A3 : White Bob
axiom A4 : Blue Charlie
axiom A5 : Nice Charlie
axiom A6 : Blue Fiona
axiom A7 : White Harry

-- Rule R1: If someone is blue then they are furry
axiom R1 : ∀ x : obj, Blue x → Furry x

-- Rule R2: All furry, nice people are smart
axiom R2 : ∀ x : obj, Furry x ∧ Nice x → Smart x

-- Rule R3: If someone is furry and white then they are nice
axiom R3 : ∀ x : obj, Furry x ∧ White x → Nice x

-- Rule R4: All white people are blue
axiom R4 : ∀ x : obj, White x → Blue x

-- Rule R5: Nice, smart people are quiet
axiom R5 : ∀ x : obj, Nice x ∧ Smart x → Quiet x

-- Rule R6: Round people are white
axiom R6 : ∀ x : obj, Round x → White x


theorem bob_is_quiet : Quiet Bob :=
begin
  sorry
end


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end
