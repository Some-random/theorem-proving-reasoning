universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop

axiom A1 : Big Bob
axiom A2 : Green Bob
axiom A3 : Kind Dave
axiom A4 : White Dave
axiom A5 : Green Erin
axiom A6 : Kind Erin
axiom A7 : Smart Erin
axiom A8 : Big Fiona
axiom A9 : Blue Fiona
axiom A10 : Furry Fiona

-- Rule R1: White and blue things are furry
axiom R1 : ∀ x : obj, White x ∧ Blue x → Furry x

-- Rule R2: All big, white things are smart
axiom R2 : ∀ x : obj, Big x ∧ White x → Smart x

-- Rule R3: Furry things are green
axiom R3 : ∀ x : obj, Furry x → Green x

-- Rule R4: Kind things are blue
axiom R4 : ∀ x : obj, Kind x → Blue x

-- Rule R5: All green things are furry
axiom R5 : ∀ x : obj, Green x → Furry x

-- Rule R6: Green things are big
axiom R6 : ∀ x : obj, Green x → Big x


theorem not_furry_Dave : ¬ Furry Dave :=
begin
  sorry
end


theorem furry_Dave : Furry Dave :=
begin
  sorry
end
