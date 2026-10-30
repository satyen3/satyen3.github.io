---
title: "Fedosov's construction"
date: 2025-07-05
math: true
---

## Why the Moyal product is not enough

The classic prototype for a star product discovered by Dirac is known as the Moyal product. It is defined as
$$
\begin{aligned}
f \star g
&= e^{\hbar \omega}(f,g) \\
&= fg + \hbar\,\omega^{ij}\partial_i f\,\partial_j g + \frac{\hbar^2}{2}\omega^{ij}\omega^{kl}\partial_i\partial_k f\,\partial_j\partial_l g + \cdots \\
&= \sum_{n=0}^{\infty}\frac{\hbar^n}{n!} \left(\omega^{i_1 j_1}\cdots\omega^{i_n j_n}\right) (\partial_{i_1}\cdots\partial_{i_n}f) (\partial_{j_1}\cdots\partial_{j_n}g)
\end{aligned}
$$
where $\omega$ is the Poisson structure with the Poisson bivector $\omega^{ij}\partial_{i} \wedge \partial_{j}$.

This definition however cannot hold under coordinate transformations which are not affine. This is because although the coefficients $\omega^{ij}$ transform tensorially as the components of a bivector field, the higher derivatives appearing in the formula do not. Under a coordinate change $x \mapsto y$ we have
$$
\partial_a\partial_b f = \frac{\partial x^i}{\partial y^a} \frac{\partial x^j}{\partial y^b}\partial_i\partial_j f + \frac{\partial^2 x^i}{\partial y^a\partial y^b}\partial_i f
$$
The second term shows that second derivatives of functions do not transform tensorially. Substituting this into the higher-order terms of the formula produces additional contributions which do not cancel in general. Thus the expression does not define a global star product on an arbitrary Poisson manifold.

This suggests introducing a geometric structure which keeps track of how derivatives transform under coordinate changes. Such a structure is provided by a connection. A connection on a vector bundle $E \rightarrow M$ (the tangent bundle in our example) is a map $\nabla : \Gamma(E) \longrightarrow \Gamma(E) \otimes \Omega^{1}(M)$ that follows the Leibniz rule
$$
\nabla(fs) = df \otimes s + f \nabla s
$$
It assigns to each coordinate chart coefficients $\Gamma^k_{ij}$ called the Christoffel symbols, which encode precisely how the coordinate vector basis intrinsically varies from point to point.
$$
\nabla = d + \Gamma \qquad \nabla_{\partial_{j}}\partial_{i} = \Gamma^{k}_{ij}\partial_{k}
$$
The defining property of a connection is that its coefficients transform under a change of coordinates $x \mapsto y$ according to the following transformation law, which is a consequence of the Leibniz rule:
$$
\Gamma^c_{ab} = \frac{\partial y^c}{\partial x^k} \Gamma^k_{ij} \frac{\partial x^i}{\partial y^a} \frac{\partial x^j}{\partial y^b} + \frac{\partial^2 x^k}{\partial y^a \partial y^b} \frac{\partial y^c}{\partial x^k}
$$
The second term in this transformation law records the nonlinear part of the coordinate change. In this way the Christoffel symbols keep track of the failure of second derivatives to transform tensorially.

Using a connection one can define the covariant second derivative of a function
$$
\nabla_a \nabla_b f = \partial_a \partial_b f - \Gamma^c_{ab}\partial_c f
$$
Substituting the previous equation for $\partial_{a}\partial_{b}f$ and $\Gamma^c_{ab}$ shows that the non-tensorial terms cancel:
$$
\nabla_a \nabla_b f = \frac{\partial x^i}{\partial y^a} \frac{\partial x^j}{\partial y^b} \nabla_i \nabla_j f
$$
Thus the covariant second derivative always transforms tensorially.

This observation suggests replacing the partial derivatives appearing in the Moyal formula with covariant derivatives. In order for the resulting construction to respect the Poisson structure, the connection must be compatible with the symplectic form. A connection $\nabla$ is called a *symplectic connection* if
$$
\nabla \omega = 0
$$
This is an analogue of the closedness condition, but corrected by excluding the effects of coordinate changes. Such connections always exist on symplectic manifolds.

Using a symplectic connection one can construct globally defined differential operators by replacing the coordinate expression appearing in the Moyal product with the connection. However, because covariant derivatives do not commute in general, curvature corrections must be added to restore associativity. Fedosov's construction provides a systematic way to incorporate these corrections by moving the setup to a bundle of Weyl algebras over the manifold. This method yields a globally defined star product on any symplectic manifold.

The main idea in Fedosov is to replace the algebra of functions on a symplectic manifold by sections of a bundle of formal Weyl algebras and to introduce a flat symplectic connection on this bundle. The flat sections of this connection will be in bijection with smooth functions, and the star product will be obtained by transporting the fiberwise Weyl product along this bijection map.

## The Weyl algebra and Weyl bundle

Let $(M,\omega)$ be a symplectic manifold of dimension $2n$. At each point $x\in M$, the tangent space $T_xM$ is a symplectic vector space with symplectic form $\omega_x$. The Weyl algebra associated to this vector space is the algebra of formal power series in variables $y^i$ with coefficients in $\mathbb{C}$,
$$
W_x = \left\{ \sum_{k=0}^\infty a_{i_1\cdots i_k}(x)\,y^{i_1}\cdots y^{i_k} \right\}[[\hbar]]
$$
with the Moyal product
$$
a\circ b = \sum_{k=0}^{\infty} \left(\frac{i\hbar}{2}\right)^k \frac{1}{k!} \omega^{i_1 j_1}\cdots \omega^{i_k j_k} \frac{\partial^k a}{\partial y^{i_1}\cdots\partial y^{i_k}} \frac{\partial^k b}{\partial y^{j_1}\cdots\partial y^{j_k}}
$$
Moving along the base we require the functions $a(x)$ to change smoothly with $x$. This gives us the Weyl bundle $W(M)$ which is the bundle over $M$ whose fiber at each point $x\in M$ is the Weyl algebra $W_x$. Sections of $W(M)$ are formal power series of the form
$$
a(x,y,\hbar) = \sum_{k=0}^{\infty} a_{i_1\cdots i_k}(x,\hbar) \,y^{i_1}\cdots y^{i_k}
$$
The fiberwise product $\circ$ extends to sections of $W(M)$ by applying the Moyal product pointwise, and smoothness of $a$ ensures the image is also a section.

## The Fedosov connection

Let $\nabla$ be a symplectic connection on $(M,\omega)$, satisfying $\nabla \omega = 0$. This connection extends naturally to a connection on the Weyl bundle.

We consider the space of $W(M)$-valued differential forms
$$
\Omega^\bullet(M,W) = \Gamma(W(M)\otimes \Lambda^\bullet T^*M)
$$
Also, we define the operator $\delta : \Omega^q(M,W) \to \Omega^{q+1}(M,W)$ as
$$
\delta a = dx^i \otimes \frac{\partial a}{\partial y^i}
$$
This operator increases the form degree by one and decreases the degree in the fiber variables $y^i$ by one. We also define the inverse operator $\delta^{-1} : \Omega^q(M,W) \to \Omega^{q-1}(M,W)$ by
$$
\delta^{-1} a =
\begin{cases}
\dfrac{1}{p+q} y^i \iota_{\partial_i} a & p+q>0 \\
0 & p+q=0
\end{cases}
$$
where $p$ is the degree in the variables $y^i$ and $q$ is the degree in $dx^i$, and $\iota_{\partial_{i}}$ denotes contracting the $dx^{i}$ term from the section.

The operators $\delta$ and $\delta^{-1}$ satisfy the identity
$$
a = \sigma(a) + \delta\delta^{-1}a + \delta^{-1}\delta a
$$
where $\sigma(a)$ denotes the projecting to the part independent of the variables $y^i$ and $dx^i$, that is
$$
\sigma(a) = a(x,0,\hbar)
$$

**Lemma.** The operator $\delta$ satisfies $\delta^2 = 0$ and provides a homotopy for the complex $(\Omega^\bullet(M,W),\delta)$.

Finally, we construct the Fedosov connection
$$
D = \partial - \delta + \frac{1}{i\hbar}[r,\cdot]
$$
where we select the value of $r$ so that $D^2=0$. Let
$$
W_D = \{ a \in \Gamma(W(M)) \mid Da = 0 \}
$$
be the space of flat sections of this connection. Define the symbol of sections using the projection $\sigma : \Gamma(W(M)) \to C^\infty(M)[[\hbar]]$
$$
\sigma(a) = a(x,0)
$$

**Theorem.** The projection $\sigma$ restricts to a bijection for flat sections of $D$:
$$
\sigma : W_D \to C^\infty(M)[[\hbar]]
$$

*Proof.* Let $a_{0} \in C^\infty(M)[[\hbar]]$. We need to find a section $a \in \Gamma(W(M))$ such that
$$
Da = 0 \qquad \sigma(a) = a_{0}
$$
Write $a$ as a formal series in the Weyl degree
$$
a = a_{0} + a_1 + a_2 + \cdots
$$
where $a_k$ is degree $k$ in the variables $y^i$. The equation $Da=0$ can be written as
$$
\delta a = \partial a + \frac{1}{i\hbar}[r,a]
$$
Applying the operator $\delta^{-1}$ on both sides and using the identity above gives
$$
a = a_{0} + \delta^{-1}\left(\partial a + \frac{1}{i\hbar}[r,a]\right)
$$
The $\delta^{-1}$ operator necessarily increases the $y^{i}$ degree. Thus, we may solve this equation recursively by comparing the matching degree terms on both sides. Thus a unique solution $a$ exists satisfying $Da=0$ and $\sigma(a)=a_{0}$.

Conversely, suppose $a$ is a flat section with $\sigma(a)=0$. A similar recursive argument shows that all coefficients of $a$ vanish, so $a=0$. Therefore $\sigma$ is injective.

This proves that $\sigma$ is a bijection between flat sections and functions of $M$. $\square$

The flat lifts $\sigma^{-1}(f)$ are the Taylor series of $f$ with distances measured along the geodesic of the symplectic connection $\nabla$.

## The Fedosov star product

Let $\tau = \sigma^{-1}$ denote the lifting map sending a function to its corresponding flat section. The Fedosov star product is defined by
$$
f \star g = \sigma\left(\tau(f)\circ\tau(g)\right)
$$
where $\circ$ is the fiberwise Moyal product. Associativity follows from the associativity of the Weyl product and the fact that the Fedosov connection $D$ is a derivation of $\circ$, satisfying
$$
D(a \circ b) = D(a) \circ b + a \circ D(b)
$$
We now try to understand why this definition is truly global. Since the Weyl bundle is constructed by gluing the formal $y^{i}$ directions pointwise, we see that it is a trivial vector bundle over $M$. It can be written as
$$
W = M \times N
$$
where $N \cong W_{x}$ at each point, is the fibre over the base $M$. Moreover, the fibre symplectic connection $\partial$ which we can write in coordinates as
$$
\partial = dx^{i} \otimes \left( \partial_{i} + \Gamma^{k}_{ij}\omega_{kl}y^{l}\frac{\partial}{\partial y^{j}} \right)
$$
$\Gamma$ being the Christoffel symbols of the original base connection, is a connection on $W$ which determines how the base derivatives $\partial_{i}$ twist as we move along the base at different $y$ levels, while letting the $y=0$ section which is $M$ itself have the standard connection. It is clear that the Moyal product of two sections flat for this connection (which recall is also a symplectic connection) do not see any changes at all, since both the main ingredients, the Poisson bivector $\omega$ and higher derivatives $\nabla_{i}\nabla_{j} \cdots f$ are built to not change their formation as one moves on the base.

The only difficulty we now have is that of curvature. A non zero curvature would mean that parallel transporting this product along a small path and returning to the starting point does *not* bring the tangent basis back to the same starting configuration. This is what Fedosov's iteratively constructed $r$ is there to fix. After ensuring flatness, we finally have a well defined product.

## Global twisting and equivalence

One might worry that if $M$ has non-trivial topology, then even with a flat connection we might end up with a twisted basis going along a path which isn't contractible. Thus the remaining question is whether such global twisting could lead to incompatible star products. Fedosov shows that this does not occur. Star products constructed by his method are classified, up to equivalence, by a single formal closed $2$-form
$$
\Omega = \omega + \hbar \Omega_1 + \hbar^2 \Omega_2 + \cdots \in \Omega^2(M)[[\hbar]]
$$
whose de Rham cohomology class completely determines the resulting deformation quantization. Different choices of symplectic connection or of the correction term $r$ which produce the same $\Omega$ lead to equivalent star products.

Suppose $D$ and $D'$ are two Fedosov connections of the form
$$
D = -\delta + \nabla + \frac{1}{\hbar}[r,-] \qquad D' = -\delta + \nabla + \frac{1}{\hbar}[r',-]
$$
which have the same Weyl curvature $\Omega$. Fedosov proves that there exists a section $a \in \Gamma(W)$ such that the Weyl bundle automorphism
$$
A = \exp\!\left(\frac{1}{\hbar}\mathrm{ad}(a)\right)
$$
relates the two connections by conjugation,
$$
D' = A^{-1} D A
$$
These transformations act fiberwise by inner automorphisms of the Weyl algebra and can be interpreted as gauge transformations of the Weyl bundle.

If the Fedosov connection is changed from $D$ to $D'$, the corresponding automorphism $A$ maps $D$-flat sections to $D'$-flat sections. Restricting to functions through the projection $\sigma$ therefore gives us an operator
$$
T = \sigma \circ A \circ \tau
$$
which is a formal differential operator of the form
$$
T = \mathrm{id} + \hbar T_1 + \hbar^2 T_2 + \cdots
$$
Thus, the star products associated with the two different symplectic connections are related by $T$ as
$$
T(f \star g) = Tf \star' Tg
$$
This means that although the Weyl bundle connection may show a nontrivial holonomy when parallel transported along noncontractible loops, the induced deformation quantization depends only on the cohomology class of the formal $2$-form $\Omega$. Different Fedosov connections producing the same class give equivalent star products, and the star product is independent of which fundamental group element the path belongs in, as long as we keep the symplectic connection fixed.

## References

- B. V. Fedosov, "A simple geometrical construction of deformation quantization", *Journal of Differential Geometry* 40 (1994), 213–238.
