---
title: "Symplectic Groupoids and Berezin Quantization"
date: 2026-05-14
draft: false
math: true
---


## 1. The Symplectic Groupoid

Lie groupoid $\mathcal{G} \rightrightarrows M$ is a space of arrows between points of $M$, equipped with source and target maps $s, t: \mathcal{G} \to M$, a composition law $m: \mathcal{G}_2 \to \mathcal{G}$ on the space of composable pairs $\mathcal{G}_2 = \{(g,h) : s(g) = t(h)\} $, 
a unit section $\epsilon: M \hookrightarrow \mathcal{G}$, and an inversion $\iota: \mathcal{G} \to \mathcal{G}$. The nerve $\mathcal{G}_{\bullet}$ is the simplicial manifold with $\mathcal{G}_0 = M$, $\mathcal{G}_1 = \mathcal{G}$, $\mathcal{G}_2 = \mathcal{G} \times_M \mathcal{G}$, and so on, with face maps $s, t$ at level 1 and $\mathrm{pr}_1, m, \mathrm{pr}_2$ at level 2.

The nerve carries a simplicial coboundary operator $\partial^\ast$ on differential forms. For $\theta \in \Omega^\bullet(M)$,
$$\partial^\ast\theta := t^\ast\theta - s^\ast\theta \in \Omega^\bullet(\mathcal{G}),$$

and for $\omega \in \Omega^\bullet(\mathcal{G})$,

$$\partial^\ast\omega := \mathrm{pr}_1^\ast\omega - m^\ast\omega + \mathrm{pr}_2^\ast\omega \in \Omega^\bullet(\mathcal{G}_2).$$

The geometric content of $\partial^\ast\theta = t^\ast\theta - s^\ast\theta$ is immediate: it measures the change of $\theta$ from the source to the target of an arrow. A form $\omega \in \Omega^2(\mathcal{G})$ is *multiplicative* if $\partial^\ast\omega = 0$, i.e., $m^\ast\omega = \mathrm{pr}_1^\ast\omega + \mathrm{pr}_2^\ast\omega$. This says that the symplectic "area" assigned to a composed arrow equals the sum of the areas of its factors.

A *symplectic groupoid* is a Lie groupoid $\Sigma \rightrightarrows M$ equipped with a symplectic form $\omega \in \Omega^2(\Sigma)$ that is multiplicative. Equivalently, the graph of multiplication $\Lambda = \{(g, h, gh)\} \subset \Sigma \times \Sigma \times \Sigma$ is Lagrangian with respect to $\omega \oplus \omega \oplus (-\omega)$. This is Weinstein's principle: groupoid composition is a Lagrangian correspondence.


## 2. The Poisson Structure on the Base

Multiplicativity forces a Poisson structure on $M$. The argument has four steps.

**Step 1.** The unit section $\epsilon(M)$ is Lagrangian. Define $\delta: M \to \mathcal{G}_2$ by $\delta(x) = (\epsilon(x), \epsilon(x))$. Since $m \circ \delta = \mathrm{pr}_1 \circ \delta = \mathrm{pr}_2 \circ \delta = \epsilon$, pulling back $m^\ast\omega = \mathrm{pr}_1^\ast\omega + \mathrm{pr}_2^\ast\omega$ through $\delta$ gives $\epsilon^\ast\omega = 2\epsilon^\ast\omega$, hence $\epsilon^\ast\omega = 0$. The unit section is isotropic. A dimension count (using multiplicativity, inversion, and non-degeneracy of $\omega$) forces $\dim \Sigma = 2\dim M$, so $\epsilon(M)$ is in fact Lagrangian.

**Step 2.** The Lie algebroid $A = \ker(ds)|&#95;{\epsilon(M)}$ is identified with $T^\ast M$. At $\epsilon(x)$, the splitting $T{\epsilon(x)}\Sigma = T_x(\epsilon(M)) \oplus A_x$ and the Lagrangian condition on $\epsilon(M)$ set up a non-degenerate pairing $A_x \times T_x(\epsilon(M)) \to \mathbb{R}$ via $\omega$, giving a canonical isomorphism $A_x \xrightarrow{\sim} T^\ast&#95;x M$.

**Step 3.** The anchor $\rho = dt|_A: A \to TM$, transferred to $T^*M$ via $A \cong T^*M$, defines a bundle map $\pi^\sharp: T^*M \to TM$. Skew-symmetry of $\omega$ gives skew-symmetry of $\pi^\sharp$, defining a bivector $\pi \in \Gamma(\wedge^2 TM)$.

**Step 4.** The Lie algebroid bracket on $\Gamma(A)$ transfers to the Koszul bracket $[df, dg]&#95;{\pi} = d\{f,g\}$ on $\Omega^1(M)$. The Jacobi identity for the bracket implies $[\pi, \pi]&#95;{\mathrm{SN}} = 0$, so $\pi$ is Poisson.

The source map $s: (\Sigma, \omega) \to (M, \pi)$ is Poisson and the target map $t$ is anti-Poisson. The Poisson bracket on $M$ is recovered by restricting the symplectic bracket on $\Sigma$ to source-pullbacks evaluated at the units: $\{f, g\}&#95;{\pi} \circ \epsilon = \{s^\ast f, s^\ast g\}&#95;{\omega} \circ \epsilon$.


## 3. Line Bundles and the Coboundary

The simplicial coboundary extends to line bundles. For a line bundle $\Lambda \to M$,


is a line bundle over the groupoid. For a line bundle $L \to \Sigma$,

$$\partial^\ast L := \mathrm{pr}_1^\ast L \otimes m^\ast L^\ast \otimes \mathrm{pr}_2^\ast L \to \mathcal{G}_2.$$

$\Lambda$ is a *prequantum line bundle* for $(M, \omega_M)$ if it carries a connection $\nabla$ with $\mathrm{curv}(\nabla) = \omega_M$. The coboundary $\partial^\ast\Lambda$ then inherits a natural connection over $\Sigma$ with curvature $\omega_\Sigma$ (multiplicativity of the curvature follows from multiplicativity of $\omega$). The key structural property is $\partial^\ast(\partial^\ast\Lambda) \cong \mathbf{1}$ - the coboundary of a coboundary is canonically trivial.


## 4. The Convolution Algebra

Sections of $\partial^\ast\Lambda$ over $\Sigma$ form a convolution algebra. The product is defined by integrating over the fibers of the multiplication map: for $a, b \in \Gamma_c(\Sigma, \partial^\ast\Lambda \otimes \Omega^{1/2})$,

$$(a * b)(\gamma) := \int_{\eta \in t^{-1}(t\gamma)} a(\eta)\, b(\eta^{-1}\gamma).$$

Here $\Omega^{1/2}$ is the half-density bundle (Hawkins, Section 5), which provides the integration measure along the $t$-fibers. The product $a(\eta) \otimes b(\eta^{-1}\gamma)$ lands in the correct fiber of $\partial^\ast\Lambda$ over $\gamma$ because the triviality $\partial^\ast(\partial^\ast\Lambda) \cong \mathbf{1}$ ensures the intermediate $\Lambda$-factors at $s(\eta) = t(\eta^{-1}\gamma)$ cancel.

The convolution product is associative (from associativity of groupoid composition) and, with appropriate completion, gives a $C^\ast$-algebra. Involution comes from inversion: $a^\ast(\gamma) = \overline{a(\gamma^{-1})}$, using the canonical isomorphism $\iota^\ast\Omega^{1/2} \cong \overline{\Omega^{1/2}}$.

**This is the operator algebra.** Sections of $\partial^\ast\Lambda$ over $\Sigma$ are not states - they are observables. The convolution product is the quantum multiplication. Noncommutativity comes entirely from the groupoid composition law.


## 5. The Pair Groupoid and Berezin Quantization

For a symplectic manifold $(M, \omega)$ (non-degenerate Poisson structure $\pi = \omega^{-1}$), the symplectic groupoid is the pair groupoid $\Sigma = M \times M$ with $\omega_\Sigma = \mathrm{pr}_1^\ast\omega - \mathrm{pr}_2^\ast\omega$, $s = \mathrm{pr}_2$, $t = \mathrm{pr}_1$, and composition $(x,y) \cdot (y,z) = (x,z)$.

The coboundary line bundle is $\partial^\ast\Lambda = \mathrm{pr}_1^\ast\Lambda \otimes \mathrm{pr}_2^\ast\Lambda^\ast$ over $M \times M$. A section $a(x,y) \in \Lambda_x \otimes \Lambda_y^\ast$ is an integral kernel. The convolution product becomes

$$(a * b)(x, z) = \int_{y \in M} a(x,y) \otimes b(y,z)\, d\mu(y),$$

which is composition of integral kernels - matrix multiplication.

Now suppose $(M, \omega, J)$ is Kähler. The pair groupoid $M \times M$ is Kähler with complex structure $J \oplus (-J)$, giving a polarization $\mathcal{F}&#95;{\Sigma} = T^{0,1}&#95;{\mathrm{pr}_1}M \oplus T^{1,0}&#95;{\mathrm{pr}_2}M$. A polarized section of $\partial^\ast\Lambda$ is a kernel $a(x,y)$ that is holomorphic in $x$ and anti-holomorphic in $y$.

The reproducing kernel of Berezin-Toeplitz quantization, $K(\bar{z}, w) \in \Lambda_z^\ast \otimes \Lambda_w$, is precisely such a polarized section (after transposing arguments to match the $(t, s)$ convention). It is the identity element of the polarized convolution algebra: the section of $\partial^\ast\Lambda$ corresponding to the identity operator $\hat{1}$.

The Berezin-Toeplitz star product is then the groupoid convolution on $M \times M$:

$$\widehat{f \star g}(x, z) = (a_f * a_g)(x, z) = \int_M a_f(x,y)\, a_g(y,z)\, d\mu(y),$$

where $a_f$ is the integral kernel (polarized section of $\partial^\ast\Lambda$) corresponding to the Toeplitz operator $\hat{f}$.


## 6. Berezin Symbols as Sections of the Coboundary Bundle

In Berezin quantization on a compact Kähler manifold $(M, \omega)$ with prequantum line bundle $\Lambda = \mathcal{O}(m)$:

- The Hilbert space is $\mathcal{H} = H^0(M, \Lambda)$, the space of holomorphic sections. These are **states**, living in $\Gamma(M, \Lambda)$.
- The coherent state at $w$ is $|w\rangle \in \mathcal{H}$, with $\langle z | w \rangle = K(\bar{z}, w)$.
- An operator $\hat{f}: \mathcal{H} \to \mathcal{H}$ has integral kernel $\langle z | \hat{f} | w \rangle$, which is a section of $\Lambda_z^\ast \otimes \Lambda_w \cong (\partial^\ast\Lambda)_{(w,z)}$. This is an **observable**, living in $\Gamma(\Sigma, \partial^\ast\Lambda)$.

The covariant (Berezin) symbol of $\hat{f}$ is the restriction to the diagonal: $\check{f}(x) = \langle x | \hat{f} | x \rangle / \langle x | x \rangle$. The full off-diagonal kernel is the section of $\partial^\ast\Lambda$ - it contains strictly more information than the symbol, encoding the full operator and not just its diagonal matrix elements.

In the concrete case of $\mathbb{CP}^1$ with $\Lambda = \mathcal{O}(m)$: the reproducing kernel is $K(\bar{z}, w) = (1 + \bar{z}w)^m$, the Hilbert space is polynomials of degree $\leq m$, and the convolution algebra is the algebra of $(m+1) \times (m+1)$ matrices - with the groupoid convolution reducing to matrix multiplication.


## 7. Connection to the Poisson Sigma Model

The Poisson Sigma Model on a surface $\Sigma_2$ with target $(M, \pi)$ has fields $X: \Sigma_2 \to M$ and $\eta \in \Omega^1(\Sigma_2, X^*T^*M)$, with action

$$S_{\mathrm{PSM}} = \int_{\Sigma_2} \eta_i \wedge dX^i + \frac{1}{2}\pi^{ij}(X)\,\eta_i \wedge \eta_j.$$

On the disc $D^2$, the path integral with boundary insertions $f, g$ computes the star product $(f \star g)(x)$. On the cylinder $[0,1] \times S^1$, the moduli space of classical solutions is the symplectic groupoid $\Sigma$ (or its formal version, the Cattaneo-Dherin-Felder formal symplectic groupoid $X$), and the partition function with no insertions gives the reproducing kernel.

For a symplectic target ($\pi$ invertible, $\omega = \pi^{-1}$), integrating out $\eta$ via its equation of motion $\eta_j = -\omega_{ji}\,dX^i$ reduces the on-shell action to

$$S_{\mathrm{eff}} = \frac{1}{2}\int_{D^2} X^\ast\omega = \frac{1}{2}\int_{S^1} X^\ast\theta,$$

where $\theta$ is the symplectic potential ($\omega = d\theta$). The PSM path integral becomes a path integral over loops $\gamma: S^1 \to M$ with action $\frac{1}{2}\oint_\gamma \theta$. This is the coherent state path integral: discretizing $\gamma \mapsto (z_0, z_1, \ldots, z_N)$ gives

$$e^{\frac{i}{2\hbar}\oint \theta} \approx \prod_{k=0}^{N-1} K(\bar{z}&#95;{k}, z_{k+1}),$$

identifying each short-distance propagator with the reproducing kernel.

For a general Poisson target (degenerate $\pi$), $\eta$ cannot be integrated out - the kinetic term $\pi^{ij}\eta_i \eta_j$ is degenerate, and the PSM has genuine gauge symmetry handled by the BV-BRST formalism. The PSM generalizes the coherent state path integral from symplectic to Poisson manifolds. The groupoid convolution provides the non-perturbative finite-dimensional reduction: cutting the disc along a diameter and BV-localizing each half onto the moduli space replaces the infinite-dimensional path integral with a single finite-dimensional convolution on $\Sigma$.


## 8. The Fedosov Connection as Formal Polarization

The Fedosov construction on the formal symplectic groupoid $X$ gives a formal version of the above. The Weyl bundle $\mathcal{W} \to M$ is the algebra of formal functions on the formal neighborhood of $\epsilon(M)$ in $\Sigma$. A flat section $\tau(f) \in \Gamma(\mathcal{W})$ satisfying $D\,\tau(f) = 0$ (where $D$ is the Fedosov connection) is the formal Taylor expansion of a polarized section $a_f \in \Gamma(\Sigma, \partial^\ast\Lambda)$ around the diagonal, relative to the reproducing kernel.

The reproducing kernel itself is absorbed into the background: $\tau(1) = 1$ because the Fedosov connection already encodes the data of $K$. The full operator kernel is recovered as $\langle z | \hat{f} | w \rangle = K(\bar{z}, w) \cdot \tau(f)|_{y = w - z}$ (schematically). The Fedosov flatness condition $D\,\tau(f) = 0$ is the formal analogue of the polarization condition on $\partial^\ast\Lambda$, and the star product $\sigma(\tau(f) \circ \tau(g)) = f \star g$ is the formal version of the groupoid convolution.

