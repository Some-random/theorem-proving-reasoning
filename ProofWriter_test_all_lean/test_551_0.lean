universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Cold Bob
axiom A3 : Green Bob
axiom A4 : Nice Bob
axiom A5 : Red Bob
axiom A6 : Round Bob
axiom A7 : White Bob
axiom A8 : Cold Charlie
axiom A9 : Green Charlie
axiom A10 : Round Charlie
axiom A11 : Blue Gary
axiom A12 : Cold Gary
axiom A13 : Green Gary
axiom A14 : Nice Gary
axiom A15 : Red Gary
axiom A16 : Round Harry

-- Rule R1: If Harry is round then Harry is nice
axiom R1 : Round Harry → Nice Harry

-- Rule R2: If something is nice then it is green
axiom R2 : ∀ x : obj, Nice x → Green x

-- Rule R3: All white, round things are red
axiom R3 : ∀ x : obj, White x ∧ Round x → Red x

-- Rule R4: White, red things are cold
axiom R4 : ∀ x : obj, White x ∧ Red x → Cold x

-- Rule R5: All cold things are blue
axiom R5 : ∀ x : obj, Cold x → Blue x

-- Rule R6: All nice things are white
axiom R6 : ∀ x : obj, Nice x → White x


theorem charlie_is_red : Red Charlie :=
begin
  sorry
end


theorem not_red_Charlie : ¬ Red Charlie :=
begin
  sorry
end
