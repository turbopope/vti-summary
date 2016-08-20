---
title: Advanced Topics of the Turing Tarpit
subtitle: More Gotchas Than PHP
author: Marco Brack \and Carsten Hartenfels
header-includes:
    - \usepackage{mathrsfs}
    - \newcommand{\gotchas}{\underline{Gotchas!}}
...

# Q&A Questions

* Flow chart notation for multi-tape machines? Doesn't seem to be defined in the lecture.

* Is there a no-op machine? We can define our own $\mathcal{M}_{nop}$ with $>RL$ or something, but that's kinda clunky.


# Introduction


# Turing Machines and Computability

## Deterministic Turing Machine

A **Deterministic Turing Machine (DTM)** is defined as $\mathcal{M} = (K, \Sigma, \delta, s)$

* Finite set of states $K$
* Alphabet $\Sigma$
* Transition function $\delta : K \times \Sigma$
* Initial state $s \in K$

A configuration is what the DTM looks like at any given moment. It consists of the current state, tape contents and tape head position.

The initial configuration of the machine consists of a single **blank** $\#$, then your input, and then an infinite number of blanks. The tape head is one space beyond your input.

In a single step, the machine can transitions to another state and can either go left $L$, go right $R$ or change the current symbol.

The DTM **halts** when it enters the halting state $h$.

It **hangs** when you make it go beyond the left edge of the tape. We shall this **crash** instead, because that's less confusable with halting.

The DTM **terminates** if it halts or crashes. If the machine loops infinitely, it doesn't terminate, halt or crash.

\gotchas

* The halting state $h$ is not a state: $h \notin K$. Obviously.
* $L$ and $R$ are not allowed in $\Sigma$. Because they're confusable maybe?
* The number of states is $|K| - 1$, because $s$ doesn't count. Despite $s \in K$.
* $\delta$ must be totally defined because Gabe Newell. But you can make the machine hang explicitly by making it go left until it hangs. Which has the same effect as making $\delta$ not total. Which means this artificial restriction is retarded.
* A single input word cannot have blanks in it, but you can give multiple input words separated by blanks. The machine of course cannot distinguish between those two cases. Good.
* The machine can't move and write a symbol in a single step. That would be too convenient. Hope you like creating temporary states.

## Flow Chart Notation

Combines a bunch of machines. When one halts, the next starts. Arrows are used for decisions.

$>$ marks the start state. $L$ goes one space left, $R$ goes one space right.

$L_\#$ and $R_\#$ go left/right until they reach a blank. Small gotcha: they check *after* each step, so at minimum one space is moved. This is usually what you want though.

Any letter $\in \Sigma$ writes that letter onto the tape.

Arrows dictate flow. Bare arrows just transfer control to another machine, and they may be omitted if the flow is linear. Arrows with conditions on them decide on the flow.

TODO: What happens when you don't cover all conditions? Is it even a legal machine (since $\delta$ should be total)? Does it just crash when the condition happens?

## Languages

A **language** $L$ is a set of letter combinations from $\Sigma$.

A DTM **accepts** a language if it halts in the **magical acceptance state** (see gotchas). If it halts in a different state or crashes or doesn't terminate, then it doesn't accept the language.

A DTM **decides** a language if it halts with $\#Y\underline{\#}$ if the input is $\in L$ and halts with $\#N\underline{\#}$ otherwise. That is, as opposed to acceptance, the machine always terminates.

A DTM **enumerates** a language if TODO some really strange blink state stuff? It's supposed to mean that the machine produces every word of the language, but the definition is just weird.

A language is **recursively enumerable** if there exists a DTM that enumerates it.

TODO more language properties

\gotchas

* The magical acceptance state looks like this: $\#w\underline{\#}$. That is, the tape just contains the input word and the tape head is one space to the right of that word.


# Register Machines


# Recursive Functions


# Computability and (Un-)Decidability


# Complexity
