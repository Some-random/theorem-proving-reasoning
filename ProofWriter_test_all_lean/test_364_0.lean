universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Green : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Anne
axiom A2 : Big Bob
axiom A3 : Furry Bob
axiom A4 : Green Dave
axiom A5 : Furry Erin
axiom A6 : Green Erin
axiom A7 : Round Erin

-- Rule R1: If Anne is white and Anne is big then Anne is not furry
axiom R1 : White Anne ∧ Big Anne → ¬ Furry Anne

-- Rule R2: Furry people are kind
axiom R2 : ∀ x : obj, Furry x → Kind x

-- Rule R3: If someone is kind then they are white
axiom R3 : ∀ x : obj, Kind x → White x

-- Rule R4: If someone is white then they are big
axiom R4 : ∀ x : obj, White x → Big x

-- Rule R5: If someone is rough then they are green
axiom R5 : ∀ x : obj, Rough x → Green x

-- Rule R6: If someone is kind and not big then they are not rough
axiom R6 : ∀ x : obj, Kind x ∧ ¬ Big x → ¬ Rough x

-- Rule R7: Furry, white people are rough
axiom R7 : ∀ x : obj, Furry x ∧ White x → Rough x

-- Rule R8: Green, kind people are round
axiom R8 : ∀ x : obj, Green x ∧ Kind x → Round x

-- Rule R9: If someone is white and not green then they are round
axiom R9 : ∀ x : obj, White x ∧ ¬ Green x → Round x



theorem not_white_Dave : ¬ White Dave :=
begin
  sorry
end


theorem white_Dave : White Dave :=
begin
  sorry
end
