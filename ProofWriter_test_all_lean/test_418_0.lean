universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop

axiom A1 : Kind Bob
axiom A2 : Quiet Bob
axiom A3 : White Bob
axiom A4 : Quiet Charlie
axiom A5 : Furry Erin
axiom A6 : Quiet Erin
axiom A7 : White Erin
axiom A8 : Blue Fiona
axiom A9 : Furry Fiona
axiom A10 : Kind Fiona
axiom A11 : Quiet Fiona

-- Rule R1: All kind, rough people are furry
axiom R1 : ∀ x : obj, Kind x ∧ Rough x → Furry x

-- Rule R2: Green, furry people are quiet
axiom R2 : ∀ x : obj, Green x ∧ Furry x → Quiet x

-- Rule R3: If someone is rough then they are kind
axiom R3 : ∀ x : obj, Rough x → Kind x

-- Rule R4: If someone is quiet and kind then they are rough
axiom R4 : ∀ x : obj, Quiet x ∧ Kind x → Rough x

-- Rule R5: If someone is white then they are quiet
axiom R5 : ∀ x : obj, White x → Quiet x

-- Rule R6: If someone is blue and white then they are kind
axiom R6 : ∀ x : obj, Blue x ∧ White x → Kind x

-- Rule R7: If someone is white then they are blue
axiom R7 : ∀ x : obj, White x → Blue x

-- Rule R8: If Charlie is quiet then Charlie is white
axiom R8 : ∀ x : obj, Quiet Charlie → White Charlie


theorem erin_is_kind : Kind Erin :=
begin
  sorry
end


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end
