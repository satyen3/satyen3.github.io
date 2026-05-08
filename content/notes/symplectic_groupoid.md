---
title: "What's a symplectic groupoid?"
date: 2026-05-07
draft: false
math: true
---

The goal of mechanics is to predict. Starting with immediate knowledge of the system, usually the positions and momenta of components of the system, we seek to predict its behaviour at a future time. This can be packaged into the axioms of a Lie algebroid attached to a Poisson manifold. Here's how it is defined: 

{{< definition >}}
A *Lie algebroid* over a smooth manifold $M$ is a triple $(A, [\cdot,\cdot]_A, \rho)$ where $A \to M$ is a vector bundle, $[\cdot,\cdot]_A$ is an $\mathbb{R}$-bilinear Lie bracket on $\Gamma(A)$, and $\rho \colon A \to TM$ is a vector bundle morphism (the anchor), satisfying the Leibniz rule
$$
  [\alpha, f\beta]_A = f[\alpha,\beta]_A + (\rho(\alpha)f)\,\beta
$$
for all $\alpha, \beta \in \Gamma(A)$ and $f \in C^\infty(M)$. The anchor is then automatically a Lie algebra morphism $\rho \colon (\Gamma(A), [\cdot,\cdot]_A) \to (\mathfrak{X}(M), [\cdot,\cdot])$.

Equivalently, a Lie algebroid structure on $A$ is a degree-$1$ derivation $d_A$ on $\Gamma(\Lambda^\bullet A^*)$ with $d_A^2 = 0$, i.e. a homological vector field on the graded manifold $A[1]$.
{{< /definition >}}


