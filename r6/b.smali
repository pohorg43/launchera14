.class public final Lr6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr6/i;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChainedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChainedMemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/ChainedMemberScope\n+ 2 scopeUtils.kt\norg/jetbrains/kotlin/util/collectionUtils/ScopeUtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,91:1\n92#2,14:92\n47#2,11:106\n47#2,11:117\n47#2,11:128\n10664#3,5:139\n10664#3,5:144\n13579#3,2:149\n*S KotlinDebug\n*F\n+ 1 ChainedMemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/ChainedMemberScope\n*L\n35#1:92,14\n38#1:106,11\n41#1:117,11\n44#1:128,11\n46#1:139,5\n47#1:144,5\n51#1:149,2\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Lr6/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lr6/b;->c:[Lr6/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    invoke-interface {v3}, Lr6/i;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    return-object v0
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

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    array-length v0, p0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_29

    const/4 v0, 0x0

    array-length v2, p0

    :goto_15
    if-ge v1, v2, :cond_24

    aget-object v3, p0, v1

    invoke-interface {v3, p1, p2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    if-nez v0, :cond_32

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_32

    :cond_29
    aget-object p0, p0, v1

    invoke-interface {p0, p1, p2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_32

    :cond_30
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_32
    :goto_32
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

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    array-length v0, p0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_29

    const/4 v0, 0x0

    array-length v2, p0

    :goto_15
    if-ge v1, v2, :cond_24

    aget-object v3, p0, v1

    invoke-interface {v3, p1, p2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    if-nez v0, :cond_32

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_32

    :cond_29
    aget-object p0, p0, v1

    invoke-interface {p0, p1, p2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_32

    :cond_30
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_32
    :goto_32
    return-object v0
.end method

.method public d()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    invoke-interface {v3}, Lr6/i;->d()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    return-object v0
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

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    array-length v0, p0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_29

    const/4 v0, 0x0

    array-length v2, p0

    :goto_15
    if-ge v1, v2, :cond_24

    aget-object v3, p0, v1

    invoke-interface {v3, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lh7/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    if-nez v0, :cond_32

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_32

    :cond_29
    aget-object p0, p0, v1

    invoke-interface {p0, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_32

    :cond_30
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_32
    :goto_32
    return-object v0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_2f

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v3

    if-eqz v3, :cond_2c

    instance-of v4, v3, Li5/i;

    if-eqz v4, :cond_2a

    move-object v4, v3

    check-cast v4, Li5/i;

    invoke-interface {v4}, Li5/c0;->f0()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-nez v1, :cond_2c

    move-object v1, v3

    goto :goto_2c

    :cond_2a
    move-object v1, v3

    goto :goto_2f

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/b;->c:[Lr6/i;

    invoke-static {p0}, Li4/k;->m([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lr6/k;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lr6/b;->b:Ljava/lang/String;

    return-object p0
.end method
