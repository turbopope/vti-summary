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

If the machine loops infinitely, it neither halts nor crashes.

\gotchas

* The halting state $h$ is not a state: $h \notin K$. Obviously.
* $L$ and $R$ are not allowed in $\Sigma$. Because they're confusable maybe?
* The number of states is $|K| - 1$, because $s$ doesn't count. Despite $s \in K$.
* $\delta$ must be totally defined because Gabe Newell. But you can make the machine hang explicitly by making it go left until it hangs. Which has the same effect as making $\delta$ not total. Which means this artificial restriction is retarded.
* A single input word cannot have blanks in it, but you can give multiple input words separated by blanks. The machine of course cannot distinguish between those two cases. Good.
* The machine can't move and write a symbol in a single step. That would be too convenient. Hope you like creating temporary states.

## Float Chart Notation


# Register Machines


# Recursive Functions


# Computability and (Un-)Decidability


# Complexity
