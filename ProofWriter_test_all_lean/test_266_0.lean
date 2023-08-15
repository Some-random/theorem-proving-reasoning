universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Furry Anne
axiom A3 : Red Anne
axiom A4 : White Charlie
axiom A5 : Nice Gary
axiom A6 : Rough Gary
axiom A7 : Nice Harry

-- Rule R1: Kind and white people are furry
axiom R1 : ∀ x : obj, Kind x ∧ White x → Furry x

-- Rule R2: All blue people are furry
axiom R2 : ∀ x : obj, Blue x → Furry x

-- Rule R3: Red people are blue
axiom R3 : ∀ x : obj, Red x → Blue x

-- Rule R4: If someone is kind then they are furry
axiom R4 : ∀ x : obj, Kind x → Furry x

-- Rule R5: If Harry is nice and Harry is rough then Harry is red
axiom R5 : ∀ x : obj, Nice Harry ∧ Rough Harry → Red Harry

-- Rule R6: White and rough people are kind
axiom R6 : ∀ x : obj, White x ∧ Rough x → Kind x

-- Rule R7: Blue and red people are white
axiom R7 : ∀ x : obj, Blue x ∧ Red x → White x

-- Rule R8: Nice people are rough
axiom R8 : ∀ x : obj, Nice x → Rough x

-- Rule R9: If someone is kind and furry then they are rough
axiom R9 : ∀ x : obj, Kind x ∧ Furry x → Rough x


theorem charlie_is_rough : Rough Charlie :=
begin
  sorry
end


theorem not_rough_Charlie : ¬ Rough Charlie :=
begin
  sorry
end
