.class public final Lv5/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr6/i;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmPackageScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/JvmPackageScope\n+ 2 scopeUtils.kt\norg/jetbrains/kotlin/util/collectionUtils/ScopeUtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,109:1\n92#2,14:110\n60#2,5:124\n60#2,5:129\n60#2,5:134\n10664#3,5:139\n10664#3,5:144\n*S KotlinDebug\n*F\n+ 1 JvmPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/JvmPackageScope\n*L\n58#1:110,14\n63#1:124,5\n68#1:129,5\n74#1:134,5\n76#1:139,5\n80#1:144,5\n*E\n"
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
.field public final b:Lu5/g;

.field public final c:Lv5/j;

.field public final d:Lv5/k;

.field public final e:Lx6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lv5/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lv5/d;->f:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu5/g;Ly5/u;Lv5/j;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5/d;->b:Lu5/g;

    iput-object p3, p0, Lv5/d;->c:Lv5/j;

    new-instance v0, Lv5/k;

    invoke-direct {v0, p1, p2, p3}, Lv5/k;-><init>(Lu5/g;Ly5/u;Lv5/j;)V

    iput-object v0, p0, Lv5/d;->d:Lv5/k;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lv5/d$a;

    invoke-direct {p2, p0}, Lv5/d$a;-><init>(Lv5/d;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/d;->e:Lx6/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    invoke-interface {v4}, Lr6/i;->a()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    iget-object p0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/l;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 7
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

    invoke-virtual {p0, p1, p2}, Lv5/d;->i(Lh6/f;Lq5/b;)V

    iget-object v0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object p0

    invoke-interface {v0, p1, p2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    if-nez v0, :cond_2c

    sget-object v0, Li4/a0;->a:Li4/a0;

    :cond_2c
    return-object v0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 7
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

    invoke-virtual {p0, p1, p2}, Lv5/d;->i(Lh6/f;Lq5/b;)V

    iget-object v0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object p0

    invoke-interface {v0, p1, p2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    if-nez v0, :cond_2c

    sget-object v0, Li4/a0;->a:Li4/a0;

    :cond_2c
    return-object v0
.end method

.method public d()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    invoke-interface {v4}, Lr6/i;->d()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    iget-object p0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/l;->d()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
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
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object p0

    invoke-interface {v0, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_25
    if-nez v0, :cond_29

    sget-object v0, Li4/a0;->a:Li4/a0;

    :cond_29
    return-object v0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lv5/d;->i(Lh6/f;Lq5/b;)V

    iget-object v2, p0, Lv5/d;->d:Lv5/k;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Lv5/k;->w(Lh6/f;Ly5/g;)Li5/e;

    move-result-object v1

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object p0

    const/4 v1, 0x0

    array-length v2, p0

    :goto_26
    if-ge v1, v2, :cond_46

    aget-object v3, p0, v1

    invoke-interface {v3, p1, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v3

    if-eqz v3, :cond_43

    instance-of v4, v3, Li5/i;

    if-eqz v4, :cond_41

    move-object v4, v3

    check-cast v4, Li5/i;

    invoke-interface {v4}, Li5/c0;->f0()Z

    move-result v4

    if-eqz v4, :cond_41

    if-nez v0, :cond_43

    move-object v0, v3

    goto :goto_43

    :cond_41
    move-object v0, v3

    goto :goto_46

    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_46
    :goto_46
    return-object v0
.end method

.method public g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv5/d;->h()[Lr6/i;

    move-result-object v0

    invoke-static {v0}, Li4/k;->m([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lr6/k;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lv5/d;->d:Lv5/k;

    invoke-virtual {p0}, Lv5/l;->g()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0
.end method

.method public final h()[Lr6/i;
    .registers 3

    iget-object p0, p0, Lv5/d;->e:Lx6/i;

    sget-object v0, Lv5/d;->f:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lr6/i;

    return-object p0
.end method

.method public i(Lh6/f;Lq5/b;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/d;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->n:Lq5/c;

    iget-object p0, p0, Lv5/d;->c:Lv5/j;

    invoke-static {v0, p2, p0, p1}, Lp5/a;->b(Lq5/c;Lq5/b;Li5/h0;Lh6/f;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "scope for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv5/d;->c:Lv5/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
