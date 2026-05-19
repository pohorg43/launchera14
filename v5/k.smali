.class public final Lv5/k;
.super Lv5/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv5/k$b;,
        Lv5/k$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaPackageScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaPackageScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1620#2,3:190\n1611#2:193\n1855#2:194\n1856#2:196\n1612#2:197\n766#2:198\n857#2,2:199\n1#3:195\n*S KotlinDebug\n*F\n+ 1 LazyJavaPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaPackageScope\n*L\n160#1:190,3\n162#1:193\n162#1:194\n162#1:196\n162#1:197\n185#1:198\n185#1:199,2\n162#1:195\n*E\n"
    }
.end annotation


# instance fields
.field public final n:Ly5/u;

.field public final o:Lv5/j;

.field public final p:Lx6/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/j<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lv5/k$a;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu5/g;Ly5/u;Lv5/j;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lv5/u;-><init>(Lu5/g;)V

    iput-object p2, p0, Lv5/k;->n:Ly5/u;

    iput-object p3, p0, Lv5/k;->o:Lv5/j;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/k$d;

    invoke-direct {p3, p1, p0}, Lv5/k$d;-><init>(Lu5/g;Lv5/k;)V

    invoke-interface {p2, p3}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object p2

    iput-object p2, p0, Lv5/k;->p:Lx6/j;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/k$c;

    invoke-direct {p3, p0, p1}, Lv5/k$c;-><init>(Lv5/k;Lu5/g;)V

    invoke-interface {p2, p3}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lv5/k;->q:Lx6/h;

    return-void
.end method

.method public static final v(Lv5/k;)Lg6/e;
    .registers 1

    iget-object p0, p0, Lv5/l;->b:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->d:La6/j;

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->c:Lu6/l;

    invoke-static {p0}, Lm4/d;->h(Lu6/l;)Lg6/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 3
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

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 6
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

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->l:I

    sget v1, Lr6/d;->e:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lr6/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_1a

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_5d

    :cond_1a
    iget-object p0, p0, Lv5/l;->d:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li5/l;

    instance-of v2, v1, Li5/e;

    if-eqz v2, :cond_55

    check-cast v1, Li5/e;

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    if-eqz v1, :cond_2b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_5c
    move-object p0, p1

    :goto_5d
    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lv5/k;->w(Lh6/f;Ly5/g;)Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
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

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->e:I

    invoke-virtual {p1, v0}, Lr6/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_12

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0

    :cond_12
    iget-object p1, p0, Lv5/k;->p:Lx6/j;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_3a

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_39
    return-object p0

    :cond_3a
    iget-object p0, p0, Lv5/k;->n:Ly5/u;

    if-nez p2, :cond_40

    sget-object p2, Li7/c;->a:Lkotlin/jvm/functions/Function1;

    :cond_40
    invoke-interface {p0, p2}, Ly5/u;->B(Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly5/g;

    invoke-interface {p2}, Ly5/g;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    const/4 p2, 0x0

    goto :goto_66

    :cond_62
    invoke-interface {p2}, Ly5/t;->getName()Lh6/f;

    move-result-object p2

    :goto_66
    if-eqz p2, :cond_4d

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_6c
    return-object p1
.end method

.method public i(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
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

.method public k()Lv5/b;
    .registers 1

    sget-object p0, Lv5/b$a;->a:Lv5/b$a;

    return-object p0
.end method

.method public m(Ljava/util/Collection;Lh6/f;)V
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

.method public o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
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

.method public q()Li5/l;
    .registers 1

    iget-object p0, p0, Lv5/k;->o:Lv5/j;

    return-object p0
.end method

.method public final w(Lh6/f;Ly5/g;)Li5/e;
    .registers 6

    sget-object v0, Lh6/h;->a:Lh6/h;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    if-eqz v0, :cond_22

    iget-boolean v0, p1, Lh6/f;->b:Z

    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    const/4 v0, 0x0

    if-nez v1, :cond_27

    return-object v0

    :cond_27
    iget-object v1, p0, Lv5/k;->p:Lx6/j;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez p2, :cond_3e

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return-object v0

    :cond_3e
    iget-object p0, p0, Lv5/k;->q:Lx6/h;

    new-instance v0, Lv5/k$a;

    invoke-direct {v0, p1, p2}, Lv5/k$a;-><init>(Lh6/f;Ly5/g;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e;

    return-object p0
.end method
