---
title: "Basics of BFV-BV"
date: 2026-07-20
draft: false
math: true
---


### **Categories**
- $\mathrm{Vect}_{\mathbb{K}}$: vector spaces over $\mathbb{K} = \mathbb{R}$ or $\mathbb{C}$.
- $\mathrm{SuperVect}_{\mathbb{K}}$: $\mathbb{Z}_{2}$-graded vector spaces $V = V_{\bar{0}} \oplus V_{\bar{1}}$ with parity-preserving linear maps.
- $\mathrm{GrVect}_{\mathbb{K}}$: $\mathbb{Z}$-graded vector spaces $V = (V_{n})_{n \in \mathbb{Z}}$ with degree-preserving maps and the same braiding. Taking degrees mod $2$ gives a functor to $\mathrm{SuperVect}_{\mathbb{K}}$

## Elements of supergeometry
**Definition**: A *graded* manifold $\mathcal{M}$ is a locally ringed space $(M,\mathcal{O}_{M})$ which locally looks like 

$$
\left( \mathcal{U},C^\infty(\mathcal{U}) \otimes  \mathrm{Sym}(V^{*}) \right)
$$

where $\mathcal{U} \subset \mathbb{R}^{n}$ is open and $V$ is a graded vector space. $M$ is called the body of $\mathcal{M}$ and $\mathcal{O}_{M}$ the structure sheaf.

If the grading is defined modulo $2$, we can call it a *supermanifold*, with local coordinates being the bosonic and fermionic variables $(x^{i},\theta^{\mu})$.

**Definition**: A *supervector field* is a vector field $X$ on a supermanifold $\mathcal{M}$ which is locally given by

$$
X = \sum_{i,\mu} X^{i}\partial_{x^{i}} + Y^{\mu}\partial_{\theta^{\mu}}
$$

Functions $C^\infty(\mathcal{M})$ are locally polynomials in the odd variables with smooth coefficients:

$$
f(x,\theta) = \sum_{k=0}^{m} \sum_{\mu_{1} < \cdots < \mu_{k}} f_{\mu_{1}\cdots\mu_{k}}(x) \theta^{\mu_{1}}\cdots\theta^{\mu_{k}}, \qquad f_{\mu_{1}\cdots\mu_{k}} \in C^\infty(\mathcal{U})
$$

The sum is finite since $(\theta^{\mu})^{2} = 0$. On a graded manifold, even coordinates of nonzero degree also enter polynomially.

**Definition**: A *graded vector field* is a graded linear map $X : C^\infty(\mathcal{N}) \longrightarrow C^\infty(\mathcal{N})[k]$ where $\mathcal{N}$ is a graded manifold, and satisfies the graded Leibniz rule: 

$$
X(fg) = X(f)g + (-1)^{k|f|}fX(g)
$$

for any two homogenous functions $f,g \in C^\infty(\mathcal{N})$

We denote the space of graded vector fields by $\mathcal{X}(\mathcal{N})$, and we can define a graded Lie bracket $[\, , \, ]_{\mathcal{X}(\mathcal{N})}:\mathcal{X}(\mathcal{N}) \otimes \mathcal{X}(\mathcal{N}) \rightarrow \mathcal{X}(\mathcal{N})$ by 

$$
[X,Y]_{\mathcal{X}(\mathcal{N})} := X \circ Y - (-1)^{|X||Y|}Y \circ X
$$

For $X$ odd, $[X,X] = 2X^{2}$, so the square of an odd vector field is again a vector field.

**Example**: The shifted tangent bundle $T[1]M$ (C–M: $\Pi TM$) has coordinates $(x^{i},\theta^{i})$ with $|\theta^{i}| = 1$, and $C^\infty(T[1]M) \cong \Omega^{\bullet}(M)$ via $\theta^{i} \leftrightarrow dx^{i}$.

**Example**: For a Lie algebra $\mathfrak{g}$ with basis $(e_{a})$, $\mathfrak{g}[1]$ has linear coordinates $c^{a}$ of degree $1$, and $C^\infty(\mathfrak{g}[1]) = \Lambda^{\bullet}\mathfrak{g}^{\ast}$.

**Example**: For coordinates $x^{i}$ on $\mathcal{N}$, the shifted cotangent bundle $T^{\ast}[k]\mathcal{N}$ has fibre coordinates $p_{i}$ of degree $k - |x^{i}|$. For an ordinary manifold $M$, $C^\infty(T^{\ast}[1]M) \cong \Gamma(\Lambda^{\bullet}TM)$, the multivector fields with $j$-vectors in degree $j$; $C^\infty(T^{\ast}[-1]M)$ is the same algebra with $j$-vectors in degree $-j$.

### Integration
For an odd variable, $\int d\theta = 0$ and $\int \theta d\theta = 1$, and Fubini holds. On $\mathcal{U} \times \Pi V$ only the top component survives:

$$
\int_{\mathcal{U}\times\Pi V} f = \int_{\mathcal{U}} f_{1\cdots m}(x) d^{n}x
$$

Under a change of coordinates the measure transforms by the *Berezinian*. For an even invertible supermatrix $X$ with even blocks $A, D$ and odd blocks $B, C$,

$$
\mathrm{Ber}(X) = \frac{\det(A - BD^{-1}C)}{\det(D)}
$$

so odd directions scale inversely: $\theta \mapsto a\theta$ gives $d\theta \mapsto a^{-1}d\theta$. A *density* on a supermanifold is a section of the Berezinian bundle (tensored with the orientation bundle of the body).

## Q-manifolds
**Definition**: A *Q-manifold* (or dg manifold) is a graded manifold $\mathcal{N}$ with a vector field $Q$ of degree $1$ such that $[Q,Q] = 0$, i.e. $Q^{2} = 0$. $Q$ is called a *cohomological vector field*, and $(C^\infty(\mathcal{N}),Q)$ is a cochain complex.

**Example**: On $T[1]M$, $Q = \theta^{i}\partial_{x^{i}}$ is the de Rham differential; its cohomology is $H^{\bullet}_{\mathrm{dR}}(M)$.

**Example** (Chevalley–Eilenberg): Write $[e_{a},e_{b}] = f_{ab}^{c}e_{c}$. On $\mathfrak{g}[1]$,

$$
Q_{\mathrm{CE}} = -\frac{1}{2}f_{ab}^{c}c^{a}c^{b}\frac{\partial}{\partial c^{c}}
$$

and $[Q_{\mathrm{CE}},Q_{\mathrm{CE}}] = 0$ is the Jacobi identity. The cohomology is the Lie algebra cohomology $H^{\bullet}(\mathfrak{g})$. (C–M write $+\frac{1}{2}$; the two are related by $c \mapsto -c$.)

**Example** (action Lie algebroid): Let $\rho : \mathfrak{g} \to \mathcal{X}(M)$ be a Lie algebra morphism, $\rho_{a} = \rho(e_{a})$. On $M \times \mathfrak{g}[1]$,

$$
Q = c^{a}\rho_{a} - \frac{1}{2}f_{ab}^{c}c^{a}c^{b}\frac{\partial}{\partial c^{c}}
$$

is cohomological: $[Q,Q] = 0$ encodes both $[\rho_{a},\rho_{b}] = f_{ab}^{c}\rho_{c}$ and the Jacobi identity. (C–M write $\frac{1}{2}f_{ab}^{c}c^{a}c^{b}\partial_{c^{c}} + c^{a}X_{a}$, which squares to zero when $[X_{a},X_{b}] = -f_{ab}^{c}X_{c}$, as for the fundamental vector fields of a left action.)

**Remark**: Degree-$1$ cohomological vector fields on $A[1]$, for a vector bundle $A \to M$, are the same as Lie algebroid structures on $A$ (Vaintrob). The examples above are $A = TM$, $A = \mathfrak{g}$ and $A = M \times \mathfrak{g}$.

## BRST formalism
Start with an ordinary gauge theory: a manifold of fields $F_{0}$, an action $S_{0} \in C^\infty(F_{0})$, and infinitesimal gauge symmetries $\rho : \mathfrak{g} \to \mathcal{X}(F_{0})$ with $\rho_{a}(S_{0}) = 0$.

**Definition**: The *BRST complex* is $C^\infty(F_{0} \times \mathfrak{g}[1])$ with the action-algebroid differential $Q_{\mathrm{BRST}}$ above. The $c^{a}$ are the *ghosts*.

We have $Q_{\mathrm{BRST}}S_{0} = c^{a}\rho_{a}(S_{0}) = 0$, and in degree $0$

$$
H^{0}(Q_{\mathrm{BRST}}) = C^\infty(F_{0})^{\mathfrak{g}}
$$

the gauge-invariant functions.

BRST needs the symmetries to close off-shell (a Lie algebra or Lie algebroid action), and it does not see the equations of motion. BV drops both restrictions and tells us how to gauge-fix the path integral.

## Symplectic graded manifolds
From here on, $\delta$ is the de Rham differential on a graded manifold (the space of fields), and $d$ is kept for spacetime.

**Definition**: A *symplectic form of degree $k$* on a graded manifold $\mathcal{N}$ is a closed, nondegenerate $2$-form $\omega$ of degree $k$. On $T^{\ast}[k]\mathcal{N}$ there is the canonical one, $\omega = \sum_{i}\delta p_{i}\delta x^{i}$.

**Definition**: The *Hamiltonian vector field* $X_{f}$ of $f \in C^\infty(\mathcal{N})$ is defined by $\iota_{X_{f}}\omega = \delta f$; it has degree $|f| - k$. The *Poisson bracket* $\lbrace f,g\rbrace := X_{f}(g)$ has degree $-k$ and satisfies

$$
\lbrace f,g\rbrace = -(-1)^{(|f|+k)(|g|+k)}\lbrace g,f\rbrace
$$

$$
\lbrace f,\lbrace g,h\rbrace\rbrace = \lbrace\lbrace f,g\rbrace,h\rbrace + (-1)^{(|f|+k)(|g|+k)}\lbrace g,\lbrace f,h\rbrace\rbrace
$$

$$
\lbrace f,gh\rbrace = \lbrace f,g\rbrace h + (-1)^{(|f|+k)|g|}g\lbrace f,h\rbrace
$$

(C–M §4.9 use $\iota_{X_{f}}\omega = -\delta f$, which only changes signs.)

The cases that matter:
- $k = 0$: graded Poisson bracket (BFV).
- $k = -1$: odd Poisson bracket, the BV bracket. On $T^{\ast}[-1]M$ it is the Schouten–Nijenhuis bracket of multivector fields.
- $k = d-1$: targets of AKSZ theories on $d$-manifolds.

**Definition**: A *Hamiltonian Q-manifold* of degree $k$ is $(\mathcal{N},\omega,S)$ with $\omega$ symplectic of degree $k$, $S$ of degree $k+1$, and $Q = X_{S}$ cohomological. Since $\iota_{[Q,Q]}\omega = \delta\lbrace S,S\rbrace$, $Q$ is cohomological iff $\lbrace S,S\rbrace$ is locally constant. It has degree $k+2$, so for $k \neq -2$ this means

$$
\lbrace S,S\rbrace = 0
$$

**Example** ($k = 1$): On $T^{\ast}[1]M$ take $\Theta = \frac{1}{2}\pi^{ij}(x)p_{i}p_{j}$ for a bivector field $\pi$. Then $\lbrace\Theta,\Theta\rbrace = 0$ iff $[\pi,\pi] = 0$, i.e. $\pi$ is Poisson. Under $C^\infty(T^{\ast}[1]M) \cong \Gamma(\Lambda^{\bullet}TM)$, $X_{\Theta}$ is (up to sign) the Lichnerowicz differential $[\pi,\cdot]$, so its cohomology is the Poisson cohomology $H^{\bullet}_{\pi}(M)$. This is the target of the Poisson sigma model.

**Example** ($k = 2$): On $\mathfrak{g}[1]$ with an invariant inner product $\langle\cdot,\cdot\rangle$, take $\omega = \frac{1}{2}\langle\delta c,\delta c\rangle$ and $\Theta = \frac{1}{6}\langle c,[c,c]\rangle$. Then $\lbrace\Theta,\Theta\rbrace = 0$ is the Jacobi identity and $X_{\Theta}$ is (up to sign) $Q_{\mathrm{CE}}$. This is the target of Chern–Simons theory.

## BV formalism
**Definition**: A *BV manifold* is a triple $(\mathcal{F},\omega,S)$ with $\omega$ symplectic of degree $-1$ and $S \in C^\infty(\mathcal{F})$ of degree $0$ satisfying the *classical master equation* (CME)

$$
(S,S) = 0
$$

where $(\cdot,\cdot)$ is the BV bracket (round brackets, as in C–M). Equivalently, the Hamiltonian vector field $Q$ of $S$, $\iota_{Q}\omega = \delta S$, is cohomological. $S$ is called the *BV action*.

**Proposition** (BRST to BV): Let $(M,Q)$ be a Q-manifold and $S_{0} \in C^\infty(M)$ of degree $0$ with $QS_{0} = 0$. On $T^{\ast}[-1]M$ write $x^{+}_{i}$ for the fibre coordinate dual to $x^{i}$ (the *antifield* of $x^{i}$), of degree $-1-|x^{i}|$, and let $\hat{Q}$ be the fibre-linear function associated to $Q$, locally $\hat{Q} = \sum_{i}Q^{i}(x)x^{+}_{i}$. With the canonical symplectic form,

$$
S = S_{0} + \hat{Q}
$$

satisfies the CME.

*Sketch*: The lift $X \mapsto \hat{X}$ satisfies $(\hat{X},\hat{Y}) = \pm\widehat{[X,Y]}$ and $(\hat{X},g) = \pm X(g)$ for $g \in C^\infty(M)$. So $(\hat{Q},\hat{Q})$ is proportional to $\widehat{[Q,Q]} = 0$ and $(S_{0},\hat{Q})$ to $Q(S_{0}) = 0$, while $(S_{0},S_{0}) = 0$ since $S_{0}$ is constant along the fibres.

For BRST, $M = F_{0} \times \mathfrak{g}[1]$, so every field and every ghost gets an antifield.

**Remark**: The BV differential does two jobs. On the antifields of the fields, $Qx^{+}_{i} = \pm\partial S_{0}/\partial x^{i} + \cdots$, which gives a Koszul–Tate resolution of the critical locus; on the ghosts it is Chevalley–Eilenberg. In good cases $H^{0}(Q)$ is the algebra of gauge-invariant functions on $\mathrm{Crit}(S_{0})$.

**Example** (Chern–Simons): Let $M$ be a closed oriented $3$-manifold and $\mathfrak{g}$ a Lie algebra with an invariant inner product. Take

$$
\mathcal{F} = \Omega^{\bullet}(M,\mathfrak{g})[1], \qquad \mathcal{A} = c + A + A^{+} + c^{+}
$$

where a $p$-form component has degree $1 - p$: $|c| = 1$, $|A| = 0$, $|A^{+}| = -1$, $|c^{+}| = -2$. Then

$$
\omega = \frac{1}{2}\int_{M}\langle\delta\mathcal{A},\delta\mathcal{A}\rangle, \qquad S = \int_{M}\frac{1}{2}\langle\mathcal{A},d\mathcal{A}\rangle + \frac{1}{6}\langle\mathcal{A},[\mathcal{A},\mathcal{A}]\rangle
$$

and the CME follows from $d^{2} = 0$, Stokes ($\partial M = \emptyset$), Jacobi and invariance of $\langle\cdot,\cdot\rangle$. The cohomological vector field is $Q\mathcal{A} = d\mathcal{A} + \frac{1}{2}[\mathcal{A},\mathcal{A}]$. In components, $S$ is $S_{\mathrm{CS}}(A)$ plus terms linear in $A^{+}$ and $c^{+}$ encoding $QA = d_{A}c$ and $Qc \propto [c,c]$, i.e. $S = S_{0} + \hat{Q}$. (C–M Example 5.3.3 does the abelian case.)

## BV Laplacian and the quantum master equation
In Darboux coordinates $(x^{i},x^{+}_{i})$ with $\omega = \sum_{i}\delta x^{+}_{i}\delta x^{i}$:

**Definition**: The *BV Laplacian* is

$$
\Delta = \sum_{i}(-1)^{|x^{i}|}\frac{\partial}{\partial x^{i}}\frac{\partial}{\partial x^{+}_{i}}
$$

It has degree $1$, $\Delta^{2} = 0$, and it is a second-order operator whose failure to be a derivation is the BV bracket:

$$
\Delta(fg) = (\Delta f)g + (-1)^{|f|}f\Delta g + (-1)^{|f|}(f,g)
$$

(The signs depend on conventions; C–M write $\pm$.) So $(C^\infty(\mathcal{F}),\cdot,(\cdot,\cdot),\Delta)$ is a *BV algebra*. Geometrically $\Delta f$ is a divergence: C–M have $\Delta f = -\frac{1}{2}\operatorname{div}X_{f}$ for the coordinate Berezinian.

**Definition**: The *quantum master equation* (QME) is

$$
\Delta e^{\frac{i}{\hbar}S} = 0 \iff \frac{1}{2}(S,S) - i\hbar\Delta S = 0
$$

This follows from $\Delta e^{F} = \left(\Delta F + \frac{1}{2}(F,F)\right)e^{F}$ for even $F$, with $F = \frac{i}{\hbar}S$. For $S = S_{0} + \hbar S_{1} + \cdots$, the order-$\hbar^{0}$ part is the CME for $S_{0}$.

**Proposition**: If $S$ satisfies the QME, then $Q_{\hbar} = (S,\cdot) - i\hbar\Delta$ satisfies $Q_{\hbar}^{2} = 0$, since

$$
Q_{\hbar}f = -i\hbar e^{-\frac{i}{\hbar}S}\Delta\left(e^{\frac{i}{\hbar}S}f\right)
$$

Its cohomology gives the quantum observables.

## BV integrals and gauge fixing
**Definition**: A *Lagrangian submanifold* $\mathcal{L} \subset \mathcal{F}$ has half the dimension and $\omega|_{\mathcal{L}} = 0$. A half-density on $\mathcal{F}$ restricts to a density on $\mathcal{L}$, so $\int_{\mathcal{L}}\sigma$ makes sense for $\sigma \in \mathrm{Dens}^{1/2}(\mathcal{F})$.

**Definition**: On $\mathcal{F} = T^{\ast}[-1]M$, a *gauge-fixing fermion* is a function $\Psi \in C^\infty(M)$ of degree $-1$. Its graph is Lagrangian:

$$
\mathcal{L}_{\Psi} = \left\lbrace x^{+}_{i} = \frac{\partial\Psi}{\partial x^{i}}\right\rbrace, \qquad \int_{\mathcal{L}_{\Psi}}f := \int_{M}f\Big|_{x^{+} = \partial\Psi/\partial x}d^{n}x
$$

**Theorem** (Batalin–Vilkovisky, Schwarz):
1. If $f = \Delta g$, then $\int_{\mathcal{L}_{\Psi}}f = 0$ for every $\Psi$ for which the integral is defined.
2. If $\Delta f = 0$, then $\int_{\mathcal{L}_{\Psi_{t}}}f$ is independent of $t$ for a family of gauge-fixing fermions $\Psi_{t}$.

Take $f = e^{\frac{i}{\hbar}S}$: if $S$ satisfies the QME, the gauge-fixed integral does not depend on the gauge. On the zero section $\Psi = 0$ the integral is ill-defined, since $S|_{x^{+} = 0} = S_{0}$ is constant along gauge orbits; the theorem lets us replace it by any $\mathcal{L}_{\Psi}$ on which the integral converges (C–M Remark 5.0.2).

**Example** (Faddeev–Popov): Add antighosts $\bar{c}$ of degree $-1$ and Lagrange multipliers $\lambda$ of degree $0$, with $S_{\mathrm{aux}} = \langle\bar{c}^{+},\lambda\rangle$; this leaves the CME and QME intact. For a gauge condition $G(A) = 0$ take $\Psi = \langle\bar{c},G(A)\rangle$. On $\mathcal{L}_{\Psi}$ we get $\bar{c}^{+} = G(A)$, $A^{+} = \langle\bar{c},\partial G/\partial A\rangle$ and $c^{+} = 0$, so $\lambda$ imposes the gauge condition and $\langle A^{+},d_{A}c\rangle$ becomes the Faddeev–Popov ghost term $\langle\bar{c},\frac{\partial G}{\partial A}d_{A}c\rangle$.

**Global version**: By Schwarz, every odd symplectic supermanifold is symplectomorphic to some $\Pi T^{\ast}\mathcal{N}$ (in the $\mathbb{Z}$-graded setting, $T^{\ast}[-1]\mathcal{N}$). Then

$$
\mathrm{Dens}^{1/2}(\Pi T^{\ast}\mathcal{N}) \cong \Gamma(\Lambda^{\bullet}T\mathcal{N}) \otimes \Gamma(\Lambda^{\mathrm{top}}T^{\ast}\mathcal{N}), \qquad \Phi(X \otimes v) = \iota_{X}v \in \Omega^{\bullet}(\mathcal{N})
$$

and the canonical BV Laplacian on half-densities is $\Delta^{1/2} = \Phi^{-1}\circ\delta\circ\Phi$: the de Rham differential in disguise. Odd conormal bundles $\Pi N^{\ast}C$ of submanifolds $C \subset \mathcal{N}$ are Lagrangian, and

$$
\int_{\Pi N^{\ast}C}\rho = \int_{C}\Phi(\rho)
$$

so for these Lagrangians the BV theorem is Stokes' theorem. A $\Delta^{1/2}$-closed, nowhere-vanishing half-density $\rho$ gives a Laplacian on functions, $\Delta_{\rho}f = \rho^{-1}\Delta^{1/2}(f\rho)$.

## BV pushforward
Split $\mathcal{F} = \mathcal{F}^{\prime}\times\mathcal{F}^{\prime\prime}$ as odd symplectic manifolds, so that $\Delta = \Delta^{\prime} + \Delta^{\prime\prime}$, and choose a Lagrangian $\mathcal{L}^{\prime\prime} \subset \mathcal{F}^{\prime\prime}$. Integrating over $\mathcal{L}^{\prime\prime}$ fibrewise:

**Proposition**:
1. $\Delta^{\prime}\int_{\mathcal{L}^{\prime\prime}}f = \int_{\mathcal{L}^{\prime\prime}}\Delta f$, so BV pushforward is a chain map.
2. If $\Delta f = 0$, deforming $\mathcal{L}^{\prime\prime}$ changes $\int_{\mathcal{L}^{\prime\prime}}f$ by a $\Delta^{\prime}$-exact term.

So if $S$ satisfies the QME on $\mathcal{F}$, the *effective action* $S^{\prime}$, defined by $e^{\frac{i}{\hbar}S^{\prime}} = \int_{\mathcal{L}^{\prime\prime}}e^{\frac{i}{\hbar}S}$, satisfies the QME on $\mathcal{F}^{\prime}$ and is well defined up to $\Delta^{\prime}$-exact changes. This is how one integrates out fields while staying inside BV, and it is where the *residual fields* of the BV-BFV formalism come from.

## BFV formalism
This is the Hamiltonian counterpart: a cohomological description of a reduced phase space.

**Coisotropic reduction**: Let $(F,\omega)$ be an ordinary symplectic manifold and $C \subset F$ coisotropic, $TC^{\omega} \subset TC$. The characteristic distribution $TC^{\omega}$ is integrable, and its leaf space $\underline{C}$ is symplectic when smooth. Algebraically, with $I$ the vanishing ideal of $C$, coisotropy means $\lbrace I,I\rbrace \subset I$ (first-class constraints), and

$$
C^\infty(\underline{C}) \cong N(I)/I, \qquad N(I) = \lbrace f \in C^\infty(F) : \lbrace f,I\rbrace \subset I\rbrace
$$

Marsden–Weinstein reduction $\mu^{-1}(0)/G$ is the case $C = \mu^{-1}(0)$.

**Definition**: A *BFV manifold* is $(\mathcal{F},\omega,\Omega)$ with $\omega$ symplectic of degree $0$ and $\Omega$ of degree $1$ satisfying $\lbrace\Omega,\Omega\rbrace = 0$. Then $Q = X_{\Omega} = \lbrace\Omega,\cdot\rbrace$ is cohomological, and $H^{0}(Q)$ is a Poisson algebra.

**Construction**: Let $C = \lbrace\phi_{1} = \cdots = \phi_{r} = 0\rbrace$ with $0$ a regular value and $\lbrace\phi_{a},\phi_{b}\rbrace = f_{ab}^{c}\phi_{c}$, $f_{ab}^{c} \in C^\infty(F)$. Add ghosts $c^{a}$ of degree $1$ and ghost momenta $b_{a}$ of degree $-1$:

$$
\mathcal{F} = F \times T^{\ast}(\mathbb{R}^{r}[1]), \qquad \omega_{\mathcal{F}} = \omega + \sum_{a}\delta b_{a}\delta c^{a}
$$

Normalize the bracket so that $\lbrace c^{a},b_{b}\rbrace = \delta^{a}_{b}$. The *BFV charge* is

$$
\Omega = c^{a}\phi_{a} - \frac{1}{2}f_{ab}^{c}c^{a}c^{b}b_{c} + O(b^{2})
$$

where the higher terms exist by homological perturbation theory and vanish when the $f_{ab}^{c}$ are constant. (C–M write $+\frac{1}{2}$; with this normalization the cross terms in $\lbrace\Omega,\Omega\rbrace$ cancel $c^{a}c^{b}\lbrace\phi_{a},\phi_{b}\rbrace$ only for $-\frac{1}{2}$.) Then $Qb_{a} = \phi_{a} + \cdots$ is a Koszul resolution of $C^\infty(C)$, and on $C^\infty(F)$, $Q = c^{a}\lbrace\phi_{a},\cdot\rbrace + \cdots$ differentiates along the characteristic foliation.

**Theorem** (BFV): $H^{0}(Q) \cong N(I)/I$ as Poisson algebras, and hence $H^{0}(Q) \cong C^\infty(\underline{C})$ when $\underline{C}$ is smooth.

**Example**: For a Hamiltonian $G$-action with equivariant moment map $\mu$, take $\phi_{a} = \mu_{a} = \langle\mu,e_{a}\rangle$, with signs chosen so that $\lbrace\mu_{a},\mu_{b}\rbrace = f_{ab}^{c}\mu_{c}$; the structure functions are now constant. Then $\Omega = c^{a}\mu_{a} - \frac{1}{2}f_{ab}^{c}c^{a}c^{b}b_{c}$ exactly, $Q$ is the Chevalley–Eilenberg differential of $\mathfrak{g}$ with values in the Koszul complex of $\mu$, and $H^{0}(Q) = C^\infty(\mu^{-1}(0))^{\mathfrak{g}}$. When $G$ acts freely and properly on $\mu^{-1}(0)$ this is $C^\infty(\mu^{-1}(0)/G)$.

**Remark**: Quantizing this, with a star product in place of $\lbrace\cdot,\cdot\rbrace$ and a quantum BRST charge built from a quantum moment map in place of $\Omega$, gives BRST reduction in deformation quantization (Bordemann–Herbig–Waldmann).

## BV-BFV formalism
On a manifold with boundary, Stokes' theorem breaks the CME: varying $S$ produces a boundary term. The BV-BFV formalism controls that term with a BFV manifold of boundary fields.

**Definition** (CMR; C–M Def. 7.0.1): An *exact BV-BFV pair* consists of
- an exact BFV manifold $(\mathcal{F}^{\partial},\omega^{\partial} = \delta\alpha^{\partial},Q^{\partial})$ with BFV action $S^{\partial}$, $\iota_{Q^{\partial}}\omega^{\partial} = \delta S^{\partial}$ (so $S^{\partial}$ plays the role of $\Omega$ above);
- a symplectic manifold $(\mathcal{F},\omega)$ of degree $-1$ with a cohomological vector field $Q$ and a function $S$ of degree $0$;
- a surjective submersion $\pi : \mathcal{F} \to \mathcal{F}^{\partial}$ such that $Q$ and $Q^{\partial}$ are $\pi$-related,

such that

$$
\iota_{Q}\omega = \delta S + \pi^{\ast}\alpha^{\partial}
$$

**Proposition**: The *modified classical master equation* (mCME) holds:

$$
\frac{1}{2}\iota_{Q}\iota_{Q}\omega = \pi^{\ast}S^{\partial}, \qquad \text{equivalently} \qquad Q(S) = \pi^{\ast}\left(2S^{\partial} - \iota_{Q^{\partial}}\alpha^{\partial}\right)
$$

When $\mathcal{F}^{\partial}$ is a point this is $\iota_{Q}\omega = \delta S$ and $(S,S) = 0$. In general $\omega$ is no longer $Q$-invariant: $\delta\iota_{Q}\omega = \pi^{\ast}\omega^{\partial}$.

**Example** (Chern–Simons with boundary): Let $\partial M = \Sigma$ and keep $\mathcal{F}$, $\omega$, $S$, $Q$ from before. Integrating by parts, $\iota_{Q}\omega - \delta S$ is a boundary term, equal to $\pi^{\ast}\alpha^{\partial}$ for

$$
\mathcal{F}^{\partial} = \Omega^{\bullet}(\Sigma,\mathfrak{g})[1], \qquad \alpha^{\partial} = \frac{1}{2}\int_{\Sigma}\langle\mathcal{A}^{\partial},\delta\mathcal{A}^{\partial}\rangle, \qquad \omega^{\partial} = \frac{1}{2}\int_{\Sigma}\langle\delta\mathcal{A}^{\partial},\delta\mathcal{A}^{\partial}\rangle
$$

with $\pi$ the pullback of forms to $\Sigma$, and

$$
S^{\partial} = \int_{\Sigma}\frac{1}{2}\langle\mathcal{A}^{\partial},d\mathcal{A}^{\partial}\rangle + \frac{1}{6}\langle\mathcal{A}^{\partial},[\mathcal{A}^{\partial},\mathcal{A}^{\partial}]\rangle
$$

On $\Sigma$, $\mathcal{A}^{\partial} = c + A + A^{+}$ in degrees $1, 0, -1$, so $\omega^{\partial}$ has degree $0$ and $S^{\partial}$ has degree $1$. In components $S^{\partial}$ is $\int_{\Sigma}\langle c,F_{A}\rangle$ plus a term quadratic in $c$ and linear in $A^{+}$: the BFV charge of the previous section for the constraint $F_{A} = 0$, with ghost $c$ and ghost momentum $A^{+}$. So $H^{0}(Q^{\partial})$ is (away from singularities) the algebra of functions on the moduli space of flat connections on $\Sigma$, the reduced phase space of Chern–Simons theory. C–M Example 7.0.2 does the abelian case, where $S^{\partial} = \int_{\Sigma}c dA$.

**Example** (AKSZ): Both examples are AKSZ theories. Let $(X,\omega_{X} = \delta\alpha_{X},\Theta)$ be a Hamiltonian Q-manifold of degree $d-1$, with $\alpha_{X} = \alpha_{i}(x)\delta x^{i}$, and $N$ a closed $d$-manifold. On $\mathcal{F} = \mathrm{Map}(T[1]N,X)$,

$$
\omega = \int_{T[1]N}\mathrm{ev}^{\ast}\omega_{X}, \qquad S[\Phi] = \int_{T[1]N}\left(\alpha_{i}(\Phi)d\Phi^{i} + \Theta(\Phi)\right)
$$

and the CME follows from $\lbrace\Theta,\Theta\rbrace = 0$ and $d^{2} = 0$. Integration over $T[1]N$ has degree $-d$, which is why $\omega$ comes out of degree $-1$ and $S$ of degree $0$.
- $X = \mathfrak{g}[1]$, $d = 3$: Chern–Simons.
- $X = T^{\ast}[1]M$ with $\Theta = \frac{1}{2}\pi^{ij}p_{i}p_{j}$, $d = 2$: the Poisson sigma model, $S = \int_{\Sigma}\langle\boldsymbol{\eta},d\mathsf{X}\rangle + \frac{1}{2}\langle\pi(\mathsf{X}),\boldsymbol{\eta}\boldsymbol{\eta}\rangle$. Its perturbative expansion on the disk gives Kontsevich's star product (Cattaneo–Felder).

On a manifold with boundary, the same formulas on $T[1]\partial N$ give the boundary BFV data (C–M Examples 7.0.2 and 7.0.3).

## Quantum BV-BFV
Quantize the boundary: choose a polarization of $\mathcal{F}^{\partial}$ on whose leaves $\alpha^{\partial}$ vanishes. This gives a space of boundary states $\mathcal{H}_{\Sigma}$ and an operator $\Omega_{\Sigma}$ quantizing $S^{\partial}$, with $\Omega_{\Sigma}^{2} = 0$. In the bulk, split the fields into *residual fields* $\mathcal{V}_{M}$ (zero modes) and fluctuations, and BV-pushforward over a gauge-fixing Lagrangian in the fluctuations. The result

$$
Z_{M} \in \mathcal{H}_{\Sigma}\otimes\mathrm{Dens}^{1/2}(\mathcal{V}_{M})
$$

satisfies the *modified quantum master equation* (mQME)

$$
\left(\hbar^{2}\Delta_{\mathcal{V}_{M}} + \Omega_{\Sigma}\right)Z_{M} = 0
$$

Changing the gauge fixing changes $Z_{M}$ by an exact term for $\hbar^{2}\Delta_{\mathcal{V}_{M}} + \Omega_{\Sigma}$, and gluing along $\Sigma$ is pairing of boundary states followed by BV pushforward over residual fields. With no boundary, the mQME is $\Delta_{\mathcal{V}_{M}}Z_{M} = 0$, the QME for the effective action.

## References
- A. S. Cattaneo, N. Moshayedi, *Introduction to the BV-BFV formalism*, Rev. Math. Phys. 32 (2020) 2030006, [arXiv:1905.08047](https://arxiv.org/abs/1905.08047).
- A. S. Cattaneo, P. Mnev, N. Reshetikhin, *Classical BV theories on manifolds with boundary*, Commun. Math. Phys. 332 (2014) 535–603, [arXiv:1201.0290](https://arxiv.org/abs/1201.0290).
- A. S. Cattaneo, P. Mnev, N. Reshetikhin, *Perturbative quantum gauge theories on manifolds with boundary*, Commun. Math. Phys. 357 (2018) 631–730, [arXiv:1507.01221](https://arxiv.org/abs/1507.01221).
- P. Mnev, *Lectures on Batalin–Vilkovisky formalism and its applications in topological quantum field theory*, [arXiv:1707.08096](https://arxiv.org/abs/1707.08096).
- M. Alexandrov, M. Kontsevich, A. Schwarz, O. Zaboronsky, *The geometry of the master equation and topological quantum field theory*, Int. J. Mod. Phys. A 12 (1997) 1405–1429, [arXiv:hep-th/9502010](https://arxiv.org/abs/hep-th/9502010).
- A. S. Cattaneo, G. Felder, *A path integral approach to the Kontsevich quantization formula*, Commun. Math. Phys. 212 (2000) 591–611, [arXiv:math/9902090](https://arxiv.org/abs/math/9902090).
- A. Schwarz, *Geometry of Batalin–Vilkovisky quantization*, Commun. Math. Phys. 155 (1993).
- M. Bordemann, H.-C. Herbig, S. Waldmann, *BRST cohomology and phase space reduction in deformation quantization*, Commun. Math. Phys. 210 (2000).


