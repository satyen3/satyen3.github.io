---
title: Deriving the Kontsevich star product from the Poisson Sigma model
date: 2026-10-26
draft: true
---

**Conventions.** $M=\mathbb R^d$ with coordinates $x^i$. Poisson bivector $\pi^{ij}(x)=-\pi^{ji}(x)$, bracket $\{f,g\}=\pi^{ij}\partial_if\,\partial_jg$, Jacobi identity $[\pi,\pi]=0$. For covectors $p,q$: $(\pi^\sharp p)^i=\pi^{ij}p_j$, $\pi(p,q)=\pi^{ij}p_iq_j$, $p\cdot x=p_ix^i$. Plane waves: $e_p(x)=e^{\frac{i}{\hbar}p\cdot x}$.

Everything is a formal power series in $\pi$ (replace $\pi$ by $t\pi$ and expand in $t$). At each order in $t$ only finitely many graphs contribute and every integral below reduces to finitely many derivatives at a point, so inserting plane waves and using stationary phase are exact, order by order in $t$.

---

## 1. The Poisson sigma model

**Worldsheet.** $\Sigma=\overline{\mathbb H}\cup\{\infty\}$, the closed upper half-plane plus $\infty$ (a disk). Its boundary $\partial\Sigma=\mathbb R\cup\{\infty\}$ is oriented from $-\infty$ to $+\infty$.

**Fields.** A map $X:\Sigma\to M$ and a 1-form $\eta$ on $\Sigma$ with values in $X^*T^*M$ (components $\eta_i$, each a 1-form on $\Sigma$).

**Action.**

$$S[X,\eta]=\int_\Sigma\Big(\eta_i\wedge dX^i+\tfrac12\,\pi^{ij}(X)\,\eta_i\wedge\eta_j\Big).$$

**Boundary condition.** $\eta_i$ vanishes on vectors tangent to $\partial\Sigma$. (Varying $X$ produces the boundary term $-\int_{\partial\Sigma}\delta X^i\,\eta_i$; this condition kills it.)

**Equations of motion.**

$$dX^i+\pi^{ij}(X)\,\eta_j=0 \tag{E1}$$

$$d\eta_i+\tfrac12\,\partial_i\pi^{jk}(X)\,\eta_j\wedge\eta_k=0 \tag{E2}$$

**On the boundary.** Restrict (E1) to $\partial\Sigma$; there $\eta$ vanishes along $\partial\Sigma$, so $d\big(X|_{\partial\Sigma}\big)=0$. **Wherever (E1) holds along a boundary segment, $X$ is constant on it.**

**Gauge symmetry.** For $\beta_i$ (a section of $X^*T^*M$) with $\beta|_{\partial\Sigma}=0$:

$$\delta X^i=\pi^{ij}(X)\,\beta_j,\qquad \delta\eta_i=-d\beta_i-\partial_i\pi^{jk}(X)\,\eta_j\,\beta_k .$$

These leave $S$ invariant but close only on solutions of (E1)–(E2), so gauge fixing needs the BV formalism.

---

## 2. Opening the path integral: Kontsevich's formula

### 2.1 The formula (Cattaneo–Felder)

Mark $0,1,\infty$ on $\partial\Sigma$. For functions $f,g$ on $M$:

$$(f\star g)(x)=\int_{X(\infty)=x} f\big(X(1)\big)\,g\big(X(0)\big)\,e^{\frac{i}{\hbar}S[X,\eta]}\;\mathcal DX\,\mathcal D\eta ,$$

normalized so that $1\star1=1$. It is defined by its perturbative expansion (2.2–2.5).

### 2.2 Expansion around the constant solution

$X\equiv x$, $\eta\equiv0$ solves (E1)–(E2) and has $X(\infty)=x$. Put $X=x+\xi$ with $\xi(\infty)=0$ and Taylor-expand at $x$:

$$S=\underbrace{\int_\Sigma\eta_i\wedge d\xi^i}_{\text{free part}}\;+\;\sum_{k\ge0}\frac{1}{2\,k!}\,\partial_{l_1}\cdots\partial_{l_k}\pi^{ij}(x)\int_\Sigma\xi^{l_1}\cdots\xi^{l_k}\,\eta_i\wedge\eta_j ,$$

$$f\big(X(1)\big)=\sum_{k\ge0}\frac{1}{k!}\,\partial_{l_1}\cdots\partial_{l_k}f(x)\;\xi^{l_1}(1)\cdots\xi^{l_k}(1),\qquad\text{and the same for } g \text{ at } 0 .$$

Everything except the free part is an interaction vertex.

### 2.3 Propagator

After gauge fixing (BV with superfields) the propagator pairs $\xi$ with $\eta$:

$$\langle\xi^k(w)\,\eta_i(z)\rangle=(\text{const})\cdot\hbar\;\delta^k_i\;d\phi(z,w),\qquad \phi(z,w)=\arg(w-z)+\arg(\bar w-z),$$

with $d=d_z+d_w$. $\phi(z,w)$ is the hyperbolic angle at $z$ between the geodesic from $z$ to $\infty$ and the geodesic from $z$ to $w$. It vanishes for $z\in\mathbb R$: this is the boundary condition on $\eta$.

### 2.4 Graphs

Each term of the expansion is a graph $\Gamma$:

- $n$ **interior vertices** at points $z_1,\dots,z_n\in\mathbb H$; each carries one factor $\pi^{ij}$ (from the interaction term, possibly differentiated) and has two outgoing edges (its two $\eta$'s), labelled first and second;
- two **boundary vertices**: the point $1$ carrying $f$ and the point $0$ carrying $g$;
- an **edge** from $z_a$ to a vertex $v$: the index it carries is contracted with a derivative $\partial$ acting on the object at $v$ ($f$, $g$, or the $\pi$ at $v$), and it contributes the 1-form $d\phi(z_a,v)$.

Terms with an edge from a vertex to itself, or two edges with the same ends, vanish. $B_\Gamma(f,g)$ denotes the resulting bidifferential operator; e.g. for $n=1$, first edge to $f$, second to $g$: $B_\Gamma(f,g)=\pi^{ij}\partial_if\,\partial_jg$.

### 2.5 Result

$$\boxed{\;f\star g=\sum_{n\ge0}\varepsilon^n\sum_{\Gamma}w_\Gamma\,B_\Gamma(f,g),\qquad w_\Gamma=\frac{1}{n!\,(2\pi)^{2n}}\int_{\mathrm{Conf}_n(\mathbb H)}\ \bigwedge_{\text{edges } e}d\phi_e\;}$$

summed over all graphs of 2.4 with $n$ interior vertices; $\mathrm{Conf}_n(\mathbb H)$ is the space of $n$ distinct points of $\mathbb H$. Here $\varepsilon\propto\hbar$; we use $\varepsilon=\tfrac{i\hbar}{2}$, the normalization in which $f\star g=fg+\tfrac{i\hbar}{2}\{f,g\}+O(\hbar^2)$ (for $n=1$ the two graphs have weights $\pm\frac12$ and together give $\varepsilon\{f,g\}$).

> **Kontsevich.** This is Kontsevich's star product. The path integral explains its weights: each $w_\Gamma$ is a Feynman integral, a product of propagators integrated over the positions of the interaction vertices.

### 2.6 Associativity (Kontsevich's proof)

Put $f,g,h$ at three boundary points. The space of $n$ interior points and three boundary points modulo $z\mapsto az+b$ ($a>0$, $b\in\mathbb R$) has dimension $2n+1$. The $2n$-form $\bigwedge_e d\phi_e$ is closed, so by Stokes its integral over the boundary of the compactified space is $0$. The boundary faces:

1. a cluster of points collapses to a point of $\mathbb R$: the graph splits into two graphs, one inserted into the other; these terms add up to $(f\star g)\star h-f\star(g\star h)$;
2. two interior points collide: these terms contain $[\pi,\pi]=0$;
3. all other faces give $0$.

Hence $(f\star g)\star h=f\star(g\star h)$. On the disk, face 1 is a disk with four boundary points ($f$, $g$, $h$, output) degenerating into two disks with three boundary points each.

---

## 3. Plane waves: trees and loops

### 3.1 Inserting plane waves

Since $\partial_ie_p=\frac{i}{\hbar}p_i\,e_p$,

$$\varepsilon^nB_\Gamma(e_{p_1},e_{p_2})=\varepsilon^n\Big(\frac{i}{\hbar}\Big)^{k}P_\Gamma(p_1,p_2,x)\;e_{p_1+p_2},$$

where $k$ is the number of edges ending on $f$ or $g$, and $P_\Gamma$ is a polynomial in $p_1$ (one factor per edge to $f$) and $p_2$ (one per edge to $g$) with coefficients built from $\pi$ and its derivatives at $x$.

### 3.2 Exponentiation

Call $\Gamma$ **connected** if its interior vertices, with the edges between them, form a connected graph. If the interior vertices split into groups with no edges between groups, then $w_\Gamma$ and $B_\Gamma(e_{p_1},e_{p_2})/e_{p_1+p_2}$ factorize over the groups (the boundary points are fixed, and derivatives of exponentials only produce factors of $p$). Hence

$$e_{p_1}\star e_{p_2}=e_{p_1+p_2}\cdot\exp\Big(\sum_{\Gamma\ \text{connected}}\varepsilon^n\,w_\Gamma\,\frac{B_\Gamma(e_{p_1},e_{p_2})}{e_{p_1+p_2}}\Big).$$

### 3.3 Counting powers of $\hbar$

A connected $\Gamma$ has $n$ interior vertices and $2n$ edges: $k$ end on $f$ or $g$, and $2n-k$ join interior vertices. Its number of independent cycles is

$$L=(2n-k)-n+1=n-k+1,$$

and its power of $\hbar$ is $\varepsilon^n\hbar^{-k}\propto\hbar^{\,n-k}=\hbar^{\,L-1}$. (For $\hbar$-independent $f,g$ the power is $\hbar^n$ instead, and trees and cycles mix at each order. The plane waves are what make the power of $\hbar$ count cycles.)

### 3.4 Definition of $S_\pi$ and $c$

$$\boxed{\;e_{p_1}\star e_{p_2}=e^{\frac{i}{\hbar}S_\pi(p_1,p_2,x)}\;c(p_1,p_2,x)\;\big(1+O(\hbar)\big)\;}$$

- $\frac{i}{\hbar}\big(S_\pi-(p_1+p_2)\cdot x\big)$ = sum over connected graphs with $L=0$ (**trees**);
- $\log c$ = sum over connected graphs with $L=1$ (**one cycle**);
- connected graphs with $L\ge2$ give the $O(\hbar)$.

$S_\pi$ and $c$ do not depend on $\hbar$. Since $e_0=1$ and $1\star h=h\star1=h$:

$$S_\pi(p,0,x)=S_\pi(0,p,x)=p\cdot x,\qquad c(p,0,x)=c(0,p,x)=1 .$$

Lowest order: $S_\pi(p_1,p_2,x)=(p_1+p_2)\cdot x-\tfrac12\,\pi(x)(p_1,p_2)+O(\pi^2)$.

> **Kontsevich.** The coefficients of $S_\pi$ are his weights $w_\Gamma$ of tree graphs; those of $\log c$ are his weights of graphs with one cycle.

**Example: constant $\pi$.** Here $\partial\pi=0$, so no edge can end on an interior vertex and the only connected graphs have $n=1$. Exactly:

$$e_{p_1}\star e_{p_2}=e^{\frac{i}{\hbar}\left[(p_1+p_2)\cdot x-\frac12\pi(p_1,p_2)\right]},\qquad S_\pi=(p_1+p_2)\cdot x-\tfrac12\pi(p_1,p_2),\qquad c=1 .$$

---

## 4. Trees are classical: what $S_\pi$ is

With $e_{p_1}$ at $1$ and $e_{p_2}$ at $0$ the integrand is $e^{\frac{i}{\hbar}\left(S+p_1\cdot X(1)+p_2\cdot X(0)\right)}$: the insertions are sources. Tree graphs are the iterative solution of the field equations with these sources (the propagator acting as Green's function), and their sum is the action evaluated on that solution. Hence

$$S_\pi(p_1,p_2,x)=\text{critical value of } S[X,\eta]+p_1\cdot X(1)+p_2\cdot X(0)\ \text{ over fields with } X(\infty)=x,$$

computed perturbatively in $\pi$. Call the critical point $(X,\eta)$ the **classical solution**.

**Its shape.** Away from $0,1,\infty$ it solves (E1)–(E2), so by §1, $X$ is constant on each boundary arc $A=(-\infty,0)$, $B=(0,1)$, $C=(1,\infty)$; call the values $x_A,x_B,x_C$.

At a source point $\eta$ is singular. Let $\gamma_0$ be a small semicircle in $\mathbb H$ around $0$, run from the $A$ side to the $B$ side, and $\gamma_1$ the same around $1$ (from the $B$ side to the $C$ side). Varying $X(0)$, the boundary term of §1 on $\gamma_0$ must cancel the source; likewise at $1$:

$$\int_{\gamma_0}\eta=p_2,\qquad\int_{\gamma_1}\eta=p_1 .$$

By (E1) along $\gamma_0$, $X$ goes from $x_A$ to $x_B$: **$X$ jumps at the source points.**

**Derivatives of $S_\pi$.** The derivative of a critical value with respect to a parameter is the partial derivative of the functional at the critical point. Hence

$$\frac{\partial S_\pi}{\partial p_1}=X(1),\qquad \frac{\partial S_\pi}{\partial p_2}=X(0),\qquad \frac{\partial S_\pi}{\partial x}=p_\infty ,$$

where $X(1),X(0)$ are the values the perturbative solution assigns at the source points, and $p_\infty=\int_{\gamma_\infty}\eta$ over a large semicircle $\gamma_\infty$ around $\infty$, run from the $A$ side to the $C$ side ($p_\infty$ is the multiplier enforcing $X(\infty)=x$).

---

## 5. The groupoid $G$: phase space of the model on an interval

### 5.1 Reduction on a strip

Take $\Sigma=[0,1]_u\times\mathbb R_\tau$ and write $\eta=\eta_u\,du+\eta_\tau\,d\tau$. In $S$, $\eta_\tau$ appears without $\tau$-derivatives: it is a Lagrange multiplier imposing the $u$-component of (E1). The boundary condition gives $\eta_\tau=0$ at $u=0,1$, so gauge parameters vanish there.

**Cotangent path:** a pair $(X(u),\ \eta(u)\,du)$, $u\in[0,1]$, with

$$\frac{dX}{du}=-\pi^\sharp(X)\,\eta .$$

**Cotangent homotopy** between two cotangent paths: a solution of (E1)–(E2) on the square $[0,1]_u\times[0,1]_s$ that restricts to them at $s=0,1$ and whose $\eta$ has no $ds$-component along $u=0,1$ (so, by (E1), the endpoints stay fixed). Infinitesimally these are the gauge transformations with $\beta(0)=\beta(1)=0$.

The reduced phase space (Cattaneo–Felder) is

$$G=\{\text{cotangent paths}\}\,/\,\{\text{cotangent homotopies}\}.$$

### 5.2 Structure

- $s[X,\eta]=X(0)$, $t[X,\eta]=X(1)$;
- product $g_1g_2$ = concatenation (first $g_2$, then $g_1$), defined when $s(g_1)=t(g_2)$;
- unit $1_x$ = constant path at $x$ with $\eta=0$; inverse = reversed path;
- $\omega$ = reduction of $\int_0^1\delta X^i\wedge\delta\eta_i\,du$ (it comes from the term $\eta\wedge dX$ of $S$).

This integral splits under concatenation, so

$$\operatorname{graph}(m)=\{(g_1,g_2,g_1g_2)\}\subset G\times G\times\overline G \quad\text{is Lagrangian}$$

($\overline G$ is $G$ with $-\omega$): $G$ is the symplectic groupoid of $\pi$.

### 5.3 Only arrows near the units occur

Perturbation theory expands around $X\equiv x$, $\eta\equiv0$, so every arrow that occurs is a formal perturbation of a unit (whether $G$ is globally a manifold plays no role). Near the units each arrow has a unique representative with **constant** $\eta(u)=p$ (constant in the coordinates $x^i$), i.e. $dX/du=-\pi^\sharp(X)\,p$. Call $p$ the **momentum** of the arrow.

---

## 6. Where the groupoid sits in the path integral

### 6.1 Arcs are points, semicircles are arrows

```
              γ∞ : arrow g∞ = g₁g₂, from x_A to x_C
      .------------------------------------------------.
     /                                                  \
    |                         ℍ                          |
    |            γ₀                      γ₁              |
----+-----------( )----------------------( )-------------+----
  arc A = (−∞,0)  0     arc B = (0,1)      1    arc C = (1,∞)
    X = x_A      g₂       X = x_B         g₁      X = x_C
```

Take the classical solution of §4. $\gamma_0$ is an interval whose ends lie on the arcs $A$ and $B$, where $\eta$ vanishes along $\partial\Sigma$. The solution restricted to $\gamma_0$ is a cotangent path from $x_A$ to $x_B$, i.e. an arrow

$$g_2\in G,\qquad s(g_2)=x_A,\quad t(g_2)=x_B .$$

Its $\eta$-integral is $p_2$ (§4), and as $\gamma_0$ shrinks the path becomes the constant-momentum path: $g_2$ has momentum $p_2$. Likewise $\gamma_1$ gives $g_1$ from $x_B$ to $x_C$ with momentum $p_1$, and $\gamma_\infty$ (from the $A$ side to the $C$ side) gives $g_\infty$ from $x_A$ to $x_C$ with momentum $p_\infty$.

### 6.2 The disk is the multiplication

Remove small half-disks around $0,1,\infty$. The rest is a disk, and a solution of (E1)–(E2) on a disk is a cotangent homotopy from its boundary loop to a constant path. Around the loop: arc $A$ (a unit), $g_2$, arc $B$ (a unit), $g_1$, arc $C$ (a unit), then $g_\infty$ backwards. Hence

$$g_\infty=g_1g_2 .$$

The boundary data of classical solutions on the disk with three marked points are exactly the triples $(g_1,g_2,g_1g_2)$, i.e. $\operatorname{graph}(m)$.

### 6.3 $S_\pi$ is the generating function of the multiplication

Label an arrow sitting at a marked point by $(x,p)$: $p$ = its momentum, $x$ = the value of $X$ at that point. By §4 and 6.1–6.2:

$$g_1=\big(\partial_{p_1}S_\pi,\ p_1\big),\qquad g_2=\big(\partial_{p_2}S_\pi,\ p_2\big),\qquad g_1g_2=\big(x,\ \partial_xS_\pi\big),$$

$$\operatorname{graph}(m)=\Big\{\big((\partial_{p_1}S_\pi,p_1),\,(\partial_{p_2}S_\pi,p_2),\,(x,\partial_xS_\pi)\big)\Big\}.$$

In these coordinates $\omega=dx^i\wedge dp_i$ (the boundary terms in §4 pair the value of $X$ at a marked point with the integral of $\eta$ around it), and $S_\pi$ is the **generating function** of the Lagrangian $\operatorname{graph}(m)$ (Cattaneo–Dherin–Felder). In particular $(p_1,p_2,x)$ are coordinates on the space of composable pairs $(g_1,g_2)$.

**Check: constant $\pi$.** The constant-momentum path is $X(u)=X(0)-u\,\pi^\sharp p$. Label it by its midpoint $x$:

$$s(x,p)=x+\tfrac12\pi^\sharp p,\qquad t(x,p)=x-\tfrac12\pi^\sharp p,\qquad \omega=\int_0^1\delta X^i\wedge\delta p_i\,du=\delta x^i\wedge\delta p_i .$$

Concatenation adds momenta: $(x_1,p_1)(x_2,p_2)=(x,\,p_1+p_2)$, and $s(g_1)=t(g_2)$, $s(g_1g_2)=s(g_2)$ force $x_1=x-\tfrac12\pi^\sharp p_2$, $x_2=x+\tfrac12\pi^\sharp p_1$. The $S_\pi$ of §3.4 gives exactly this:

$$\partial_{p_1}S_\pi=x-\tfrac12\pi^\sharp p_2=x_1,\qquad \partial_{p_2}S_\pi=x+\tfrac12\pi^\sharp p_1=x_2,\qquad \partial_xS_\pi=p_1+p_2 .$$

So here the "value of $X$" at each marked point is the midpoint of the jump of $X$ there.

---

## 7. Associativity at order $1/\hbar$ = associativity of $G$

### 7.1 Left bracketing

$F:=e_{p_1}\star e_{p_2}=c(p_1,p_2,y)\,e^{\frac{i}{\hbar}S_\pi(p_1,p_2,y)}\big(1+O(\hbar)\big)$ (variable $y$) is not a plane wave. Write $F(y)=\int\hat F(q)\,e_q(y)\,dq$ with $\hat F(q)=(2\pi\hbar)^{-d}\int F(y)\,e^{-\frac{i}{\hbar}q\cdot y}\,dy$. By bilinearity,

$$(F\star e_{p_3})(x)=(2\pi\hbar)^{-d}\iint c(p_1,p_2,y)\,c(q,p_3,x)\,e^{\frac{i}{\hbar}\Phi_L(y,q)}\,dy\,dq\;\big(1+O(\hbar)\big),$$

$$\Phi_L(y,q)=S_\pi(p_1,p_2,y)-q\cdot y+S_\pi(q,p_3,x).$$

### 7.2 Stationary phase

Critical point $(y_*,q_*)$:

$$q_*=\partial_yS_\pi(p_1,p_2,y_*),\qquad y_*=\partial_qS_\pi(q_*,p_3,x),$$

$$(F\star e_{p_3})(x)=e^{\frac{i}{\hbar}\Phi_L(y_*,q_*)}\;c(p_1,p_2,y_*)\,c(q_*,p_3,x)\,h_L\;\big(1+O(\hbar)\big),$$

$$h_L=\big|\det(I-A_LB_L)\big|^{-1/2},\qquad A_L=\partial_y\partial_yS_\pi(p_1,p_2,y_*),\quad B_L=\partial_q\partial_qS_\pi(q_*,p_3,x).$$

Here $h_L=|\det\operatorname{Hess}\Phi_L|^{-1/2}$; the factors $(2\pi\hbar)^{\pm d}$ cancel; the Hessian has signature $0$, so there is no extra phase; $A_L,B_L=O(\pi)$, so $h_L=1+O(\pi^2)$.

### 7.3 What the critical point is

By §6.3, the first equation says $(y_*,q_*)$ is the product $g_1g_2$ of $g_1=(\partial_{p_1}S_\pi,p_1)$ and $g_2=(\partial_{p_2}S_\pi,p_2)$. The second says $(y_*,q_*)$ is the left factor of a product with $g_3$ (momentum $p_3$) whose result has base point $x$. So stationary phase composes $\operatorname{graph}(m)$ with itself: it computes $(g_1g_2)g_3$.

### 7.4 Right bracketing

$e_{p_1}\star(e_{p_2}\star e_{p_3})$ works the same way with

$$\Phi_R(y',q')=S_\pi(p_2,p_3,y')-q'\cdot y'+S_\pi(p_1,q',x).$$

Its critical point is the arrow $g_2g_3$, and its prefactor is $c(p_2,p_3,y'_*)\,c(p_1,q'_*,x)\,h_R$, with $h_R$ defined like $h_L$.

### 7.5 Order $1/\hbar$

Equating exponents:

$$\Phi_L(y_*,q_*)=\Phi_R(y'_*,q'_*)\quad\text{for all }p_1,p_2,p_3,x. \tag{SGA}$$

The two sides are the generating functions of $\operatorname{graph}(m)\circ(\operatorname{graph}(m)\times\mathrm{id})$ and $\operatorname{graph}(m)\circ(\mathrm{id}\times\operatorname{graph}(m))$, so (SGA) says exactly that the multiplication of $G$ is associative. In particular both sides involve the same composable triple $(g_1,g_2,g_3)$.

> **Kontsevich.** For his weights, (SGA) is the $1/\hbar$-part of the associativity proved in §2.6.

---

## 8. Associativity at order $\hbar^0$: the factor $c$

### 8.1 The equation

After (SGA), equate prefactors:

$$c(p_1,p_2,y_*)\,c(q_*,p_3,x)\,h_L=c(p_2,p_3,y'_*)\,c(p_1,q'_*,x)\,h_R .$$

### 8.2 On the groupoid

By §6.3 write $c(g_1,g_2)$. By §7.3–7.4 the four arguments are $(g_1,g_2)$, $(g_1g_2,g_3)$, $(g_2,g_3)$, $(g_1,g_2g_3)$, and $h_L,h_R$ are functions of the triple fixed by $S_\pi$:

$$c(g_1,g_2)\,c(g_1g_2,g_3)\,h_L=c(g_2,g_3)\,c(g_1,g_2g_3)\,h_R. \tag{*}$$

### 8.3 Cocycles

A (normalized, multiplicative) **2-cocycle** on $G$ is a function $a$ on composable pairs with $a(1,g)=a(g,1)=1$ and

$$a(g_1,g_2)\,a(g_1g_2,g_3)=a(g_2,g_3)\,a(g_1,g_2g_3).$$

A **coboundary** is $a(g_1,g_2)=\tau(g_1)\,\tau(g_2)/\tau(g_1g_2)$, with $\tau$ a function on $G$ and $\tau(1_x)=1$.

So $(*)$ is the cocycle equation with an extra factor $h_L/h_R$ fixed by the trees. When $h_L=h_R$ (e.g. §9), $c$ is exactly a 2-cocycle.

### 8.4 What $c$ is up to equivalence

**(a)** Two star products with the same $S_\pi$ have the same $h_L,h_R$, so $c'/c$ is a 2-cocycle.

**(b)** Let $T=\mathrm{id}+O(\hbar)$ be a series of differential operators with $Te_p=\tau(x,p)\,e_p\,(1+O(\hbar))$ and $\tau(x,0)=1$ (so $T$ does not change phases). The equivalent product $f\star'g=T\big(T^{-1}f\star T^{-1}g\big)$ has the same $S_\pi$, and

$$c'(g_1,g_2)=c(g_1,g_2)\,\frac{\tau(g_1g_2)}{\tau(g_1)\,\tau(g_2)},\qquad \tau(g):=\tau(x,p)\ \text{ at } g=(x,p).$$

Reason: stationary phase evaluates the prefactor $\tau(\cdot,p_1)^{-1}$ of $T^{-1}e_{p_1}$ at the base point of $g_1$ (likewise for $g_2$), and $T$ multiplies $e^{\frac{i}{\hbar}S_\pi(p_1,p_2,x)}$ by $\tau(x,\partial_xS_\pi)=\tau(g_1g_2)$.

So for fixed $S_\pi$, the possible $c$ modulo equivalence differ by classes in $H^2(G)$ (differentiable cohomology of the formal groupoid).

**(c)** For the formal groupoid, the van Est map gives $H^2(G)\cong H^2_\pi(M)$ (Poisson cohomology). Directly: replacing $\pi$ by $\pi+\hbar\pi_1$ with $[\pi,\pi_1]=0$ gives $S_{\pi+\hbar\pi_1}=S_\pi+\hbar\,\delta S+O(\hbar^2)$, so the prefactor changes by $e^{i\,\delta S}$. Differentiating (SGA) in this direction (at a critical point only the explicit dependence counts):

$$\delta S(g_1,g_2)+\delta S(g_1g_2,g_3)=\delta S(g_2,g_3)+\delta S(g_1,g_2g_3),$$

so $\delta S$ is an additive 2-cocycle; its van Est image is $\pi_1$ (up to sign).

> **Kontsevich.** His classification: star products up to equivalence ↔ formal Poisson structures $\pi+\hbar\pi_1+\cdots$ up to formal diffeomorphisms. The freedom in $c$ is exactly the first step, $\pi_1$.

---

## 9. The linear case $M=\mathfrak g^*$

### 9.1 Setup

$\mathfrak g$ a Lie algebra, $[p,q]_k=f^{ij}_k\,p_iq_j$. $M=\mathfrak g^*$, $\pi^{ij}(x)=f^{ij}_k\,x^k$. Momenta are elements $p\in\mathfrak g$, $p\cdot x=\langle x,p\rangle$, and $\pi(x)(p,q)=\langle x,[p,q]\rangle$.

### 9.2 At most one cycle

$\partial\partial\pi=0$, so an interior vertex receiving two or more edges gives $0$. In a connected graph every interior vertex therefore receives at most one edge, so there are at most $n$ interior edges and $L\le1$. The expansion of §3 stops:

$$e_{p_1}\star e_{p_2}=e^{\frac{i}{\hbar}S_\pi}\,c\qquad\text{exactly.}$$

### 9.3 Trees ($L=0$)

A tree has $n-1$ interior edges, so exactly one vertex (the root) receives no edge; it contributes $\pi(x)$, linear in $x$. Every other vertex receives one edge and contributes the constants $\partial\pi=f$. Each vertex forms the bracket of what its two outgoing edges bring ($p_1$, $p_2$, or a bracket formed further along). Hence

$$S_\pi(p_1,p_2,x)=\langle x,\,Z(p_1,p_2)\rangle,\qquad Z(p_1,p_2)=p_1+p_2-\tfrac12[p_1,p_2]+(\text{longer brackets}).$$

### 9.4 One cycle ($L=1$)

Now there are $n$ interior edges, so every vertex receives exactly one edge: no vertex contributes $\pi(x)$, only the constants $f$. Hence **$c=c(p_1,p_2)$ does not depend on $x$**. Such a graph has exactly one cycle $v_1\to v_2\to\cdots\to v_k\to v_1$; the other edge of $v_j$ brings a Lie element $Z_j$ ($p_1$, $p_2$, or a bracket formed by a tree hanging off the cycle). The vertex $v_j$ acts on the index passed around the cycle by $\mathrm{ad}_{Z_j}$, and closing the cycle takes a trace:

$$\log c(p_1,p_2)=\sum(\text{weights})\cdot\operatorname{tr}\big(\mathrm{ad}_{Z_1}\cdots\mathrm{ad}_{Z_k}\big).$$

So, exactly,

$$e_{p_1}\star e_{p_2}=c(p_1,p_2)\;e_{Z(p_1,p_2)} .$$

### 9.5 Associativity with nothing hidden

$c$ is a constant and $e_Z$ is again a plane wave, so no stationary phase is needed:

$$(e_{p_1}\star e_{p_2})\star e_{p_3}=c(p_1,p_2)\;c\big(Z(p_1,p_2),p_3\big)\;e_{Z(Z(p_1,p_2),p_3)},$$

$$e_{p_1}\star(e_{p_2}\star e_{p_3})=c(p_2,p_3)\;c\big(p_1,Z(p_2,p_3)\big)\;e_{Z(p_1,Z(p_2,p_3))}.$$

- order $1/\hbar$ (exponents): $Z(Z(p_1,p_2),p_3)=Z(p_1,Z(p_2,p_3))$;
- order $\hbar^0$ (prefactors): $c(p_1,p_2)\,c(Z(p_1,p_2),p_3)=c(p_2,p_3)\,c(p_1,Z(p_2,p_3))$, the 2-cocycle condition on the group $(\mathfrak g,Z)$. Here $h_L=h_R=1$ because $S_\pi$ is linear in $y$.

### 9.6 $Z$ is BCH

$Z$ is an associative formal group law on $\mathfrak g$ with $Z(p,0)=Z(0,p)=p$. All brackets of multiples of one $p$ vanish, so $Z(sp,tp)=(s+t)p$: the lines $t\mapsto tp$ are one-parameter subgroups, i.e. $p$ is an exponential coordinate. The group law in exponential coordinates is the Baker–Campbell–Hausdorff series; with our signs

$$Z(p_1,p_2)=\log\big(e^{p_2}e^{p_1}\big)=p_1+p_2-\tfrac12[p_1,p_2]+\tfrac1{12}\big([p_1,[p_1,p_2]]+[p_2,[p_2,p_1]]\big)+\cdots$$

> **Kontsevich.** On $\mathfrak g^*$ his tree weights add up to this series (§10 isolates one family of them), and his one-cycle weights give $c$ (9.8).

### 9.7 Geometry

For the constant-momentum path, $\frac{d}{du}\langle X(u),q\rangle=\langle X(u),[p,q]\rangle$, so $\langle X(u),q\rangle=\langle X(0),\mathrm{Ad}_{e^{up}}\,q\rangle$: $X$ moves along the coadjoint orbit of $X(0)$, carried by the group element $e^{p}$. An arrow is a point of $\mathfrak g^*$ together with a group element, and composing arrows ($g_2$, then $g_1$) multiplies group elements: $e^{p_2}e^{p_1}=e^{Z(p_1,p_2)}$. This is the groupoid $T^*\mathsf G\rightrightarrows\mathfrak g^*$ ($\mathsf G$ the formal group of $\mathfrak g$). Only the momenta combine (by $Z$); $x$ enters $S_\pi$ linearly.

### 9.8 The factor $c$ and equivalence

For $T=\tau(-i\hbar\partial)$ (constant coefficients, $\tau(0)=1$), $Te_p=\tau(p)\,e_p$ exactly, and the equivalent product has

$$c'(p_1,p_2)=c(p_1,p_2)\,\frac{\tau\big(Z(p_1,p_2)\big)}{\tau(p_1)\,\tau(p_2)} .$$

- The product transported from $U(\mathfrak g)$ (bracket scaled by $i\hbar$) by symmetrization $p^n\mapsto p^n$ sends $e_p$ to an exponential in $U(\mathfrak g)$, so $e_{p_1}\star e_{p_2}=e_{Z(p_1,p_2)}$ exactly: $c\equiv1$.
- For Kontsevich's product, the lowest term of $\log c$ is bilinear and comes from the cycle with two vertices: a multiple of $\operatorname{tr}(\mathrm{ad}_{p_1}\mathrm{ad}_{p_2})$, symmetric in $p_1,p_2$. For a formal group, normalized 2-cocycles modulo coboundaries correspond to $H^2(\mathfrak g)$ via the antisymmetric part of the bilinear term (van Est). So Kontsevich's $c$ is a coboundary, and his product on $\mathfrak g^*$ is obtained from the symmetrization product by some $T=\tau(-i\hbar\partial)$: same trees, different $c$.
- If $\mathfrak g$ is nilpotent, there is a basis in which every $\mathrm{ad}_Z$ is strictly upper triangular (Engel's theorem), so every trace in 9.4 vanishes. Then $c\equiv1$, and Kontsevich's product on $\mathfrak g^*$ equals the symmetrization product.

---

## 10. What associativity forces about Kontsevich's weights

**Trees.** Tree weights enter only through $S_\pi$, which must satisfy (SGA). Cattaneo–Dherin–Felder: (SGA) with natural normalizations has a unique solution, and it is the tree part of Kontsevich's formula; without normalizations, two solutions for the same $\pi$ differ by a change of chart on $G$. So the integrals compute a function that associativity already determines. Individual tree weights are not determined: different graphs can give the same expression (antisymmetry of $\pi$, the Jacobi identity and its derivatives), and a different gauge fixing (propagator) changes individual weights.

**One forced integral (linear case).** The part of $Z$ linear in $p_2$ is

$$Z(p_1,p_2)=p_1+\frac{\mathrm{ad}_{p_1}}{e^{\mathrm{ad}_{p_1}}-1}\,p_2+O(p_2^2)=p_1+\sum_{n\ge0}\frac{B_n}{n!}\,\mathrm{ad}_{p_1}^{\,n}\,p_2+O(p_2^2)$$

($B_n$ the Bernoulli numbers, $B_1=-\tfrac12$). The only tree producing $\langle x,\mathrm{ad}_{p_1}^np_2\rangle$ is the chain $v_1\to v_2\to\cdots\to v_n$ in which each $v_j$ ($j<n$) sends one edge to $f$ and one to $v_{j+1}$, and $v_n$ sends one edge to $f$ and one to $g$ (a vertex with both edges on $f$ gives $[p_1,p_1]=0$). So the Kontsevich integral of this chain is forced to reproduce $B_n/n!$ (after the normalization factors of §3).

**Loops.** Weights of graphs with cycles enter through $c$ and the $O(\hbar)$ terms. By §8, associativity fixes $c$ only up to coboundaries (equivalences) and the class $\pi_1$, so these weights are not forced; Kontsevich's integrals make a choice. On $\mathfrak g^*$ that choice is a non-trivial coboundary, whereas the symmetrization product has $c\equiv1$.

---

## 11. Each component and its role

| Component | Where | Role |
|---|---|---|
| $\pi$ | input | the Poisson structure being quantized; determines $G$ |
| disk with marked points $0,1,\infty$ | §2.1 | $f$ at $1$, $g$ at $0$ (inputs); $X(\infty)=x$ (output) |
| boundary condition on $\eta$ | §1, §2.3 | $X$ constant on boundary arcs; semicircle data become arrows; $\phi(z,w)=0$ for $z\in\mathbb R$ |
| (E1), (E2) | §1 | classical solutions; on a square they are cotangent homotopies |
| gauge symmetry | §1, §5.1 | must be gauge-fixed; on an interval it is cotangent homotopy, the relation defining $G$ |
| propagator $d\phi$ | §2.3 | Green's function after gauge fixing; its integrals are the weights |
| graphs $\Gamma$, weights $w_\Gamma$, operators $B_\Gamma$ | §2.4–2.5 | Kontsevich's formula = Feynman expansion of the path integral |
| Stokes on configuration spaces | §2.6 | why Kontsevich's weights give an associative product |
| plane waves $e_p$ | §3 | sources in the action; make the $\hbar$-order equal the loop order |
| trees, $S_\pi$ | §3.4, §4, §6.3 | on-shell action with sources; generating function of $\operatorname{graph}(m)$ |
| one-cycle graphs, $c$ | §3.4, §8 | prefactor; a 2-cocycle on $G$ up to $h_L/h_R$ |
| graphs with $\ge 2$ cycles | §3.4 | the $O(\hbar)$ corrections |
| $G$ = cotangent paths / homotopy | §5 | phase space on an interval; symplectic groupoid of $\pi$ |
| momentum $p$ of an arrow | §5.3, §6.1 | constant value of $\eta$ on its representative; equals the plane-wave momentum |
| boundary arcs $A,B,C$ | §4, §6.1 | points $x_A,x_B,x_C$ of $M$ (where $X$ is constant) |
| semicircles $\gamma_0,\gamma_1,\gamma_\infty$ | §6.1 | the arrows $g_2$, $g_1$, $g_1g_2$ |
| the disk itself | §6.2 | forces $g_\infty=g_1g_2$: the multiplication |
| coordinates $(x,p)$ | §6.3 | $x$ = value of $X$ at the marked point, $p$ = integral of $\eta$ around it |
| stationary phase in $(y,q)$ | §7.1–7.4 | composes $\operatorname{graph}(m)$ with itself; produces $h_L,h_R$ |
| (SGA) | §7.5 | $1/\hbar$-part of associativity = associativity of $G$ |
| equation $(*)$ | §8.2 | $\hbar^0$-part of associativity = cocycle condition for $c$ |
| equivalences $T$ | §8.4, §9.8 | change $c$ by a coboundary |
| $H^2(G)\cong H^2_\pi(M)$ | §8.4 | what remains of $c$: the first correction $\pi_1$ |
| linear case $\mathfrak g^*$ | §9 | trees give $Z$ = BCH (groupoid $T^*\mathsf G$); $c$ is $x$-independent and a coboundary |
