# Computability

$$
P = LOOP \subset WHILE = GOTO = TM = F_\mu \subset WHILE^{part} = GOTO^{part} = TM^{part} = F_\mu^{part}
$$

$$
F_\mu^{part} \subseteq F^{part}_{STS}
$$

$$
F_\mu^{part} \subseteq F^{part}_{PNS}
$$


# Theorem of Rice

Let $P$ be a non-trivial property of languages of type $0$, i.e. $\emptyset \neq P \subsetneq \mathcal{L}_{0\Sigma}$.

Then $I(P) = \lbrace n ~|~ M_n \textmd{ accepts a language } L \in P \rbrace$ is undecidable.


# Post Correspondence Problem

A correspondence system $P$ is a finite set of rules over an alphabet $\Sigma$:

$$
P = \lbrace (p_1, q_1), ..., (p_n, q_n) \rbrace \textmd{ with } p_i, q_i \in \Sigma^*
$$

A sequence of indices $i_1 ... i_m$ of $P$ is a sequence $1 \leq i_k \leq n$ for all $k \in \lbrace 1, ..., m \rbrace$. A solution for $P$ is a sequence of indices $I = i_1 ... i_m$ such that $p_{i_1} ... p_{i_m} = q_{i_1} ... q_{i_m}$.

The Post Correspondence Problem is the question whether a given correspondence system has a solution.


# Polynomial Time Reducability

$L_1, L_2$ languages.

$L_2 \preceq_{pol} L_1$ if there's a DTM that, in polynomial time, calculates $f(w)$ from every $w$ so that:

$$
w \in L_2 ~\Leftrightarrow~ f(w) \in L_1
$$

# Polynomial Time Reduction

$L_2 \preceq_{pol} L_1 ~\wedge~ L_1 \in NP ~\Rightarrow~ L_2 \in NP$

$L_2 \preceq_{pol} L_1 ~\wedge~ L_1 \in ~~P~ ~\Rightarrow~ L_2 \in ~P$
