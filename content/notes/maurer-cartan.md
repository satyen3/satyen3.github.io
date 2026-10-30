---
title: "Quantization as a Maurer–Cartan problem"
date: 2026-02-19
math: true
---

Both the classical and quantum structures appearing in deformation quantization can be interpreted as flatness conditions for certain differential graded Lie algebras. This viewpoint generalizes the familiar notion of curvature of a connection and provides a common language for geometric and algebraic constructions.

## DGLAs and the Maurer–Cartan equation

{{< definition >}}
**Differential graded Lie algebra.** A *differential graded Lie algebra* (DGLA) is a graded vector space $L=\bigoplus_k L^k$ equipped with

- a graded Lie bracket $[\cdot,\cdot]:L^p\times L^q \to L^{p+q}$
- a differential $d:L^k\to L^{k+1}$

satisfying
$$
d^2=0, \qquad d[x,y] = [dx,y] + (-1)^{|x|}[x,dy]
$$
{{< /definition >}}

{{< definition >}}
**Maurer–Cartan equation.** Let $(L,d,[\cdot,\cdot])$ be a differential graded Lie algebra. An element $\gamma \in L^1$ satisfies the Maurer–Cartan equation if
$$
d\gamma + \frac12[\gamma,\gamma]=0
$$
{{< /definition >}}

## Associativity as a Maurer–Cartan equation

The idea of deformation quantization is to keep the vector space of classical observables $A = C^\infty(M)$ intact, but to deform its commutative product into a new non-commutative associative product depending on a formal parameter $\hbar$. To avoid problems of convergence, this dependence is taken formally: the product is required to be a formal power series in $\hbar$. Thus the product is defined on the algebra of formal power series $A[[\hbar]] = C^\infty(M)[[\hbar]]$ by
$$
f \star g = \sum_{n=0}^{\infty} B_n(f,g)\hbar^n
$$
where each $B_n : A \times A \to A$ is a bidifferential operator and $B_0(f,g) = fg$.

The requirement that $\star$ be associative, $(f\star g)\star h=f\star(g\star h)$, imposes recursive conditions on the operators $B_n$. Expanding both sides in powers of $\hbar$ results in the relations
$$
\sum_{k+m=n} B_m(B_k(f,g),h) = \sum_{k+m=n} B_m(f,B_k(g,h))
$$

**Order $\hbar^0$.** At zeroth order we get $B_0(B_0(f,g),h)=B_0(f,B_0(g,h))$, which is simply the associativity of the classical multiplication $(fg)h=f(gh)$.

**Order $\hbar$.** At first order,
$$
B_1(fg,h)-B_1(f,gh) = fB_1(g,h)-B_1(f,g)h
$$
This equation measures the failure of the operation $B_1$ to commute with the multiplication $B_0$. In other words, associativity at first order requires that the multiplication and the operation $B_1$ commute in a suitable sense. This suggests expressing the relation as a commutator $[B_0,B_1]=0$.

To make this a definition we must define how multilinear operators compose. This is exactly what the Gerstenhaber product does. Let $\phi:A^{\otimes k}\to A$ and $\psi:A^{\otimes l}\to A$ be multilinear maps. Then their Gerstenhaber product is defined by
$$
(\phi\circ\psi)(a_1,\dots,a_{k+l-1}) = \sum_{i=1}^{k} (-1)^{(i-1)(l-1)} \phi(a_1,\dots,\psi(a_i,\dots,a_{i+l-1}),\dots,a_{k+l-1})
$$
Antisymmetrizing this operation defines the *Gerstenhaber bracket*
$$
[\phi,\psi] = \phi\circ\psi - (-1)^{(k-1)(l-1)}\psi\circ\phi
$$
With this definition the first associativity condition becomes $[B_0,B_1]=0$.

**Order $\hbar^2$.** At second order the associativity condition is
$$
B_2(fg,h)+B_1(B_1(f,g),h)+B_2(f,g)h = B_2(f,gh)+B_1(f,B_1(g,h))+fB_2(g,h)
$$
Using the bracket this can be written compactly as
$$
[B_0,B_2]+\frac{1}{2}[B_1,B_1]=0
$$
It is therefore natural to combine the operators $B_{n>0}$ into a single formal series
$$
m_\hbar=B_0+ C_{\hbar} \qquad C_{\hbar} = \hbar B_{1} + \hbar^{2}B_{2} + \cdots
$$
With respect to the Gerstenhaber bracket the associativity of the star product is equivalent to the single equation
$$
[m_\hbar,m_\hbar]=0 \iff [B_{0},C_{\hbar}] + \frac{1}{2}[C_{\hbar},C_{\hbar}] := dC_{\hbar} + \frac{1}{2}[C_{\hbar},C_{\hbar}] = 0
$$
where we have defined the commutator with $B_0$ to be a differential. For $\phi\in C^n(A)$, $d\phi=[B_0,\phi]$. We can also check that $d^{2}\phi = [B_0,[B_0,\phi]]=0$. Thus the space $C^n(A)=\{\phi:A^{\otimes n}\to A\}$ together with the differential $d=[B_0,\cdot]$ forms the Hochschild complex of the algebra $A$, and deformation quantization can be interpreted as a Maurer–Cartan equation in a differential graded Lie algebra.

## The Poisson structure as a Maurer–Cartan element

The Poisson bracket on a manifold can equivalently be described by a bivector field $\pi \in \Gamma(\wedge^2 TM)$. However, not every bivector defines a Poisson structure. The only other condition that decides whether a bivector is a Poisson bivector is the Jacobi identity, which is equivalent to the condition
$$
[\pi,\pi]_S = 0
$$
where $[\cdot,\cdot]_S$ denotes the Schouten–Nijenhuis bracket on polyvector fields. Thus Poisson structures are precisely those bivector fields satisfying this commutation condition.

Thus both the classical and quantum structures are governed by similar commutation equations, which are in fact Maurer–Cartan equations of DGLAs, if we give the polyvector field Lie algebra a trivial differential $d_{S} = 0$:
$$
d_{S}\pi + \frac{1}{2}[\pi,\pi]_{S} = 0 \quad \longleftrightarrow \quad d_{h}C_{\hbar} + \frac{1}{2}[C_{\hbar},C_{\hbar}]_{G} = 0
$$
The problem of deformation quantization can therefore be phrased as follows: given a Poisson bivector $\pi$, construct an associative multiplication
$$
m_{\hbar} = B_{0} + C_{\hbar} = B_{0} + \hbar B_{1} + \hbar^{2} B_{2} + \cdots
$$
with $B_{0}$ being ordinary multiplication, whose first order antisymmetric part $B_{1}$ reproduces $\pi$. In other words, we seek a solution of the Maurer–Cartan equation in the Hochschild complex that corresponds to the classical Poisson structure. Kontsevich's formality theorem provides exactly this, by an $L_\infty$ quasi-isomorphism between the two DGLAs which transports Maurer–Cartan elements from one to the other.

## Curvature as a Maurer–Cartan equation

Let $E \to M$ be a vector bundle with a connection $\nabla$. We choose a local frame $\{e_i\}$ of $TM$ and write the connection in this frame as
$$
\nabla e_i = \omega_i^{j} \otimes e_j
$$
where $\omega_i^{j}$ are matrix valued $1$-forms known as the connection forms.

In the coordinate frame $e_i = \partial_i$, the connection coefficients are the Christoffel symbols, and thus we can identify them as the coefficients of the matrix valued connection forms
$$
\omega^k_{j} = \Gamma^k_{ij} dx^i
$$
The curvature of this connection is the $2$-form
$$
\Omega = d\omega + \omega \wedge \omega
$$
In components,
$$
\Omega^k_{j} = d\omega^k_{j} + \omega^k_{l}\wedge \omega^l_{j}
$$
The condition that the connection be flat is therefore
$$
d\omega + \frac12[\omega,\omega] = 0
$$
which we now know is a Maurer–Cartan equation in the DGLA
$$
\Omega^{\bullet}(M,E) := \Gamma(\Lambda^{\bullet}T^{*}M\otimes E) \cong\Omega^{\bullet}(M)\otimes_{\Omega^{0}(M)}\Gamma(E)
$$
of differential forms with values in $E$.

Conceptually, the common theme between this and the DGLAs of polyvector and polydifferential operators is that all three are conditions on a certain structure over the base $M$, vector bundles in the polyvector and tangent bundle case (infinite dimensional for the Fedosov–Weyl bundle case), or more generally a sheaf of differential graded Lie algebras over it.

This Maurer–Cartan condition encodes the well-definedness of the Maurer–Cartan element that satisfies it, as we move along the base. For example in the Hochschild DGLA, $C_{\hbar}$ being a Maurer–Cartan element means that the product defined by it stays associative when parallel transported in the base.

## The parallel picture

We therefore obtain the following parallel picture.
$$
\begin{array}{c|c|c}
\text{Tensor geometry} & \text{Poisson geometry} & \text{Quantization} \\
\hline
\text{forms} & \text{polyvector fields} & \text{polydifferential operators} \\
\text{wedge product} & \text{Schouten bracket} & \text{Gerstenhaber bracket} \\
\text{tangent basis}&\text{Poisson structure} & \text{star product}
\end{array}
$$
Kontsevich's formality theorem establishes a correspondence between the second two structures, while Fedosov's flat connection combines the first two into a common bundle which is then made to transport an already existing associative product.

## References

- M. Kontsevich, "Deformation quantization of Poisson manifolds", *Letters in Mathematical Physics* 66 (2003), 157–216.
- A. Gracia-Saz, notes on deformation quantization and formality (2003).
- B. V. Fedosov, "A simple geometrical construction of deformation quantization", *Journal of Differential Geometry* 40 (1994), 213–238.
