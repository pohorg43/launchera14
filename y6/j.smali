.class public abstract Ly6/j;
.super Ly6/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/j$b;,
        Ly6/j$a;
    }
.end annotation


# instance fields
.field public final b:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ly6/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;)V
    .registers 5

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/r;-><init>()V

    new-instance v0, Ly6/j$c;

    invoke-direct {v0, p0}, Ly6/j$c;-><init>(Ly6/j;)V

    sget-object v1, Ly6/j$d;->a:Ly6/j$d;

    new-instance v2, Ly6/j$e;

    invoke-direct {v2, p0}, Ly6/j$e;-><init>(Ly6/j;)V

    invoke-interface {p1, v0, v1, v2}, Lx6/m;->e(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ly6/j;->b:Lx6/i;

    return-void
.end method

.method public static final i(Ly6/j;Ly6/j1;Z)Ljava/util/Collection;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p0, p1, Ly6/j;

    if-eqz p0, :cond_b

    move-object p0, p1

    check-cast p0, Ly6/j;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_21

    iget-object p1, p0, Ly6/j;->b:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/j$b;

    iget-object p1, p1, Ly6/j$b;->a:Ljava/util/Collection;

    invoke-virtual {p0, p2}, Ly6/j;->m(Z)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p1, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_2a

    :cond_21
    invoke-interface {p1}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "supertypes"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2a
    return-object p0
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/j1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/j$a;

    invoke-direct {v0, p0, p1}, Ly6/j$a;-><init>(Ly6/j;Lz6/f;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Collection;
    .registers 1

    invoke-virtual {p0}, Ly6/j;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract j()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end method

.method public l()Ly6/l0;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Z)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public abstract n()Li5/y0;
.end method

.method public o()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ly6/j;->b:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/j$b;

    iget-object p0, p0, Ly6/j$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;)",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string p0, "supertypes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public q(Ly6/l0;)V
    .registers 2

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
