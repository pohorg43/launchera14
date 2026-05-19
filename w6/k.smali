.class public abstract Lw6/k;
.super Lr6/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6/k$a;,
        Lw6/k$b;,
        Lw6/k$c;
    }
.end annotation


# static fields
.field public static final synthetic f:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lu6/m;

.field public final c:Lw6/k$a;

.field public final d:Lx6/i;

.field public final e:Lx6/j;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lw6/k;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "classifierNamesLazy"

    const-string v4, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lw6/k;->f:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu6/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/m;",
            "Ljava/util/List<",
            "Lc6/i;",
            ">;",
            "Ljava/util/List<",
            "Lc6/n;",
            ">;",
            "Ljava/util/List<",
            "Lc6/r;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lh6/f;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr6/j;-><init>()V

    iput-object p1, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, p1, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->c:Lu6/l;

    invoke-interface {v0}, Lu6/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lw6/k$b;

    invoke-direct {v0, p0, p2, p3, p4}, Lw6/k$b;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_33

    :cond_2e
    new-instance v0, Lw6/k$c;

    invoke-direct {v0, p0, p2, p3, p4}, Lw6/k$c;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_33
    iput-object v0, p0, Lw6/k;->c:Lw6/k$a;

    iget-object p2, p1, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$d;

    invoke-direct {p3, p5}, Lw6/k$d;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k;->d:Lx6/i;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/k$e;

    invoke-direct {p2, p0}, Lw6/k$e;-><init>(Lw6/k;)V

    invoke-interface {p1, p2}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object p1

    iput-object p1, p0, Lw6/k;->e:Lx6/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0}, Lw6/k$a;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0, p1, p2}, Lw6/k$a;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0, p1, p2}, Lw6/k$a;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0}, Lw6/k$a;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw6/k;->q(Lh6/f;)Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    invoke-virtual {p0, p1}, Lw6/k;->l(Lh6/f;)Lh6/b;

    move-result-object p0

    invoke-virtual {p2, p0}, Lu6/k;->b(Lh6/b;)Li5/e;

    move-result-object p0

    goto :goto_31

    :cond_1d
    iget-object p2, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p2}, Lw6/k$a;->e()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0, p1}, Lw6/k$a;->f(Lh6/f;)Li5/z0;

    move-result-object p0

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return-object p0
.end method

.method public g()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/k;->e:Lx6/j;

    sget-object v0, Lw6/k;->f:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract h(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public final i(Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lr6/d;->c:Lr6/d$a;

    sget v1, Lr6/d;->f:I

    invoke-virtual {p1, v1}, Lr6/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0, v0, p2}, Lw6/k;->h(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    :cond_22
    iget-object v1, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {v1, v0, p1, p2, p3}, Lw6/k$a;->g(Ljava/util/Collection;Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)V

    sget p3, Lr6/d;->l:I

    invoke-virtual {p1, p3}, Lr6/d;->a(I)Z

    move-result p3

    if-eqz p3, :cond_5f

    invoke-virtual {p0}, Lw6/k;->m()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_37
    :goto_37
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lw6/k;->b:Lu6/m;

    iget-object v2, v2, Lu6/m;->a:Lu6/k;

    invoke-virtual {p0, v1}, Lw6/k;->l(Lh6/f;)Lh6/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lu6/k;->b(Lh6/b;)Li5/e;

    move-result-object v1

    invoke-static {v0, v1}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_37

    :cond_5f
    sget-object p3, Lr6/d;->c:Lr6/d$a;

    sget p3, Lr6/d;->g:I

    invoke-virtual {p1, p3}, Lr6/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p1}, Lw6/k$a;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_73
    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh6/f;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {v1, p3}, Lw6/k$a;->f(Lh6/f;)Li5/z0;

    move-result-object p3

    invoke-static {v0, p3}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_73

    :cond_95
    invoke-static {v0}, Li7/a;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j(Lh6/f;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/List<",
            "Li5/u0;",
            ">;)V"
        }
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functions"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Lh6/f;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/List<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "descriptors"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Lh6/f;)Lh6/b;
.end method

.method public final m()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/k;->d:Lx6/i;

    sget-object v0, Lw6/k;->f:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract n()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public q(Lh6/f;)Z
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/k;->m()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public r(Li5/u0;)Z
    .registers 2

    const-string p0, "function"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
