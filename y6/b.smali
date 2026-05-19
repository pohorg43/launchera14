.class public abstract Ly6/b;
.super Ly6/j;
.source ""


# direct methods
.method public constructor <init>(Lx6/m;)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Ly6/j;-><init>(Lx6/m;)V

    return-void

    :cond_6
    const/4 p0, 0x0

    invoke-static {p0}, Ly6/b;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic r(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_e
    const/4 v4, 0x2

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    move v5, v4

    :goto_18
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_2f

    if-eq p0, v4, :cond_2a

    if-eq p0, v1, :cond_2f

    if-eq p0, v0, :cond_2f

    const-string v8, "storageManager"

    aput-object v8, v5, v7

    goto :goto_31

    :cond_2a
    const-string v8, "classifier"

    aput-object v8, v5, v7

    goto :goto_31

    :cond_2f
    aput-object v6, v5, v7

    :goto_31
    if-eq p0, v2, :cond_3f

    if-eq p0, v1, :cond_3a

    if-eq p0, v0, :cond_3a

    aput-object v6, v5, v2

    goto :goto_43

    :cond_3a
    const-string v6, "getAdditionalNeighboursInSupertypeGraph"

    aput-object v6, v5, v2

    goto :goto_43

    :cond_3f
    const-string v6, "getBuiltIns"

    aput-object v6, v5, v2

    :goto_43
    if-eq p0, v2, :cond_54

    if-eq p0, v4, :cond_50

    if-eq p0, v1, :cond_54

    if-eq p0, v0, :cond_54

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_54

    :cond_50
    const-string v6, "isSameClassifier"

    aput-object v6, v5, v4

    :cond_54
    :goto_54
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_64

    if-eq p0, v1, :cond_64

    if-eq p0, v0, :cond_64

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_69
    throw p0
.end method


# virtual methods
.method public bridge synthetic e()Li5/h;
    .registers 1

    invoke-virtual {p0}, Ly6/b;->s()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public h(Li5/h;)Z
    .registers 6

    instance-of v0, p1, Li5/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Ly6/b;->s()Li5/e;

    move-result-object p0

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_69

    :cond_23
    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object p0

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p1

    :goto_2b
    if-eqz p0, :cond_74

    if-eqz p1, :cond_74

    instance-of v0, p0, Li5/e0;

    if-eqz v0, :cond_36

    instance-of p0, p1, Li5/e0;

    goto :goto_75

    :cond_36
    instance-of v0, p1, Li5/e0;

    if-eqz v0, :cond_3b

    goto :goto_69

    :cond_3b
    instance-of v0, p0, Li5/h0;

    if-eqz v0, :cond_56

    instance-of v0, p1, Li5/h0;

    if-eqz v0, :cond_69

    check-cast p0, Li5/h0;

    invoke-interface {p0}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    check-cast p1, Li5/h0;

    invoke-interface {p1}, Li5/h0;->e()Lh6/c;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    goto :goto_74

    :cond_56
    instance-of v0, p1, Li5/h0;

    if-eqz v0, :cond_5b

    goto :goto_69

    :cond_5b
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    :cond_69
    :goto_69
    move p0, v2

    goto :goto_75

    :cond_6b
    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object p1

    goto :goto_2b

    :cond_74
    :goto_74
    move p0, v1

    :goto_75
    if-eqz p0, :cond_78

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    return v1
.end method

.method public k()Lf5/g;
    .registers 1

    invoke-virtual {p0}, Ly6/b;->s()Li5/e;

    move-result-object p0

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x1

    invoke-static {p0}, Ly6/b;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public l()Ly6/l0;
    .registers 2

    invoke-virtual {p0}, Ly6/b;->s()Li5/e;

    move-result-object v0

    invoke-static {v0}, Lf5/g;->M(Li5/e;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ly6/b;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->f()Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public m(Z)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ly6/b;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->b()Li5/l;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    if-nez v0, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    return-object p0

    :cond_13
    const/4 p0, 0x3

    invoke-static {p0}, Ly6/b;->r(I)V

    const/4 p0, 0x0

    throw p0

    :cond_19
    new-instance v0, Li7/d;

    invoke-direct {v0}, Li7/d;-><init>()V

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li7/d;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Li5/e;->h0()Li5/e;

    move-result-object p0

    if-eqz p1, :cond_36

    if-eqz p0, :cond_36

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    invoke-virtual {v0, p0}, Li7/d;->add(Ljava/lang/Object;)Z

    :cond_36
    return-object v0
.end method

.method public abstract s()Li5/e;
.end method
