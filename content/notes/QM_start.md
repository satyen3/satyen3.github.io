---
title: Organizing assumptions of Quantum Mechanics as a $C^{*}$ algebra
date: 2025-10-15
math: true
---

At the smallest scales observation and interaction are indistinguishable from each other. Quantum mechanics posits that it is impossible to observe a system without fundamentally changing its state. How we observe a system has to be taken into account, and in what order. A different way to understand states is as a dual algebra to the observable algebra. Thus if functions $f$ and $g$ are observables on a phase space $M$, then a state would be a dual functional $\omega : C^\infty(M) \longrightarrow \mathbb{R}$. This map takes an observable to its value in that state. Since we are considering abstract states, we can abstract away the phase space and only work with an algebra $A$ of observables, with some product (classically commutative). We also need additional structure on $A$, such that we can work with $\mathbb{C}$ instead of $\mathbb{R}$. These properties form the axioms of a $C^{*}$ algebra.

{{< definition >}}
**$C^{*}$ algebra.** A $C^{*}$ algebra $A$ is a normed, complete space which is also an algebra over $\mathbb{C}$, together with an adjoint map $x \longrightarrow x^{*}$ for $x \in A$ satisfying the following properties:

- $x^{**} = (x^{*})^{*} = x$
- $(x+y)^{*} = x^{*} + y^{*}$
- $(xy)^{*} = y^{*}x^{*}$
- $(\lambda x)^{*} = \bar{\lambda}x^{*}$
- $\|xx^{*}\| = \|x\| \|x^{*}\|$

for all $x, y \in A, \; \lambda \in \mathbb{C}$.
{{< /definition >}}

To work with these, we would need a representation on a metric space. We can build such a representation, known as a $*$-representation, on a Hilbert space $\mathcal{H}$, with representation map $\pi : A \longrightarrow \mathcal{B}(\mathcal{H})$, where $\mathcal{B}(\mathcal{H})$ are bounded operators on $\mathcal{H}$.

{{< definition >}}
A *state* is a positive linear functional on $A$ with norm $1$. That is,
$$
\|\omega\| = \sup_{\|x\| \le 1}|\omega(x)| = 1
$$
{{< /definition >}}

With this, we can define the GNS construction for representing states.

**Theorem (Gelfand–Naimark–Segal).** Let $\pi$ be a $*$-representation of a $C^{*}$ algebra $A$ with Hilbert space $\mathcal{H}$. Then given any state $\omega$, there exists a cyclic vector $\xi$ such that for all $x \in A$, $\omega(x) = \left\langle \pi(x)(\xi),\xi \right\rangle$.

A cyclic vector is a vector $\xi$ in $\mathcal{H}$ such that $\{ \pi(x)(\xi) \: : \:x \in A\}$ is norm dense in $\mathcal{H}$, meaning $\xi$ generates almost every vector in $\mathcal{H}$.

## The classical case

Relating this back to our classical system, assume that we are working with a compact phase space $M$. The observable $C^{*}$ algebra for this system would be $C(M)$, the continuous functions on $M$, with sup norm $\|f\| = \sup_{x \in M}|f(x)|$. Using the Riesz representation theorem for Banach spaces, a state corresponds to a measure $d\mu$ on this space, such that it acts on observables as
$$
\omega_{\mu}(f) = \int_{M}  f \, d \mu
$$
The GNS theorem provides a representation on the Hilbert space $L^{2}(M,d\mu)$, with the representation map defined as
$$
\begin{split}
& \pi : C(M) \longrightarrow \mathcal{B}(L^{2}(M,d\mu)) \\
& \pi(f)(\psi)(x) = f(x)\psi(x)
\end{split}
$$
We can see now that classical states, which we consider to be points of the phase space, are actually just a small class of states $\{\omega_{x}, x \in M\}$ defined as $\omega_{x}(f) = f(x)$, and the GNS construction for which gives a one dimensional Hilbert space $\mathcal{H}_{cl} \cong \mathbb{C}$. $\mathcal{H}_{cl}$ is all the values observables can take at the point $x_{0}$.

This resembles our physical intuition that the value an observable quantity takes depends only on the configuration under observation. This setup however allows for all possible configurations to weigh in on the observation, which has interesting implications. Another assumption we made before is that the observer is passive, and measurement doesn't change the state. We can show that this corresponds to the $C^{*}$ algebra being commutative in the following way.

Commutativity implies that
$$
\pi(a)\pi(b)=\pi(ab)=\pi(ba)=\pi(b)\pi(a)
$$
so the image $\pi(A) \subset \mathcal{B}(\mathcal{H})$ are commuting operators. By Schur's lemma, every irreducible representation of a commutative $C^*$-algebra is one-dimensional. Therefore, for pure states (whose GNS representations are irreducible), the Hilbert space satisfies $\mathcal{H}_{\text{cl}} \cong \mathbb{C}.$

In such a representation, every observable acts by multiplication with a complex number:
$$\pi(f) = f(x_0)$$
for some point $x_0 \in M$. The state is multiplicative: $\omega(fg) = \omega(f)\omega(g)$, which means that a system in configuration $x_0$ assigns definite values to all observables simultaneously. Measurement does not disturb the system; it merely reveals the value already intrinsic to the configuration.

## Dropping commutativity

Now let us forgo the commutativity condition, and assume that $\mathcal A$ is a generally non-commutative $C^*$ algebra. In this case irreducible representations need not be one-dimensional, and $\pi(\mathcal A)$ consists in general of non-commuting operators. Let $\omega$ be a state with GNS triple $(\pi,\mathcal H,\xi)$, where $\xi$ is cyclic. Let $a=a^*\in\mathcal A$ be an observable. Consider the quantity obtained from measuring the observable $a^2$:
$$
\omega(a^2) = \langle \pi(a^2)\xi , \xi \rangle = \langle \pi(a)\pi(a)\xi , \xi \rangle
$$
Since $a^2$ represents the square of the observable $a$, we would expect $\omega(a^2)$ to equal $\omega(a)^2.$ However this doesn't always hold.

Indeed, set $\eta := \pi(a)\xi.$ Then $\omega(a^2) = \langle \pi(a)\eta , \xi \rangle.$ On the other hand, $\omega(a) = \langle \eta , \xi \rangle$.

The equality $\omega(a^2)=\omega(a)^2$ holds if and only if
$$
\langle \pi(a)\eta , \xi \rangle = \langle \eta , \xi \rangle^2
$$
This happens precisely when $\eta$ is proportional to $\xi$, i.e. $\pi(a)\xi = \lambda \xi$ for some $\lambda\in\mathbb C$.

In other words, $\xi$ must be an eigenvector of $\pi(a)$. Only in this case does the state assign a definite value to the observable $a$, and only then does the relation hold. More generally, expanding
$$
\Delta_\xi(a)^2 := \omega(a^2)-\omega(a)^2
$$
we find
$$
\Delta_\xi(a)^2 = \|\pi(a)\xi - \omega(a)\xi\|^2 \ge 0
$$
Thus $\omega(a^2)=\omega(a)^2$ if and only if the variance $\Delta_\xi(a)^2$ vanishes.

Therefore, unlike the commutative case, a state on a non-commutative $C^*$-algebra does not contain intrinsic values for all observables. The failure of multiplicativity,
$$
\omega(a^2)\neq \omega(a)^2
$$
is the result of the higher-dimensional nature of the representation and expresses the intrinsic fluctuations of quantum observables. We can still find a way to interpret the quantity $\omega(a)$ in the following way.

## Measurement and the spectral theorem

By the spectral theorem, every self-adjoint observable $a=a^*\in\mathcal A$ admits a decomposition
$$
\pi(a)=\int_{\sigma(a)} \lambda\, dE_a(\lambda)
$$
where $E_a(\lambda)$ is a projection-valued measure and $\sigma(a)$ are the eigenvalues of $a$. In the discrete case,
$$
\pi(a)=\sum_{\lambda} \lambda P_\lambda
$$
with mutually orthogonal projections satisfying
$$
P_\lambda P_\mu=\delta_{\lambda\mu}P_\lambda
\qquad
\sum_\lambda P_\lambda=I
$$
Thus an observable is a weighted sum (or integral) of projection operators, and if we require the outcome of repeated measurements to be consistent, we must interpret measurements to be outputs which are exactly the eigenvalues $\lambda$, with the probability of a given eigenvalue determined by how orthogonal the state being measured is from its eigenvector.

If we go by this probabilistic interpretation, where for the state $\xi$, the probability of obtaining the value $\lambda$ is
$$
p_\lambda=\langle \xi, P_\lambda \xi\rangle
$$
the expectation value of repeated measurements would therefore be our missing interpretation:
$$
\omega(a)=\int_{\sigma(a)} \lambda\, d\mu_\xi(\lambda)
$$
where $d\mu_\xi(\lambda):=\langle \xi,dE_a(\lambda)\xi\rangle$ is a probability measure. Similarly,
$$
\omega(a^2)=\int_{\sigma(a)} \lambda^2\, d\mu_\xi(\lambda)
$$
and we have
$$
\omega(a^2)=\omega(a)^2
\quad\Longleftrightarrow\quad
\Delta_\xi(a)^2=0
$$
which holds precisely when the measure $d\mu_\xi$ is supported at a single point $\lambda_0$. Equivalently,
$$
P_{\lambda_0}\xi=\xi
$$
so $\xi$ lies entirely in a single eigenspace. Only in this case does the state assign a definite value to $a$.

In general, however, we can write
$$
{\xi}=\int_{\sigma(a)} dE_a(\lambda)\,\xi
$$
and a measurement projects onto one of these components:
$$
{\xi} \mapsto \frac{E_a(\lambda)\xi}{\|E_a(\lambda)\xi\|}
$$
Thus measurement necessarily alters the state unless it was already supported in a single eigenspace.

## Incompatible observables

Now consider two observables $a,b\in\mathcal A$. If $\pi(a)$ and $\pi(b)$ commute, their spectral projections commute:
$$
[E_a(\lambda),E_b(\mu)]=0
$$
In this case one may form joint projections
$$
E_{a,b}(\lambda,\mu) = E_a(\lambda)E_b(\mu)
$$
and the Hilbert space decomposes into their eigenspaces. There exist states supported in a single joint eigenspace, so both observables may be sharp simultaneously.

If instead $[\pi(a),\pi(b)]\neq 0$, then in general
$$
[E_a(\lambda),E_b(\mu)]\neq 0
$$
and there is no nonzero vector $\xi$ satisfying
$$
\pi(a)\xi=\lambda\xi
\qquad
\pi(b)\xi=\mu\xi
$$
A state sharply localized in one eigenspace of $a$ necessarily spreads across several of $b$. Therefore,
$$
\Delta_\xi(a)=0
\quad\Rightarrow\quad
\Delta_\xi(b)>0
$$
in general.

This failure of simultaneous sharpness is the precise algebraic manifestation of quantum incompatibility. The obstruction is entirely encoded in the non-commutativity of the observable algebra.

## From functions to operators

In such a physical system, the classical notion of a point of phase space, a configuration assigning definite values to all observables, no longer exists.

The only consistent replacement is the following: observables must be represented by operators on a Hilbert space, and states by vectors (or density operators) upon which these operators act. The passage from classical mechanics to quantum mechanics therefore requires replacing
$$
C(M) \quad\longrightarrow\quad \text{a non-commutative algebra of operators}.
$$

Since classical observables are functions on phase space, this replacement demands a systematic procedure that associates to each function $f\in C^\infty(M)$ an operator $\hat f$ on a Hilbert space, in such a way that:

1. $f \mapsto \hat{f}$ is an $\mathbb{R}$-linear map,
2. Constants map to scalar multiples of the identity,
3. Poisson brackets correspond (in an appropriate limit) to commutators,
$$
\{f,g\} \;\longrightarrow\; \frac{1}{i\hbar} [\hat f,\hat{g}]
$$

These set of conditions are known as the *correspondence principle*. Thus the algebraic analysis above compels us to abandon the classical phase space picture and to find a construction that converts functions on a symplectic manifold into operators on a Hilbert space while respecting the underlying physical structure.

Providing such a construction is precisely the aim of *geometric quantization*.

## References

- B. C. Hall, *Quantum Theory for Mathematicians*, Graduate Texts in Mathematics 267, Springer, 2013.
- N. M. J. Woodhouse, *Geometric Quantization*, 2nd ed., Oxford University Press, 1997.
