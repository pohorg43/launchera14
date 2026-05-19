.class public final Lv5/r;
.super Lv5/u;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaStaticClassScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaStaticClassScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaStaticClassScope\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,171:1\n1#2:172\n1477#3:173\n1502#3,3:174\n1505#3,3:184\n1549#3:193\n1620#3,3:194\n361#4,7:177\n76#5:187\n96#5,5:188\n*S KotlinDebug\n*F\n+ 1 LazyJavaStaticClassScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaStaticClassScope\n*L\n112#1:173\n112#1:174,3\n112#1:184,3\n168#1:193\n168#1:194,3\n112#1:177,7\n114#1:187\n114#1:188,5\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final n:Ly5/g;

.field public final o:Lt5/c;


# direct methods
.method public constructor <init>(Lu5/g;Ly5/g;Lt5/c;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lv5/u;-><init>(Lu5/g;)V

    iput-object p2, p0, Lv5/r;->n:Ly5/g;

    iput-object p3, p0, Lv5/r;->o:Lt5/c;

    return-void
.end method


# virtual methods
.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 3

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 3
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

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public i(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 5
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

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv5/b;

    invoke-interface {p1}, Lv5/b;->a()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Li4/v;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lv5/r;->o:Lt5/c;

    invoke-static {p2}, Lt5/h;->b(Li5/e;)Lv5/r;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Lv5/l;->a()Ljava/util/Set;

    move-result-object p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    if-nez p2, :cond_27

    sget-object p2, Li4/a0;->a:Li4/a0;

    :cond_27
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lv5/r;->n:Ly5/g;

    invoke-interface {p2}, Ly5/g;->s()Z

    move-result p2

    if-eqz p2, :cond_46

    const/4 p2, 0x2

    new-array p2, p2, [Lh6/f;

    const/4 v0, 0x0

    sget-object v1, Lf5/j;->c:Lh6/f;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    sget-object v1, Lf5/j;->a:Lh6/f;

    aput-object v1, p2, v0

    invoke-static {p2}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_46
    iget-object p2, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, p2, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->x:Lp6/e;

    iget-object p0, p0, Lv5/r;->o:Lt5/c;

    invoke-interface {v0, p2, p0}, Lp6/e;->b(Lu5/g;Li5/e;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public j(Ljava/util/Collection;Lh6/f;)V
    .registers 5
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

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v1, v0, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->x:Lp6/e;

    iget-object p0, p0, Lv5/r;->o:Lt5/c;

    invoke-interface {v1, v0, p0, p2, p1}, Lp6/e;->e(Lu5/g;Li5/e;Lh6/f;Ljava/util/Collection;)V

    return-void
.end method

.method public k()Lv5/b;
    .registers 3

    new-instance v0, Lv5/a;

    iget-object p0, p0, Lv5/r;->n:Ly5/g;

    sget-object v1, Lv5/q;->a:Lv5/q;

    invoke-direct {v0, p0, v1}, Lv5/a;-><init>(Ly5/g;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public m(Ljava/util/Collection;Lh6/f;)V
    .registers 10
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

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/r;->o:Lt5/c;

    invoke-static {v0}, Lt5/h;->b(Li5/e;)Lv5/r;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_1f

    :cond_15
    sget-object v1, Lq5/d;->o:Lq5/d;

    invoke-virtual {v0, p2, v1}, Lv5/l;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :goto_1f
    move-object v2, v0

    iget-object v4, p0, Lv5/r;->o:Lt5/c;

    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v5, v0, Lu5/c;->f:Lu6/q;

    iget-object v0, v0, Lu5/c;->u:Lz6/l;

    invoke-interface {v0}, Lz6/l;->a()Lk6/o;

    move-result-object v6

    move-object v1, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Ls5/a;->e(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "resolveOverridesForStati…rridingUtil\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lv5/r;->n:Ly5/g;

    invoke-interface {v0}, Ly5/g;->s()Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lf5/j;->c:Lh6/f;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p0, p0, Lv5/r;->o:Lt5/c;

    invoke-static {p0}, Lk6/h;->f(Li5/e;)Li5/u0;

    move-result-object p0

    const-string p2, "createEnumValueOfMethod(ownerDescriptor)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_5b
    sget-object v0, Lf5/j;->a:Lh6/f;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_71

    iget-object p0, p0, Lv5/r;->o:Lt5/c;

    invoke-static {p0}, Lk6/h;->g(Li5/e;)Li5/u0;

    move-result-object p0

    const-string p2, "createEnumValuesMethod(ownerDescriptor)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_71
    :goto_71
    return-void
.end method

.method public n(Lh6/f;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "result"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lv5/r;->o:Lt5/c;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Lv5/r$a;

    invoke-direct {v3, p1}, Lv5/r$a;-><init>(Lh6/f;)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lv5/p;->a:Lv5/p;

    new-instance v6, Lv5/t;

    invoke-direct {v6, v1, v2, v3}, Lv5/t;-><init>(Li5/e;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v4, v5, v6}, Li7/b;->b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v7, "resolveOverridesForStati…ingUtil\n                )"

    if-eqz v1, :cond_49

    iget-object v4, p0, Lv5/r;->o:Lt5/c;

    iget-object v1, p0, Lv5/l;->b:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v5, v1, Lu5/c;->f:Lu6/q;

    iget-object v1, v1, Lu5/c;->u:Lz6/l;

    invoke-interface {v1}, Lz6/l;->a()Lk6/o;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ls5/a;->e(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_b5

    :cond_49
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Li5/o0;

    invoke-virtual {p0, v4}, Lv5/r;->v(Li5/o0;)Li5/o0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_71

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_77
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_84
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    iget-object v4, p0, Lv5/r;->o:Lt5/c;

    iget-object v1, p0, Lv5/l;->b:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v5, v1, Lu5/c;->f:Lu6/q;

    iget-object v1, v1, Lu5/c;->u:Lz6/l;

    invoke-interface {v1}, Lz6/l;->a()Lk6/o;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ls5/a;->e(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_84

    :cond_b2
    invoke-interface {p2, v8}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_b5
    iget-object v1, p0, Lv5/r;->n:Ly5/g;

    invoke-interface {v1}, Ly5/g;->s()Z

    move-result v1

    if-eqz v1, :cond_ce

    sget-object v1, Lf5/j;->b:Lh6/f;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v0, p0, Lv5/r;->o:Lt5/c;

    invoke-static {v0}, Lk6/h;->e(Li5/e;)Li5/o0;

    move-result-object v0

    invoke-static {p2, v0}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_ce
    return-void
.end method

.method public o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 7
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

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv5/b;

    invoke-interface {p1}, Lv5/b;->e()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Li4/v;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lv5/r;->o:Lt5/c;

    sget-object v0, Lv5/r$b;->a:Lv5/r$b;

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lv5/p;->a:Lv5/p;

    new-instance v3, Lv5/t;

    invoke-direct {v3, p2, p1, v0}, Lv5/t;-><init>(Li5/e;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v2, v3}, Li7/b;->b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;

    iget-object p0, p0, Lv5/r;->n:Ly5/g;

    invoke-interface {p0}, Ly5/g;->s()Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lf5/j;->b:Lh6/f;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_34
    return-object p1
.end method

.method public q()Li5/l;
    .registers 1

    iget-object p0, p0, Lv5/r;->o:Lt5/c;

    return-object p0
.end method

.method public final v(Li5/o0;)Li5/o0;
    .registers 5

    invoke-interface {p1}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    invoke-virtual {v0}, Li5/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    :cond_b
    invoke-interface {p1}, Li5/o0;->d()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "this.overriddenDescriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/o0;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lv5/r;->v(Li5/o0;)Li5/o0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3c
    invoke-static {v0}, Li4/v;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/o0;

    return-object p0
.end method
