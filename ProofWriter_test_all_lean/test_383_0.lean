universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Big : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Furry Anne
axiom A3 : ¬ Quiet Anne
axiom A4 : Kind Charlie
axiom A5 : ¬ Quiet Fiona
axiom A6 : Young Fiona
axiom A7 : Cold Harry

-- Rule R1: Kind things are furry
axiom R1 : ∀ x : obj, Kind x → Furry x

-- Rule R2: Nice things are big
axiom R2 : ∀ x : obj, Nice x → Big x

-- Rule R3: Furry things are nice
axiom R3 : ∀ x : obj, Furry x → Nice x

-- Rule R4: If something is young and furry then it is quiet
axiom R4 : ∀ x : obj, Young x ∧ Furry x → Quiet x

-- Rule R5: If Anne is quiet then Anne is cold
axiom R5 : ∀ x : obj, Quiet Anne → Cold Anne

-- Rule R6: Kind, big things are young
axiom R6 : ∀ x : obj, Kind x ∧ Big x → Young x

-- Rule R7: If something is kind and not furry then it is not young
axiom R7 : ∀ x : obj, Kind x ∧ ¬ Furry x → ¬ Young x


theorem not_furry_Charlie : ¬ Furry Charlie :=
begin
  sorry
end


theorem furry_Charlie : Furry Charlie :=
begin
  sorry
end
