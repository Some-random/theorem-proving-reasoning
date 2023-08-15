universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Cold Anne
axiom A3 : Kind Anne
axiom A4 : Quiet Anne
axiom A5 : Blue Bob
axiom A6 : Kind Bob
axiom A7 : Nice Bob
axiom A8 : ¬ Quiet Bob
axiom A9 : ¬ Furry Dave
axiom A10 : Green Dave
axiom A11 : Quiet Dave
axiom A12 : Cold Fiona

-- Rule R1: All cold people are blue
axiom R1 : ∀ x : obj, Cold x → Blue x

-- Rule R2: Green, nice people are kind
axiom R2 : ∀ x : obj, Green x ∧ Nice x → Kind x

-- Rule R3: All blue people are kind
axiom R3 : ∀ x : obj, Blue x → Kind x

-- Rule R4: Kind, cold people are nice
axiom R4 : ∀ x : obj, Kind x ∧ Cold x → Nice x

-- Rule R5: If someone is nice then they are green
axiom R5 : ∀ x : obj, Nice x → Green x

-- Rule R6: Cold, green people are quiet
axiom R6 : ∀ x : obj, Cold x ∧ Green x → Quiet x


theorem not_kind_Fiona : ¬ Kind Fiona :=
begin
  sorry
end


theorem kind_Fiona : Kind Fiona :=
begin
  sorry
end
