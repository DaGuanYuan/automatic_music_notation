\version "2.22" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { } 
\score  { 
 \new Voice { \new Voice { \clef "alto" 
                \time 4/4
                g 4  
                fis'' 4  
                d 4  
                cis' 4  
                dis' 4  
                c' 4  
                dis' 4  
                f 4  
                cis 4  
                r 8  
                d 4  
                d 4  
                r 16  
                d' 4  
                c 4  
                gis 4  
                r 8.  
                r 16  
                d''' 4  
                 } 
               
 
           } 
         
 
  } 
 
\paper { }
\layout {
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
 }
 
