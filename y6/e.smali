.class public final Ly6/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lc7/p;Lc7/k;Lc7/k;)Z
    .registers 11

    invoke-interface {p0, p1}, Lc7/p;->I(Lc7/i;)I

    move-result v0

    invoke-interface {p0, p2}, Lc7/p;->I(Lc7/i;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7e

    invoke-interface {p0, p1}, Lc7/p;->p(Lc7/k;)Z

    move-result v0

    invoke-interface {p0, p2}, Lc7/p;->p(Lc7/k;)Z

    move-result v1

    if-ne v0, v1, :cond_7e

    invoke-interface {p0, p1}, Lc7/p;->s0(Lc7/k;)Lc7/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-interface {p0, p2}, Lc7/p;->s0(Lc7/k;)Lc7/e;

    move-result-object v3

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    if-ne v0, v3, :cond_7e

    invoke-interface {p0, p1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v0

    invoke-interface {p0, p2}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_7e

    :cond_39
    invoke-interface {p0, p1, p2}, Lc7/r;->M(Lc7/k;Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    invoke-interface {p0, p1}, Lc7/p;->I(Lc7/i;)I

    move-result v0

    move v3, v2

    :goto_45
    if-ge v3, v0, :cond_7d

    invoke-interface {p0, p1, v3}, Lc7/p;->A(Lc7/i;I)Lc7/m;

    move-result-object v4

    invoke-interface {p0, p2, v3}, Lc7/p;->A(Lc7/i;I)Lc7/m;

    move-result-object v5

    invoke-interface {p0, v4}, Lc7/p;->h0(Lc7/m;)Z

    move-result v6

    invoke-interface {p0, v5}, Lc7/p;->h0(Lc7/m;)Z

    move-result v7

    if-eq v6, v7, :cond_5a

    return v2

    :cond_5a
    invoke-interface {p0, v4}, Lc7/p;->h0(Lc7/m;)Z

    move-result v6

    if-nez v6, :cond_7a

    invoke-interface {p0, v4}, Lc7/p;->r0(Lc7/m;)Lc7/t;

    move-result-object v6

    invoke-interface {p0, v5}, Lc7/p;->r0(Lc7/m;)Lc7/t;

    move-result-object v7

    if-eq v6, v7, :cond_6b

    return v2

    :cond_6b
    invoke-interface {p0, v4}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v4

    invoke-interface {p0, v5}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v5

    invoke-static {p0, v4, v5}, Ly6/e;->b(Lc7/p;Lc7/i;Lc7/i;)Z

    move-result v4

    if-nez v4, :cond_7a

    return v2

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_7d
    return v1

    :cond_7e
    :goto_7e
    return v2
.end method

.method public static final b(Lc7/p;Lc7/i;Lc7/i;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    invoke-interface {p0, p1}, Lc7/p;->e(Lc7/i;)Lc7/k;

    move-result-object v1

    invoke-interface {p0, p2}, Lc7/p;->e(Lc7/i;)Lc7/k;

    move-result-object v2

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    invoke-static {p0, v1, v2}, Ly6/e;->a(Lc7/p;Lc7/k;Lc7/k;)Z

    move-result p0

    return p0

    :cond_15
    invoke-interface {p0, p1}, Lc7/p;->q(Lc7/i;)Lc7/g;

    move-result-object p1

    invoke-interface {p0, p2}, Lc7/p;->q(Lc7/i;)Lc7/g;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    invoke-interface {p0, p1}, Lc7/p;->f(Lc7/g;)Lc7/k;

    move-result-object v2

    invoke-interface {p0, p2}, Lc7/p;->f(Lc7/g;)Lc7/k;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ly6/e;->a(Lc7/p;Lc7/k;Lc7/k;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p0, p1}, Lc7/p;->c(Lc7/g;)Lc7/k;

    move-result-object p1

    invoke-interface {p0, p2}, Lc7/p;->c(Lc7/g;)Lc7/k;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ly6/e;->a(Lc7/p;Lc7/k;Lc7/k;)Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    return v0

    :cond_41
    return v1
.end method
