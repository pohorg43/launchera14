.class public abstract Lu6/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/k0;


# instance fields
.field public final a:Lx6/m;

.field public final b:Lu6/t;

.field public final c:Li5/e0;

.field public d:Lu6/k;

.field public final e:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/c;",
            "Li5/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;Lu6/t;Li5/e0;)V
    .registers 5

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/a;->a:Lx6/m;

    iput-object p2, p0, Lu6/a;->b:Lu6/t;

    iput-object p3, p0, Lu6/a;->c:Li5/e0;

    new-instance p2, Lu6/a$a;

    invoke-direct {p2, p0}, Lu6/a$a;-><init>(Lu6/a;)V

    invoke-interface {p1, p2}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lu6/a;->e:Lx6/h;

    return-void
.end method


# virtual methods
.method public a(Lh6/c;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")",
            "Ljava/util/List<",
            "Li5/h0;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/a;->e:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Lh6/c;)Z
    .registers 6

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/a;->e:Lx6/h;

    check-cast v0, Lx6/e$l;

    iget-object v0, v0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    sget-object v3, Lx6/e$n;->b:Lx6/e$n;

    if-eq v0, v3, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    if-eqz v0, :cond_25

    iget-object p0, p0, Lu6/a;->e:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/h0;

    goto :goto_29

    :cond_25
    invoke-virtual {p0, p1}, Lu6/a;->d(Lh6/c;)Lu6/o;

    move-result-object p0

    :goto_29
    if-nez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public c(Lh6/c;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Ljava/util/Collection<",
            "Li5/h0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/a;->e:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract d(Lh6/c;)Lu6/o;
.end method

.method public j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lh6/c;",
            ">;"
        }
    .end annotation

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method
