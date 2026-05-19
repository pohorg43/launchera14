.class public Lz0/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lw0/c;",
            "Lz0/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lw0/c;",
            "Lz0/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz0/t;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz0/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/t;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lz0/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu5/f;Ls5/g;)V
    .registers 4

    const-string/jumbo v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/t;->a:Ljava/lang/Object;

    iput-object p2, p0, Lz0/t;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lw0/c;",
            "Lz0/m<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object p0, p0, Lz0/t;->b:Ljava/lang/Object;

    goto :goto_7

    :cond_5
    iget-object p0, p0, Lz0/t;->a:Ljava/lang/Object;

    :goto_7
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public b(Ly5/g;)Li5/e;
    .registers 7

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/g;->e()Lh6/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ly5/g;->h()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    iget-object p0, p0, Lz0/t;->b:Ljava/lang/Object;

    check-cast p0, Ls5/g;

    check-cast p0, Ls5/g$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1d
    invoke-interface {p1}, Ly5/g;->j()Ly5/g;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {p0, v3}, Lz0/t;->b(Ly5/g;)Li5/e;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    goto :goto_2f

    :cond_2e
    move-object p0, v2

    :goto_2f
    if-eqz p0, :cond_3c

    invoke-interface {p1}, Ly5/t;->getName()Lh6/f;

    move-result-object p1

    sget-object v0, Lq5/d;->s:Lq5/d;

    invoke-interface {p0, p1, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    goto :goto_3d

    :cond_3c
    move-object p0, v2

    :goto_3d
    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_44

    move-object v2, p0

    check-cast v2, Li5/e;

    :cond_44
    return-object v2

    :cond_45
    if-nez v1, :cond_48

    return-object v2

    :cond_48
    iget-object p0, p0, Lz0/t;->a:Ljava/lang/Object;

    check-cast p0, Lu5/f;

    invoke-virtual {v1}, Lh6/c;->e()Lh6/c;

    move-result-object v1

    const-string v3, "fqName.parent()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fqName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lu5/f;->d(Lh6/c;)Lv5/j;

    move-result-object p0

    invoke-static {p0}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv5/j;

    if-eqz p0, :cond_84

    const-string v1, "jClass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/j;->k:Lv5/d;

    iget-object p0, p0, Lv5/d;->d:Lv5/k;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/t;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lv5/k;->w(Lh6/f;Ly5/g;)Li5/e;

    move-result-object v2

    :cond_84
    return-object v2
.end method
