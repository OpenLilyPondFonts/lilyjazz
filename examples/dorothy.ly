\version "2.18.2"

\include "lilyjazz.ily"
\include "jazzchords.ily"
\language "english"

\paper {
  ragged-last-bottom = ##f
}

\header {
  title = \markup { \fontsize #3 Dorothy }
  composer = \markup { \fontsize #1 Lou Donaldson }
  tagline = \markup { \fontsize #1 (For \concat { E { \raise #0.5 \teeny \flat } } instruments.) }
}

vib = \markup \left-align \musicglyph #"scripts.prallprall"

harmony = \new ChordNames \with {
  \override ChordName #'font-size = #0
} \chordmode {

  e2:m7 a2:7 e2:m7 a2:7 fs:m7 b2:7 fs2:m7 b2:7
  e2:m7 a2:7 fs2:m7.5- b2:7 e2:m7 a2:7 d2.:maj7 fs8:m7 f8:m7

  e2:m7 a2:7 e2:m7 a2:7 fs:m7 b2:7 fs2:m7 b2:7
  e2:m7 a2:7 fs2:m7.5- b2:7 e2:m7 a2:7 d1:maj7

  d2:m7 g2:7 c2:maj7 a2:7 d2:m7 g2:7 c1:maj7
  fs2:m7 b2:7 e1:maj7 e2:m7 a2:7 d2:maj7 fs4:m7 f4:m7

  e2:m7 a2:7 e2:m7 a2:7 fs:m7 b2:7 fs2:m7 b2:7
  e2:m7 a2:7 fs2:m7.5- b2:7 e2:m7 a2:7 d1:maj7
}

melody = \relative c'' {

  \clef treble
  \key d \major
  \time 4/4

  \set Score.markFormatter = #format-mark-box-alphabet

  % A
  \mark \default
  fs8 fs8 fs8 g8 ds2^\vib |
  r4 fs16 fs16 fs16 g16 ds8 e8 fs8 g8 |
  gs4(^\vib gs16) gs16 gs16 a16 f2^\vib |
  r4 gs16 gs16 gs16 a16 f4^\vib b4^\vib | \break
  
  fs4(^\vib fs16) fs16 fs16 g16 ds2^\vib |
  e8 e8 e8 fs8 f2^\vib |
  r8 b,8->\< cs8 d8-> e8 fs-> g8 a8->\! |
  a2^\vib r4 \times 2/3 { r8 gs8 g8 } | \break

  % A (0:39)
  \mark #1
  fs4( fs16) fs16 fs16 g16 ds2^\vib |
  r4 fs16 fs16 fs16 g16 ds8 e8 fs8 g8 |
  gs8. gs16 \times 2/3 { gs8 b8 a8 } f2^\vib |
  r4 gs16 gs16 gs16 a16 f4^\vib b4^\vib | \break

  fs4(^\vib fs16) fs16 fs16 g16 ds2^\vib |
  e8 e8 e8 fs8 f2^\vib |
  r8 b,8->\< cs8 d8-> e8 fs-> g8 a8->\! |
  a2^\vib r4. a16 gs16 \bar "||" \break

  % B (1:17)
  \mark \default
  \times 2/3 { g8 g8 g8 } g8.^\vib a16 g4(^\vib g8) g,16 a16 | \noBreak
  b4(^\vib b16) b16 b16 e16 bf2^\vib | \noBreak
  r8 fs16 g16 g'16 g16 g16 a16 g4^\vib g,16 g16 a16 a16 | \noBreak
  b2^\vib r2 | \break
  
  b'4(^\vib b8) b16 b16 d4(^\vib d16) b16 as16 a16 |
  gs2^\vib r4 gs8 gs8 |
  a4(^\vib a8) a16 a16 c4(^\vib c8) a16 g16 |
  fs4^\vib r4 gs4 g4 \bar "||" \break

  % A (1:36)
  \mark #1
  fs4(^\vib fs16) fs16 fs16 g16 ds2^\vib |
  r4 fs16 fs16 fs16 g16 ds16 ds16 e16 e16 fs16 fs16 g16 g16 |
  gs4(^\vib gs16) gs16 gs16 a16 f2^\vib |
  r4 gs16 gs16 gs16 a16 f4^\vib b4^\vib | \break

  fs4(^\vib fs16) fs16 fs16 g16 ds2^\vib |
  e8 e8 e8 fs8 f2^\vib |
  r8 b,8->\< cs8 d8-> e8 fs-> g8 a8->\! |
  a2^\vib r2 | \break
}

\score {
  <<
    \new ChordNames {
      \harmony
    }

    \new Staff {
      \melody
    }
  >>
}