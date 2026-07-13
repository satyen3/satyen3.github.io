---
title: "Basics of BFV-BV"
date: 2026-05-20T00:00:00+05:30
draft: false
math: true
---
### **Categories**
- $\mathrm{SuperVect}_{\mathbb{K}}$

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
Functions $C^\infty(\mathcal{M})$ are locally defined as a power series 
$$
f(x^{i}, \theta^{\mu}) = \sum_{1 \le \mu_{1},\ldots,\mu_{m} \le m} f_{0} + f_{\mu_{1}}\theta^{\mu_{1}} + f_{\mu_{1}\mu_{2}}\theta^{\mu_{1}}\theta^{\mu_{2}} + \cdots f_{\mu_{1},\ldots,\mu_{m}}\theta^{\mu_{1}} \cdots \theta^{\mu_{m}}
$$
**Definition**: A *graded vector field* is a graded linear map $X : C^\infty(\mathcal{N}) \longrightarrow C^\infty(\mathcal{N})[k]$ where $\mathcal{N}$ is a graded manifold, and satisfies the graded Leibniz rule: 
$$
X(fg) = X(f)g + (-1)^{k|f|}fX(g)
$$
for any two homogenous functions $f,g \in C^\infty(\mathcal{N})$

We denote the space of graded vector fields by $\mathcal{X}(\mathcal{N})$, and we can define a graded Lie bracket $[\, , \, ]_{\mathcal{X}(\mathcal{N})}:\mathcal{X}(\mathcal{N}) \otimes \mathcal{X}(\mathcal{N}) \rightarrow \mathcal{X}(\mathcal{N})$ by 
$$
[X,Y]_{\mathcal{X}(\mathcal{N})} := X \circ Y - (-1)^{|X||Y|}Y \circ X
$$


