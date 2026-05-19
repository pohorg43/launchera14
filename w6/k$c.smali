.class public final Lw6/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw6/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$OptimizedImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n269#1:513\n269#1:528\n269#1:543\n287#1,17:581\n305#1,2:604\n296#1:606\n303#1:607\n305#1,2:613\n287#1,17:620\n305#1,2:642\n296#1:644\n370#1,11:645\n370#1,11:656\n1477#2:514\n1502#2,3:515\n1505#2,3:525\n1477#2:529\n1502#2,3:530\n1505#2,3:540\n1477#2:544\n1502#2,3:545\n1505#2,3:555\n1238#2,2:560\n1549#2:562\n1620#2,3:563\n1241#2:566\n1477#2:567\n1502#2,3:568\n1505#2,3:578\n1611#2:598\n1855#2:599\n1856#2:602\n1612#2:603\n1611#2:608\n1855#2:609\n1856#2:611\n1612#2:612\n1611#2:615\n1855#2:616\n1856#2:618\n1612#2:619\n1611#2:637\n1855#2:638\n1856#2:640\n1612#2:641\n361#3,7:518\n361#3,7:533\n361#3,7:548\n442#3:558\n392#3:559\n361#3,7:571\n1#4:600\n1#4:601\n1#4:610\n1#4:617\n1#4:639\n*S KotlinDebug\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$OptimizedImplementation\n*L\n233#1:513\n235#1:528\n239#1:543\n272#1:581,17\n272#1:604,2\n272#1:606\n287#1:607\n287#1:613,2\n310#1:620,17\n310#1:642,2\n310#1:644\n348#1:645,11\n356#1:656,11\n233#1:514\n233#1:515,3\n233#1:525,3\n235#1:529\n235#1:530,3\n235#1:540,3\n239#1:544\n239#1:545,3\n239#1:555,3\n244#1:560,2\n246#1:562\n246#1:563,3\n244#1:566\n269#1:567\n269#1:568,3\n269#1:578,3\n272#1:598\n272#1:599\n272#1:602\n272#1:603\n287#1:608\n287#1:609\n287#1:611\n287#1:612\n303#1:615\n303#1:616\n303#1:618\n303#1:619\n310#1:637\n310#1:638\n310#1:640\n310#1:641\n233#1:518,7\n235#1:533,7\n239#1:548,7\n244#1:558\n244#1:559\n269#1:571,7\n272#1:601\n287#1:610\n303#1:617\n310#1:639\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lz4/n;
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
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Lx6/g;
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

.field public final e:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/f;",
            "Li5/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lx6/i;

.field public final h:Lx6/i;

.field public final synthetic i:Lw6/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lw6/k$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lw6/k$c;->j:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc6/i;",
            ">;",
            "Ljava/util/List<",
            "Lc6/n;",
            ">;",
            "Ljava/util/List<",
            "Lc6/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "functionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw6/k$c;->i:Lw6/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li6/p;

    iget-object v3, p1, Lw6/k;->b:Lu6/m;

    iget-object v3, v3, Lu6/m;->b:Le6/c;

    check-cast v2, Lc6/i;

    iget v2, v2, Lc6/i;->f:I

    invoke-static {v3, v2}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4a
    invoke-virtual {p0, v0}, Lw6/k$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->a:Ljava/util/Map;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li6/p;

    iget-object v2, p1, Lw6/k;->b:Lu6/m;

    iget-object v2, v2, Lu6/m;->b:Le6/c;

    check-cast v1, Lc6/n;

    iget v1, v1, Lc6/n;->f:I

    invoke-static {v2, v1}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_82

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_88
    invoke-virtual {p0, p2}, Lw6/k$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->b:Ljava/util/Map;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p1, p1, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->c:Lu6/l;

    invoke-interface {p1}, Lu6/l;->d()Z

    move-result p1

    if-eqz p1, :cond_d9

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Li6/p;

    iget-object v1, p1, Lw6/k;->b:Lu6/m;

    iget-object v1, v1, Lu6/m;->b:Le6/c;

    check-cast v0, Lc6/r;

    iget v0, v0, Lc6/r;->e:I

    invoke-static {v1, v0}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_ce

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ce
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    :cond_d4
    invoke-virtual {p0, p2}, Lw6/k$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_de

    :cond_d9
    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p1, Li4/z;->a:Li4/z;

    :goto_de
    iput-object p1, p0, Lw6/k$c;->c:Ljava/util/Map;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p1, p1, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/k$c$c;

    invoke-direct {p2, p0}, Lw6/k$c$c;-><init>(Lw6/k$c;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->d:Lx6/g;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p1, p1, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/k$c$d;

    invoke-direct {p2, p0}, Lw6/k$c$d;-><init>(Lw6/k$c;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->e:Lx6/g;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p1, p1, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/k$c$e;

    invoke-direct {p2, p0}, Lw6/k$c$e;-><init>(Lw6/k$c;)V

    invoke-interface {p1, p2}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->f:Lx6/h;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$c$b;

    invoke-direct {p3, p0, p1}, Lw6/k$c$b;-><init>(Lw6/k$c;Lw6/k;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->g:Lx6/i;

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$c$f;

    invoke-direct {p3, p0, p1}, Lw6/k$c$f;-><init>(Lw6/k$c;Lw6/k;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/k$c;->h:Lx6/i;

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

    iget-object p0, p0, Lw6/k$c;->g:Lx6/i;

    sget-object v0, Lw6/k$c;->j:[Lz4/n;

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

    invoke-virtual {p0}, Lw6/k$c;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    iget-object p0, p0, Lw6/k$c;->d:Lx6/g;

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

    invoke-virtual {p0}, Lw6/k$c;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    iget-object p0, p0, Lw6/k$c;->e:Lx6/g;

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

    iget-object p0, p0, Lw6/k$c;->h:Lx6/i;

    sget-object v0, Lw6/k$c;->j:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/k$c;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public f(Lh6/f;)Li5/z0;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k$c;->f:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/z0;

    return-object p0
.end method

.method public g(Ljava/util/Collection;Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lq5/b;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kindFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->j:I

    invoke-virtual {p2, v0}, Lr6/d;->a(I)Z

    move-result v0

    const-string v1, "INSTANCE"

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lw6/k$c;->d()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh6/f;

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {p0, v3, p4}, Lw6/k$c;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2d

    :cond_4d
    sget-object v0, Lk6/l;->a:Lk6/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_58
    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->i:I

    invoke-virtual {p2, v0}, Lr6/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_9a

    invoke-virtual {p0}, Lw6/k$c;->a()Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6f
    :goto_6f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/f;

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {p0, v2, p4}, Lw6/k$c;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6f

    :cond_8f
    sget-object p0, Lk6/l;->a:Lk6/l;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_9a
    return-void
.end method

.method public final h(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li6/a;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lh6/f;",
            "[B>;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Li4/j0;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/a;

    invoke-interface {v4}, Li6/p;->getSerializedSize()I

    move-result v5

    invoke-static {v5}, Li6/e;->g(I)I

    move-result v6

    add-int/2addr v6, v5

    const/16 v7, 0x1000

    if-le v6, v7, :cond_59

    move v6, v7

    :cond_59
    invoke-static {v2, v6}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v6

    invoke-virtual {v6, v5}, Li6/e;->y(I)V

    invoke-interface {v4, v6}, Li6/p;->b(Li6/e;)V

    invoke-virtual {v6}, Li6/e;->j()V

    sget-object v4, Lh4/z;->a:Lh4/z;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_6c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_74
    return-object p0
.end method
