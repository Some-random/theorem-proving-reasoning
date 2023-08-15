universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Smart : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop

axiom A1 : Smart Anne
axiom A2 : Big Charlie
axiom A3 : Nice Charlie
axiom A4 : Green Gary
axiom A5 : Furry Harry
axiom A6 : Nice Harry
axiom A7 : Red Harry

-- Rule R1: All furry people are kind
axiom R1 : ∀ x : obj, Furry x → Kind x

-- Rule R2: If Charlie is big then Charlie is green
axiom R2 : Big Charlie → Green Charlie

-- Rule R3: If someone is kind then they are big
axiom R3 : ∀ x : obj, Kind x → Big x

-- Rule R4: Kind, green people are big
axiom R4 : ∀ x : obj, Kind x ∧ Green x → Big x

-- Rule R5: Smart people are furry
axiom R5 : ∀ x : obj, Smart x → Furry x

-- Rule R6: If someone is green then they are kind
axiom R6 : ∀ x : obj, Green x → Kind x

-- Rule R7: All big, nice people are kind
axiom R7 : ∀ x : obj, Big x ∧ Nice x → Kind x

-- Rule R8: All smart, nice people are red
axiom R8 : ∀ x : obj, Smart x ∧ Nice x → Red x

-- Rule R9: Big, kind people are nice
axiom R9 : ∀ x : obj, Big x ∧ Kind x → Nice x


theorem anne_is_nice : Nice Anne :=
begin
  sorry
end


theorem not_nice_Anne : ¬ Nice Anne :=
begin
  sorry
end
