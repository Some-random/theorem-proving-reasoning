universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Green Anne
axiom A3 : Rough Anne
axiom A4 : Kind Charlie
axiom A5 : Cold Dave
axiom A6 : Furry Dave
axiom A7 : Kind Dave
axiom A8 : Quiet Dave
axiom A9 : Red Dave
axiom A10 : Kind Erin
axiom A11 : Quiet Erin
axiom A12 : Red Erin

-- Rule R1: Furry and rough people are green
axiom R1 : ∀ x : obj, Furry x ∧ Rough x → Green x

-- Rule R2: Red people are furry
axiom R2 : ∀ x : obj, Red x → Furry x

-- Rule R3: All green people are kind
axiom R3 : ∀ x : obj, Green x → Kind x

-- Rule R4: Kind people are quiet
axiom R4 : ∀ x : obj, Kind x → Quiet x

-- Rule R5: If someone is cold then they are rough
axiom R5 : ∀ x : obj, Cold x → Rough x

-- Rule R6: All furry, rough people are cold
axiom R6 : ∀ x : obj, Furry x ∧ Rough x → Cold x

-- Rule R7: All quiet people are red
axiom R7 : ∀ x : obj, Quiet x → Red x

-- Rule R8: All red, quiet people are cold
axiom R8 : ∀ x : obj, Red x ∧ Quiet x → Cold x

-- Rule R9: If Anne is kind then Anne is furry
axiom R9 : Kind Anne → Furry Anne


theorem charlie_is_furry : Furry Charlie :=
begin
  sorry
end


theorem not_furry_Charlie : ¬ Furry Charlie :=
begin
  sorry
end
