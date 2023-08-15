universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Gary : obj

constant Rough : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom A1 : Rough Bob
axiom A2 : Nice Charlie
axiom A3 : Rough Charlie
axiom A4 : White Charlie
axiom A5 : ¬ White Dave
axiom A6 : Cold Gary
axiom A7 : Quiet Gary

-- Rule R1: Rough and white things are quiet
axiom R1 : ∀ x : obj, Rough x ∧ White x → Quiet x

-- Rule R2: If Charlie is round and quiet then Charlie is rough
axiom R2 : ∀ x : obj, Round Charlie ∧ Quiet Charlie → Rough Charlie

-- Rule R3: All young things are round
axiom R3 : ∀ x : obj, Young x → Round x

-- Rule R4: Nice things are white
axiom R4 : ∀ x : obj, Nice x → White x

-- Rule R5: Rough and nice things are cold
axiom R5 : ∀ x : obj, Rough x ∧ Nice x → Cold x

-- Rule R6: If something is round and rough then it is nice
axiom R6 : ∀ x : obj, Round x ∧ Rough x → Nice x

-- Rule R7: If something is rough then it is young
axiom R7 : ∀ x : obj, Rough x → Young x


theorem not_white_Gary : ¬ White Gary :=
begin
  sorry
end


theorem white_Gary : White Gary :=
begin
  sorry
end
