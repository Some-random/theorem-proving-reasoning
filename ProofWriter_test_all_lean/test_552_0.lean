universe u

constant obj : Type u

constant Dave : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop

axiom T1 : Furry Dave
axiom T2 : Green Dave
axiom T3 : Quiet Dave
axiom T4 : Red Dave
axiom T5 : Blue Fiona
axiom T6 : Furry Fiona
axiom T7 : Green Fiona
axiom T8 : Quiet Fiona
axiom T9 : Red Fiona
axiom T10 : Blue Gary
axiom T11 : Nice Gary
axiom T12 : Quiet Gary
axiom T13 : Red Gary
axiom T14 : Smart Gary
axiom T15 : Blue Harry
axiom T16 : Smart Harry

-- If something is blue and furry then it is quiet
axiom R1 : ∀ x : obj, Blue x ∧ Furry x → Quiet x
-- If Dave is furry then Dave is nice
axiom R2 : Furry Dave → Nice Dave
-- If something is furry then it is blue
axiom R3 : ∀ x : obj, Furry x → Blue x
-- Quiet things are red
axiom R4 : ∀ x : obj, Quiet x → Red x
-- All furry, green things are quiet
axiom R5 : ∀ x : obj, Furry x ∧ Green x → Quiet x
-- If something is red then it is green
axiom R6 : ∀ x : obj, Red x → Green x
-- All nice things are furry
axiom R7 : ∀ x : obj, Nice x → Furry x
-- All smart things are nice
axiom R8 : ∀ x : obj, Smart x → Nice x
-- Red things are quiet
axiom R9 : ∀ x : obj, Red x → Quiet x


theorem harry_is_red : Red Harry :=
begin
  sorry
end


theorem not_red_Harry : ¬ Red Harry :=
begin
  sorry
end
