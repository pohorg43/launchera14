.class public final Li5/s$f;
.super Li5/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Li5/i1;)V
    .registers 2

    invoke-direct {p0, p1}, Li5/q;-><init>(Li5/i1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_1b

    if-eq p0, v4, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_11
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_16
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_1b
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_1f
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_2c

    if-eq p0, v0, :cond_2c

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_30

    :cond_2c
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_30
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ls6/g;Li5/p;Li5/l;Z)Z
    .registers 11

    const-class v0, Li5/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_91

    const/4 v3, 0x1

    if-eqz p3, :cond_8d

    invoke-static {p2, v0}, Lk6/i;->j(Li5/l;Ljava/lang/Class;)Li5/l;

    move-result-object v4

    check-cast v4, Li5/e;

    invoke-static {p3, v0, v2}, Lk6/i;->k(Li5/l;Ljava/lang/Class;Z)Li5/l;

    move-result-object p3

    check-cast p3, Li5/e;

    if-nez p3, :cond_18

    return v2

    :cond_18
    if-eqz v4, :cond_2f

    invoke-static {v4}, Lk6/i;->p(Li5/l;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {v4, v0}, Lk6/i;->j(Li5/l;Ljava/lang/Class;)Li5/l;

    move-result-object v4

    check-cast v4, Li5/e;

    if-eqz v4, :cond_2f

    invoke-static {p3, v4}, Lk6/i;->w(Li5/e;Li5/e;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v3

    :cond_2f
    invoke-static {p2}, Lk6/i;->A(Li5/p;)Li5/p;

    move-result-object v4

    invoke-static {v4, v0}, Lk6/i;->j(Li5/l;Ljava/lang/Class;)Li5/l;

    move-result-object v0

    check-cast v0, Li5/e;

    if-nez v0, :cond_3c

    return v2

    :cond_3c
    invoke-static {p3, v0}, Lk6/i;->w(Li5/e;Li5/e;)Z

    move-result v0

    if-eqz v0, :cond_84

    if-eqz v4, :cond_7f

    sget-object v0, Li5/s;->n:Ls6/g;

    if-ne p1, v0, :cond_49

    goto :goto_7c

    :cond_49
    instance-of v0, v4, Li5/b;

    if-nez v0, :cond_4e

    goto :goto_7b

    :cond_4e
    instance-of v0, v4, Li5/k;

    if-eqz v0, :cond_53

    goto :goto_7b

    :cond_53
    sget-object v0, Li5/s;->m:Ls6/g;

    if-ne p1, v0, :cond_58

    goto :goto_7b

    :cond_58
    sget-object v0, Li5/s;->l:Ls6/g;

    if-eq p1, v0, :cond_7c

    if-nez p1, :cond_5f

    goto :goto_7c

    :cond_5f
    instance-of v0, p1, Ls6/h;

    if-eqz v0, :cond_6b

    move-object v0, p1

    check-cast v0, Ls6/h;

    invoke-interface {v0}, Ls6/h;->b()Ly6/l0;

    move-result-object v0

    goto :goto_6f

    :cond_6b
    invoke-interface {p1}, Ls6/g;->getType()Ly6/l0;

    move-result-object v0

    :goto_6f
    invoke-static {v0, p3}, Lk6/i;->x(Ly6/l0;Li5/l;)Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-static {v0}, Ly6/a0;->a(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_7b
    :goto_7b
    move v2, v3

    :cond_7c
    :goto_7c
    if-eqz v2, :cond_84

    return v3

    :cond_7f
    const/4 p0, 0x2

    invoke-static {p0}, Li5/s$f;->e(I)V

    throw v1

    :cond_84
    invoke-interface {p3}, Li5/e;->b()Li5/l;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Li5/s$f;->c(Ls6/g;Li5/p;Li5/l;Z)Z

    move-result p0

    return p0

    :cond_8d
    invoke-static {v3}, Li5/s$f;->e(I)V

    throw v1

    :cond_91
    invoke-static {v2}, Li5/s$f;->e(I)V

    throw v1
.end method
