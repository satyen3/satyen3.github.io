---
title: "From Lie to $L_\\infty$: vertical categorification of symmetry"
date: 2026-02-15
math: true
---

Deformation quantization is controlled by three levels of algebraic structure:

1. Lie algebras, acting on Poisson manifolds via moment maps,
2. Differential graded Lie algebras (DGLAs), governing deformations of associative products and Poisson structures,
3. $L_\infty$ algebras and $L_\infty$ morphisms, relating the classical and quantum DGLAs.

This hierarchy is an instance of *vertical categorification*: the passage from strict algebraic structures to their homotopy-coherent generalizations.

## $L_\infty$ algebras

{{< definition >}}
**$L_{\infty}$-algebra.** An $L_\infty$-algebra consists of a graded vector space $V$ together with multilinear maps
$$
\ell_n : V^{\otimes n} \to V \qquad n \ge 1
$$
of degree $2-n$ satisfying the following properties.

1. **Graded skew-symmetry.** For every permutation $\sigma \in S_n$ and homogeneous elements $v_1,\dots,v_n \in V$,
$$
\ell_n(v_{\sigma(1)},\dots,v_{\sigma(n)}) = \chi(\sigma;v_1,\dots,v_n)\, \ell_n(v_1,\dots,v_n)
$$
where $\chi(\sigma;v_1,\dots,v_n)$ is the graded sign determined by the rule that swapping two adjacent homogeneous elements $v_i$ and $v_j$ introduces a factor $(-1)^{|v_i||v_j|}$, and extending multiplicatively to arbitrary permutations.

2. **Higher Jacobi identities.** For every $n \ge 1$ and homogeneous $v_1,\dots,v_n \in V$,
$$
\sum_{i+j=n+1} \sum_{\sigma\in \mathrm{Sh}(i,n-i)} (-1)^{i(j-1)} \chi(\sigma;v_1,\dots,v_n)\, \ell_j\!\left( \ell_i(v_{\sigma(1)},\dots,v_{\sigma(i)}), v_{\sigma(i+1)},\dots,v_{\sigma(n)} \right) =0
$$
where we sum over the permutations which preserve the order of the first $i$ and the rest $n-i$ elements.

The first two maps reproduce the structure of a DGLA: $\ell_1$ acts as a differential and $\ell_2$ behaves as a graded Lie bracket, while the higher maps encode the failure of an $L_{\infty}$-algebra to be a DGLA, where $\ell_{3}$ encodes the failure of $\ell_{2}$ to satisfy the Jacobi identity, and so on.
{{< /definition >}}

Thus a DGLA is a special case of an $L_{\infty}$ algebra with $\ell_{k>2} = 0$.

A Lie algebra has a bracket satisfying the Jacobi identity on the nose. A DGLA adds a differential compatible with the bracket, but the bracket itself is still strict. An $L_\infty$ algebra goes further: the binary bracket $\ell_2$ need not satisfy the Jacobi identity, provided the failure is controlled by a ternary operation $\ell_3$, whose own coherence is controlled by $\ell_4$, and so on. When the $L_\infty$ algebra is concentrated in degrees $0, \ldots, n-1$, it is equivalent to a Lie $n$-algebra in the sense of Baez–Crans.

## NQ-manifolds

There is a clean way to package this hierarchy using graded geometry. Given a graded vector space $V = V_0 \oplus V_1 \oplus \cdots \oplus V_{n-1}$, form the graded manifold $\mathcal{M} = V_0[1] \oplus V_1[2] \oplus \cdots \oplus V_{n-1}[n]$, where the bracket denotes a degree shift. The most general degree-1 vector field $Q$ on $\mathcal{M}$ encodes all the multilinear maps $\ell_1, \ell_2, \ell_3, \ldots$, and the single equation
$$
Q^2 = 0
$$
is equivalent to the full tower of higher Jacobi identities. Thus the entire $L_\infty$ structure is captured by a nilpotent vector field on a graded manifold. Such a pair $(\mathcal{M}, Q)$ is called an NQ-manifold.

For an ordinary Lie algebra $\mathfrak{g}$ with structure constants $f^c_{ab}$, the graded manifold is $\mathfrak{g}[1]$ with degree-1 coordinates $\xi^a$, and $Q = \frac{1}{2}f^c_{ab}\xi^a\xi^b \frac{\partial}{\partial \xi^c}$. Then $Q^2 = 0$ reduces to the ordinary Jacobi identity. For a Lie 2-algebra on a 2-term complex $V_1 \xrightarrow{d} V_0$, the graded manifold is $V_0[1] \oplus V_1[2]$, and $Q^2 = 0$ decomposes into: compatibility of $\ell_1$ and $\ell_2$, the homotopy Jacobi identity
$$
\ell_2(\ell_2(\xi, \eta), \zeta) + \text{cyclic} = d\,\ell_3(\xi, \eta, \zeta)
$$
and a coherence condition on $\ell_3$ itself. The bracket does not satisfy Jacobi on the nose; it satisfies it up to a homotopy, and $\ell_3$ is that homotopy.

## The role of $L_\infty$ in Kontsevich's theorem

Both the classical and quantum sides of the deformation problem are governed by Maurer–Cartan equations in DGLAs:
$$
d_S\pi + \frac{1}{2}[\pi, \pi]_S = 0 \qquad \longleftrightarrow \qquad d_h C_\hbar + \frac{1}{2}[C_\hbar, C_\hbar]_G = 0
$$
in the DGLA of polyvector fields and polydifferential operators respectively. The DGLAs themselves are strict: their brackets satisfy Jacobi exactly. However, the map between them cannot be made strict. The Hochschild–Kostant–Rosenberg map $U_1$, which sends a polyvector field to the corresponding antisymmetrized polydifferential operator, is a quasi-isomorphism on cohomology but does not respect the brackets at the cochain level.

Kontsevich's formality theorem shows that this failure can be coherently corrected by higher maps $U_2, U_3, \ldots$, making $\mathcal{U} = (U_1, U_2, \ldots)$ into an $L_\infty$ quasi-isomorphism. The map $U_2$ measures the failure of $U_1$ to be a bracket morphism, $U_3$ measures the failure of the correction introduced by $U_2$ to be coherent, and so on. This is categorification in action: the relationship between classical and quantum is not a strict algebraic map but an inherently higher-categorical one.

## Higher dimensions and higher categories

The Poisson sigma model is a two-dimensional field theory whose target carries a Lie algebroid structure. The AKSZ construction of Alexandrov–Kontsevich–Schwarz–Zaboronsky generalizes this to arbitrary dimensions: an $(n+1)$-dimensional topological sigma model whose target carries a degree-$n$ symplectic structure and a Hamiltonian $\Theta$ satisfying $\{\Theta, \Theta\} = 0$. At $n = 1$ this recovers the Poisson sigma model. At $n = 2$ the target data is a *Courant algebroid*, which is a structure on $TM \oplus T^*M$ whose bracket satisfies Jacobi only up to an exact term, which is precisely the Lie 2-algebra condition. At $n = 3$ and beyond, the target encodes Lie $n$-algebroid structures with successively higher towers of homotopies. In each case, the $(n+1)$-dimensional field theory has $n$ layers of form fields, each serving as a gauge field for the one below it, and each layer of gauge-of-gauge symmetry corresponds to a higher bracket $\ell_k$ in the $L_\infty$ algebra. The condition $Q^2 = 0$ on the target is exactly what ensures consistency of all these layers. Thus the structures of deformation quantization (Maurer–Cartan equations, $L_\infty$ morphisms, flat connections on bundle algebras) are the $n = 1$ case of a pattern that repeats at every dimension.

## References

- J. C. Baez and A. S. Crans, "Higher-dimensional algebra VI: Lie 2-algebras", *Theory and Applications of Categories* 12 (2004), 492–538.
- M. Alexandrov, M. Kontsevich, A. Schwarz and O. Zaboronsky, "The geometry of the master equation and topological quantum field theory", *International Journal of Modern Physics A* 12 (1997), 1405–1429.
- M. Kontsevich, "Deformation quantization of Poisson manifolds", *Letters in Mathematical Physics* 66 (2003), 157–216.
