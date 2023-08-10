-- Introducing basic types for entities in our universe.
constant Person : Type
constant Band : Type
constant Style : Type
constant Instrument : Type

-- Defining specific instances of persons, bands, styles and instruments.
constant VicDiCara : Person
constant InsideOut : Band
constant Punk : Style
constant Guitar : Instrument
constant Bass : Instrument

-- Defining properties and relations among the entities.
constant plays_instrument : Person → Instrument → Prop
constant plays_style : Person → Style → Prop
constant plays_in_band : Person → Band → Prop
constant band_plays_style : Band → Style → Prop
constant musician_plays_instrument_in_band : Person → Instrument → Band → Prop

-- Providing axioms based on the information given.

-- Vic DiCara plays guitar and bass.
axiom A1 : plays_instrument VicDiCara Guitar
axiom A2 : plays_instrument VicDiCara Bass

-- The only style of music Vic DiCara plays is punk music.
axiom A3 : ∀ (s : Style), plays_style VicDiCara s ↔ s = Punk

-- Vic DiCara played in the band Inside Out.
axiom A4 : plays_in_band VicDiCara InsideOut

-- Formalizing the Questions

-- Question 1
-- Inside Out was a punk band.
-- Let's first prove the positive case.
theorem inside_out_is_punk : band_plays_style InsideOut Punk :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_inside_out_is_punk : ¬ band_plays_style InsideOut Punk :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 2
-- A musician of Inside Out plays bass.
-- Let's first prove the positive case.
theorem musician_plays_bass_in_inside_out : ∃ (p : Person), musician_plays_instrument_in_band p Bass InsideOut :=
begin
    use VicDiCara,
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_musician_plays_bass_in_inside_out : ¬ ∃ (p : Person), musician_plays_instrument_in_band p Bass InsideOut :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown