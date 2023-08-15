universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop

axiom A1 : ¬ Cold Bob
axiom A2 : Furry Bob
axiom A3 : Round Bob
axiom A4 : Big Charlie
axiom A5 : Furry Charlie
axiom A6 : Quiet Charlie
axiom A7 : Red Charlie
axiom A8 : ¬ White Charlie
axiom A9 : Big Erin
axiom A10 : Big Gary
axiom A11 : Quiet Gary

-- Rule R1: If someone is red and cold then they are furry
axiom R1 : ∀ x : obj, Red x ∧ Cold x → Furry x

-- Rule R2: All furry people are round
axiom R2 : ∀ x : obj, Furry x → Round x

-- Rule R3: If Charlie is furry then Charlie is round
axiom R3 : ∀ x : obj, Furry Charlie → Round Charlie

-- Rule R4: Big people are red
axiom R4 : ∀ x : obj, Big x → Red x

-- Rule R5: Round people are quiet
axiom R5 : ∀ x : obj, Round x → Quiet x

-- Rule R6: If someone is red then they are cold
axiom R6 : ∀ x : obj, Red x → Cold x


theorem gary_is_white : White Gary :=
begin
  sorry
end


theorem not_white_Gary : ¬ White Gary :=
begin
  sorry
end
