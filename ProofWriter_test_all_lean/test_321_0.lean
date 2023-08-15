universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Furry : obj → Prop
constant Big : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Bob
axiom A2 : ¬ Nice Bob
axiom A3 : Furry Dave
axiom A4 : Furry Erin
axiom A5 : Nice Erin
axiom A6 : Big Fiona
axiom A7 : ¬ Furry Fiona

-- Rule R1: Kind things are young
axiom R1 : ∀ x : obj, Kind x → Young x

-- Rule R2: Young and big things are green
axiom R2 : ∀ x : obj, Young x ∧ Big x → Green x

-- Rule R3: If something is young then it is green
axiom R3 : ∀ x : obj, Young x → Green x

-- Rule R4: If something is big and rough then it is not nice
axiom R4 : ∀ x : obj, Big x ∧ Rough x → ¬ Nice x

-- Rule R5: If something is big then it is nice
axiom R5 : ∀ x : obj, Big x → Nice x

-- Rule R6: If Bob is furry then Bob is young
axiom R6 : Furry Bob → Young Bob

-- Rule R7: If something is furry then it is big
axiom R7 : ∀ x : obj, Furry x → Big x

-- Rule R8: If something is nice then it is kind
axiom R8 : ∀ x : obj, Nice x → Kind x


theorem not_green_Bob : ¬ Green Bob :=
begin
  sorry
end


theorem green_Bob : Green Bob :=
begin
  sorry
end
