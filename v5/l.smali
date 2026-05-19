.class public abstract Lv5/l;
.super Lr6/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv5/l$a;,
        Lv5/l$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,405:1\n1477#2:406\n1502#2,3:407\n1505#2,3:417\n1549#2:420\n1620#2,3:421\n1549#2:424\n1620#2,3:425\n361#3,7:410\n*S KotlinDebug\n*F\n+ 1 LazyJavaScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaScope\n*L\n129#1:406\n129#1:407,3\n129#1:417,3\n165#1:420\n165#1:421,3\n212#1:424\n212#1:425,3\n129#1:410,7\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic m:[Lz4/n;
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
.field public final b:Lu5/g;

.field public final c:Lv5/l;

.field public final d:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Lv5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/f;",
            "Li5/o0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lx6/i;

.field public final j:Lx6/i;

.field public final k:Lx6/i;

.field public final l:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/List<",
            "Li5/o0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lv5/l;

    const/4 v1, 0x3

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "classNamesLazy"

    const-string v4, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lv5/l;->m:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu5/g;Lv5/l;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr6/j;-><init>()V

    iput-object p1, p0, Lv5/l;->b:Lu5/g;

    iput-object p2, p0, Lv5/l;->c:Lv5/l;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$c;

    invoke-direct {v0, p0}, Lv5/l$c;-><init>(Lv5/l;)V

    sget-object v1, Li4/y;->a:Li4/y;

    invoke-interface {p2, v0, v1}, Lx6/m;->b(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->d:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$g;

    invoke-direct {v0, p0}, Lv5/l$g;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->e:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$f;

    invoke-direct {v0, p0}, Lv5/l$f;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->f:Lx6/g;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$e;

    invoke-direct {v0, p0}, Lv5/l$e;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->g:Lx6/h;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$i;

    invoke-direct {v0, p0}, Lv5/l$i;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->h:Lx6/g;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$h;

    invoke-direct {v0, p0}, Lv5/l$h;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->i:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$k;

    invoke-direct {v0, p0}, Lv5/l$k;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->j:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/l$d;

    invoke-direct {v0, p0}, Lv5/l$d;-><init>(Lv5/l;)V

    invoke-interface {p2, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/l;->k:Lx6/i;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lv5/l$j;

    invoke-direct {p2, p0}, Lv5/l$j;-><init>(Lv5/l;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, Lv5/l;->l:Lx6/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/l;->i:Lx6/i;

    sget-object v0, Lv5/l;->m:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

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

    invoke-virtual {p0}, Lv5/l;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    iget-object p0, p0, Lv5/l;->h:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

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

    invoke-virtual {p0}, Lv5/l;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    iget-object p0, p0, Lv5/l;->l:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/l;->j:Lx6/i;

    sget-object v0, Lv5/l;->m:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/l;->d:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

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

    iget-object p0, p0, Lv5/l;->k:Lx6/i;

    sget-object v0, Lv5/l;->m:[Lz4/n;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public j(Ljava/util/Collection;Lh6/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lh6/f;",
            ")V"
        }
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract k()Lv5/b;
.end method

.method public final l(Ly5/r;Lu5/g;)Ly6/l0;
    .registers 7

    const-string p0, "method"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/q;->J()Ly5/g;

    move-result-object p0

    invoke-interface {p0}, Ly5/g;->m()Z

    move-result p0

    sget-object v0, Ly6/z1;->b:Ly6/z1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p0, v1, v2, v3}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object p0

    iget-object p2, p2, Lu5/g;->e:Lw5/e;

    invoke-interface {p1}, Ly5/r;->getReturnType()Ly5/x;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public abstract m(Ljava/util/Collection;Lh6/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lh6/f;",
            ")V"
        }
    .end annotation
.end method

.method public abstract n(Lh6/f;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Li5/r0;
.end method

.method public abstract q()Li5/l;
.end method

.method public r(Lt5/e;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public abstract s(Ly5/r;Ljava/util/List;Ly6/l0;Ljava/util/List;)Lv5/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/r;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Li5/e1;",
            ">;)",
            "Lv5/l$a;"
        }
    .end annotation
.end method

.method public final t(Ly5/r;)Lt5/e;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lv5/l;->b:Lu5/g;

    invoke-static {v2, v1}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lv5/l;->q()Li5/l;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ly5/t;->getName()Lh6/f;

    move-result-object v4

    iget-object v5, v0, Lv5/l;->b:Lu5/g;

    iget-object v5, v5, Lu5/g;->a:Lu5/c;

    iget-object v5, v5, Lu5/c;->j:Lx5/b;

    invoke-interface {v5, v1}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v5

    iget-object v6, v0, Lv5/l;->e:Lx6/i;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv5/b;

    invoke-interface/range {p1 .. p1}, Ly5/t;->getName()Lh6/f;

    move-result-object v7

    invoke-interface {v6, v7}, Lv5/b;->f(Lh6/f;)Ly5/w;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_41

    invoke-interface/range {p1 .. p1}, Ly5/r;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    move v6, v7

    goto :goto_42

    :cond_41
    move v6, v8

    :goto_42
    invoke-static {v3, v2, v4, v5, v6}, Lt5/e;->R0(Li5/l;Lj5/h;Lh6/f;Li5/v0;Z)Lt5/e;

    move-result-object v2

    const-string v3, "createJavaMethod(\n      …eters.isEmpty()\n        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lv5/l;->b:Lu5/g;

    invoke-static {v3, v2, v1, v8}, Lu5/b;->b(Lu5/g;Li5/l;Ly5/z;I)Lu5/g;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ly5/z;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly5/y;

    iget-object v8, v3, Lu5/g;->b:Lu5/k;

    invoke-interface {v8, v6}, Lu5/k;->a(Ly5/y;)Li5/a1;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_7d
    invoke-interface/range {p1 .. p1}, Ly5/r;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lv5/l;->u(Lu5/g;Li5/x;Ljava/util/List;)Lv5/l$b;

    move-result-object v4

    invoke-virtual {v0, v1, v3}, Lv5/l;->l(Ly5/r;Lu5/g;)Ly6/l0;

    move-result-object v6

    iget-object v8, v4, Lv5/l$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v5, v6, v8}, Lv5/l;->s(Ly5/r;Ljava/util/List;Ly6/l0;Ljava/util/List;)Lv5/l$a;

    move-result-object v5

    iget-object v6, v5, Lv5/l$a;->b:Ly6/l0;

    const/4 v8, 0x0

    if-eqz v6, :cond_9e

    sget v9, Lj5/h;->I:I

    sget-object v9, Lj5/h$a;->b:Lj5/h;

    invoke-static {v2, v6, v9}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object v6

    move-object v10, v6

    goto :goto_9f

    :cond_9e
    move-object v10, v8

    :goto_9f
    invoke-virtual/range {p0 .. p0}, Lv5/l;->p()Li5/r0;

    move-result-object v11

    sget-object v12, Li4/y;->a:Li4/y;

    iget-object v13, v5, Lv5/l$a;->d:Ljava/util/List;

    iget-object v14, v5, Lv5/l$a;->c:Ljava/util/List;

    iget-object v15, v5, Lv5/l$a;->a:Ly6/l0;

    invoke-interface/range {p1 .. p1}, Ly5/s;->isAbstract()Z

    move-result v0

    invoke-interface/range {p1 .. p1}, Ly5/s;->isFinal()Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v0, :cond_bb

    sget-object v0, Li5/d0;->d:Li5/d0;

    :goto_b8
    move-object/from16 v16, v0

    goto :goto_c3

    :cond_bb
    if-eqz v6, :cond_c0

    sget-object v0, Li5/d0;->c:Li5/d0;

    goto :goto_b8

    :cond_c0
    sget-object v0, Li5/d0;->a:Li5/d0;

    goto :goto_b8

    :goto_c3
    invoke-interface/range {p1 .. p1}, Ly5/s;->getVisibility()Li5/i1;

    move-result-object v0

    invoke-static {v0}, Lr5/n0;->a(Li5/i1;)Li5/t;

    move-result-object v17

    iget-object v0, v5, Lv5/l$a;->b:Ly6/l0;

    if-eqz v0, :cond_e1

    sget-object v0, Lt5/e;->G:Li5/a$a;

    iget-object v1, v4, Lv5/l$b;->a:Ljava/util/List;

    invoke-static {v1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Lh4/j;

    invoke-direct {v6, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    goto :goto_e6

    :cond_e1
    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v0, Li4/z;->a:Li4/z;

    :goto_e6
    move-object/from16 v18, v0

    move-object v9, v2

    invoke-virtual/range {v9 .. v18}, Lt5/e;->Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;

    iget-boolean v0, v5, Lv5/l$a;->e:Z

    iget-boolean v1, v4, Lv5/l$b;->b:Z

    invoke-virtual {v2, v0, v1}, Lt5/e;->S0(ZZ)V

    iget-object v0, v5, Lv5/l$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_116

    iget-object v0, v3, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->e:Ls5/j;

    iget-object v1, v5, Lv5/l$a;->f:Ljava/util/List;

    check-cast v0, Ls5/j$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_10e

    const/4 v0, 0x6

    invoke-static {v0}, Ls5/j$a;->a(I)V

    throw v8

    :cond_10e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_116
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Lazy scope for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lv5/l;->q()Li5/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lu5/g;Li5/x;Ljava/util/List;)Lv5/l$b;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu5/g;",
            "Li5/x;",
            "Ljava/util/List<",
            "+",
            "Ly5/a0;",
            ">;)",
            "Lv5/l$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    const-string v1, "c"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "function"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jValueParameters"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Li4/v;->n0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Li4/d0;

    invoke-virtual {v1}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v12, 0x0

    move v1, v12

    :goto_2c
    move-object/from16 v2, v16

    check-cast v2, Li4/e0;

    invoke-virtual {v2}, Li4/e0;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-virtual {v2}, Li4/e0;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li4/c0;

    iget v4, v2, Li4/c0;->a:I

    iget-object v2, v2, Li4/c0;->b:Ljava/lang/Object;

    check-cast v2, Ly5/a0;

    invoke-static {v0, v2}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v5

    sget-object v3, Ly6/z1;->b:Ly6/z1;

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static {v3, v12, v12, v7, v6}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v3

    invoke-interface {v2}, Ly5/a0;->a()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_91

    invoke-interface {v2}, Ly5/a0;->getType()Ly5/x;

    move-result-object v6

    instance-of v9, v6, Ly5/f;

    if-eqz v9, :cond_60

    move-object v7, v6

    check-cast v7, Ly5/f;

    :cond_60
    if-eqz v7, :cond_7a

    iget-object v6, v0, Lu5/g;->e:Lw5/e;

    invoke-virtual {v6, v7, v3, v8}, Lw5/e;->c(Ly5/f;Lw5/a;Z)Ly6/l0;

    move-result-object v3

    iget-object v6, v0, Lu5/g;->a:Lu5/c;

    iget-object v6, v6, Lu5/c;->o:Li5/e0;

    invoke-interface {v6}, Li5/e0;->k()Lf5/g;

    move-result-object v6

    invoke-virtual {v6, v3}, Lf5/g;->g(Ly6/l0;)Ly6/l0;

    move-result-object v6

    new-instance v7, Lh4/j;

    invoke-direct {v7, v3, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a1

    :cond_7a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vararg parameter should be an array: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_91
    iget-object v6, v0, Lu5/g;->e:Lw5/e;

    invoke-interface {v2}, Ly5/a0;->getType()Ly5/x;

    move-result-object v9

    invoke-virtual {v6, v9, v3}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v3

    new-instance v6, Lh4/j;

    invoke-direct {v6, v3, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    :goto_a1
    iget-object v3, v7, Lh4/j;->a:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ly6/l0;

    iget-object v3, v7, Lh4/j;->b:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Ly6/l0;

    move-object v3, v13

    check-cast v3, Ll5/m;

    invoke-virtual {v3}, Ll5/m;->getName()Lh6/f;

    move-result-object v3

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "equals"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_dd

    iget-object v3, v0, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->o:Li5/e0;

    invoke-interface {v3}, Li5/e0;->k()Lf5/g;

    move-result-object v3

    invoke-virtual {v3}, Lf5/g;->q()Ly6/s0;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    const-string v3, "other"

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    goto :goto_100

    :cond_dd
    invoke-interface {v2}, Ly5/a0;->getName()Lh6/f;

    move-result-object v3

    if-nez v3, :cond_e4

    move v1, v8

    :cond_e4
    if-nez v3, :cond_100

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x70

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    const-string v6, "identifier(\"p$index\")"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_100
    :goto_100
    move/from16 v17, v1

    move-object v6, v3

    const-string v1, "if (function.name.asStri…(\"p$index\")\n            }"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ll5/o0;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v1, v0, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->j:Lx5/b;

    invoke-interface {v1, v2}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v20

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v7, v9

    move/from16 v9, v18

    move-object/from16 v21, v10

    move/from16 v10, v19

    move/from16 v18, v12

    move-object/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    move-object/from16 v1, v21

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v17

    move/from16 v12, v18

    goto/16 :goto_2c

    :cond_134
    invoke-static {v15}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lv5/l$b;

    invoke-direct {v2, v0, v1}, Lv5/l$b;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method
