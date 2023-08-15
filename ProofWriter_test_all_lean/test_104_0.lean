universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop

axiom A1 : Big Anne
axiom A2 : Furry Anne
axiom A3 : Rough Anne
axiom A4 : Round Anne
axiom A5 : Young Anne
axiom A6 : Big Charlie
axiom A7 : Cold Charlie
axiom A8 : Furry Dave
axiom A9 : Young Dave
axiom A10 : Furry Harry
axiom A11 : Nice Harry
axiom A12 : Young Harry

-- Rule R1: All round things are cold
axiom R1 : ∀ x : obj, Round x → Cold x

-- Rule R2: Cold and furry things are rough
axiom R2 : ∀ x : obj, Cold x ∧ Furry x → Rough x

-- Rule R3: If something is furry and rough then it is round
axiom R3 : ∀ x : obj, Furry x ∧ Rough x → Round x

-- Rule R4: If Charlie is round and furry then Charlie is nice
axiom R4 : ∀ x : obj, Round Charlie ∧ Furry Charlie → Nice Charlie

-- Rule R5: All round and nice things are rough
axiom R5 : ∀ x : obj, Round x ∧ Nice x → Rough x

-- Rule R6: Big and cold things are furry
axiom R6 : ∀ x : obj, Big x ∧ Cold x → Furry x

-- Rule R7: Furry and round things are cold
axiom R7 : ∀ x : obj, Furry x ∧ Round x → Cold x

-- Rule R8: Nice and round things are young
axiom R8 : ∀ x : obj, Nice x ∧ Round x → Young x


theorem not_cold_Anne : ¬ Cold Anne :=
begin
  sorry
end


theorem cold_Anne : Cold Anne :=
begin
  sorry
end
