universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Red : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Red Dave
axiom A2 : Quiet Erin
axiom A3 : White Fiona
axiom A4 : Big Harry
axiom A5 : ¬ Green Harry
axiom A6 : Quiet Harry
axiom A7 : Red Harry

-- Rule R1: Quiet and red people are smart
axiom R1 : ∀ x : obj, Quiet x ∧ Red x → Smart x

-- Rule R2: If someone is quiet then they are smart
axiom R2 : ∀ x : obj, Quiet x → Smart x

-- Rule R3: If Dave is red then Dave is big
axiom R3 : ∀ x : obj, Red Dave → Big Dave

-- Rule R4: If Dave is smart and white then Dave is big
axiom R4 : ∀ x : obj, Smart Dave ∧ White Dave → Big Dave

-- Rule R5: If Fiona is white and red then Fiona is rough
axiom R5 : ∀ x : obj, White Fiona ∧ Red Fiona → Rough Fiona

-- Rule R6: If someone is white then they are quiet
axiom R6 : ∀ x : obj, White x → Quiet x

-- Rule R7: Rough people are green
axiom R7 : ∀ x : obj, Rough x → Green x

-- Rule R8: All smart people are red
axiom R8 : ∀ x : obj, Smart x → Red x


theorem not_red_Harry : ¬ Red Harry :=
begin
  sorry
end


theorem red_Harry : Red Harry :=
begin
  sorry
end
