.class public final Lm6/r;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Lm6/r$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lh6/b;I)V
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm6/f;

    invoke-direct {v0, p1, p2}, Lm6/f;-><init>(Lh6/b;I)V

    invoke-direct {p0, v0}, Lm6/r;-><init>(Lm6/f;)V

    return-void
.end method

.method public constructor <init>(Lm6/f;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lm6/r$a$b;

    invoke-direct {v1, p1}, Lm6/r$a$b;-><init>(Lm6/f;)V

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lm6/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lm6/r$a;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm6/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 9

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly6/g1;->c:Ly6/g1;

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lf5/j$a;->Q:Lh6/d;

    invoke-virtual {v3}, Lh6/d;->i()Lh6/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v2

    if-eqz v2, :cond_9a

    const-string v3, "module.builtIns.kClass"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ly6/s1;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lm6/r$a;

    instance-of v4, v0, Lm6/r$a$a;

    if-eqz v4, :cond_37

    check-cast p0, Lm6/r$a$a;

    iget-object p0, p0, Lm6/r$a$a;->a:Ly6/l0;

    goto :goto_88

    :cond_37
    instance-of v0, v0, Lm6/r$a$b;

    if-eqz v0, :cond_94

    check-cast p0, Lm6/r$a$b;

    iget-object p0, p0, Lm6/r$a$b;->a:Lm6/f;

    iget-object v0, p0, Lm6/f;->a:Lh6/b;

    iget p0, p0, Lm6/f;->b:I

    invoke-static {p1, v0}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_66

    sget-object p1, La7/i;->h:La7/i;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Lh6/b;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "classId.toString()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v4, v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-static {p1, v4}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    goto :goto_88

    :cond_66
    invoke-interface {v4}, Li5/e;->m()Ly6/s0;

    move-result-object v0

    const-string v4, "descriptor.defaultType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object v0

    :goto_73
    if-ge v5, p0, :cond_87

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object v4

    sget-object v6, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {v4, v6, v0}, Lf5/g;->h(Ly6/e2;Ly6/l0;)Ly6/s0;

    move-result-object v0

    const-string v4, "module.builtIns.getArray…Variance.INVARIANT, type)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    :cond_87
    move-object p0, v0

    :goto_88
    invoke-direct {v3, p0}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ly6/m0;->e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;

    move-result-object p0

    return-object p0

    :cond_94
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_9a
    const/16 p0, 0x15

    invoke-static {p0}, Lf5/g;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
