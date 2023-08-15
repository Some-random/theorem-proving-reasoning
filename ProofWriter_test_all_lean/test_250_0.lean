universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Cold Bob
axiom A3 : Young Bob
axiom A4 : Big Fiona
axiom A5 : Young Fiona
axiom A6 : Big Harry
axiom A7 : Blue Harry
axiom A8 : Cold Harry
axiom A9 : Furry Harry
axiom A10 : Quiet Harry
axiom A11 : Red Harry
axiom A12 : Young Harry

-- Rule R1: Cold and young people are red
axiom R1 : ∀ x : obj, Cold x ∧ Young x → Red x

-- Rule R2: Furry people are young
axiom R2 : ∀ x : obj, Furry x → Young x

-- Rule R3: Young and big people are blue
axiom R3 : ∀ x : obj, Young x ∧ Big x → Blue x

-- Rule R4: Red and big people are quiet
axiom R4 : ∀ x : obj, Red x ∧ Big x → Quiet x

-- Rule R5: Quiet people are furry
axiom R5 : ∀ x : obj, Quiet x → Furry x

-- Rule R6: Blue people are red
axiom R6 : ∀ x : obj, Blue x → Red x

-- Rule R7: Young people are big
axiom R7 : ∀ x : obj, Young x → Big x

-- Rule R8: All quiet and big people are furry
axiom R8 : ∀ x : obj, Quiet x ∧ Big x → Furry x

-- Rule R9: If someone is blue and furry then they are cold
axiom R9 : ∀ x : obj, Blue x ∧ Furry x → Cold x


theorem anne_is_quiet : Quiet Anne :=
begin
  sorry
end


theorem not_quiet_Anne : ¬ Quiet Anne :=
begin
  sorry
end
