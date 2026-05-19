.class public final Lw6/k$b;
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
    name = "b"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$NoReorderImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n502#1:513\n508#1:517\n508#1:532\n508#1:546\n492#1:572\n493#1,5:575\n492#1:580\n493#1,5:583\n1620#2,3:514\n1603#2,9:518\n1855#2:527\n1856#2:530\n1612#2:531\n1603#2,9:533\n1855#2:542\n1856#2:544\n1612#2:545\n1603#2,9:547\n1855#2:556\n1856#2:558\n1612#2:559\n1360#2:560\n1446#2,5:561\n1360#2:566\n1446#2,5:567\n857#2,2:573\n857#2,2:581\n857#2,2:588\n857#2,2:590\n857#2,2:592\n1620#2,3:594\n1603#2,9:597\n1855#2:606\n1856#2:608\n1612#2:609\n1#3:528\n1#3:529\n1#3:543\n1#3:557\n1#3:607\n*S KotlinDebug\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$NoReorderImplementation\n*L\n429#1:513\n432#1:517\n435#1:532\n438#1:546\n447#1:572\n447#1:575,5\n450#1:580\n450#1:583,5\n429#1:514,3\n432#1:518,9\n432#1:527\n432#1:530\n432#1:531\n435#1:533,9\n435#1:542\n435#1:544\n435#1:545\n438#1:547,9\n438#1:556\n438#1:558\n438#1:559\n441#1:560\n441#1:561,5\n444#1:566\n444#1:567,5\n447#1:573,2\n450#1:581,2\n473#1:588,2\n477#1:590,2\n492#1:592,2\n502#1:594,3\n508#1:597,9\n508#1:606\n508#1:608\n508#1:609\n432#1:529\n435#1:543\n438#1:557\n508#1:607\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic o:[Lz4/n;
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/n;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/r;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx6/i;

.field public final e:Lx6/i;

.field public final f:Lx6/i;

.field public final g:Lx6/i;

.field public final h:Lx6/i;

.field public final i:Lx6/i;

.field public final j:Lx6/i;

.field public final k:Lx6/i;

.field public final l:Lx6/i;

.field public final m:Lx6/i;

.field public final synthetic n:Lw6/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lw6/k$b;

    const/16 v1, 0xa

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "declaredFunctions"

    const-string v5, "getDeclaredFunctions()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "declaredProperties"

    const-string v5, "getDeclaredProperties()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "allTypeAliases"

    const-string v5, "getAllTypeAliases()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "allFunctions"

    const-string v5, "getAllFunctions()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "allProperties"

    const-string v5, "getAllProperties()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "typeAliasesByName"

    const-string v5, "getTypeAliasesByName()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "functionsByName"

    const-string v5, "getFunctionsByName()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "propertiesByName"

    const-string v5, "getPropertiesByName()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lw6/k$b;->o:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
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

    iput-object p1, p0, Lw6/k$b;->n:Lw6/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw6/k$b;->a:Ljava/util/List;

    iput-object p3, p0, Lw6/k$b;->b:Ljava/util/List;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->c:Lu6/l;

    invoke-interface {p2}, Lu6/l;->d()Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_27

    :cond_25
    sget-object p4, Li4/y;->a:Li4/y;

    :goto_27
    iput-object p4, p0, Lw6/k$b;->c:Ljava/util/List;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$d;

    invoke-direct {p3, p0}, Lw6/k$b$d;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->d:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$e;

    invoke-direct {p3, p0}, Lw6/k$b$e;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->e:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$c;

    invoke-direct {p3, p0}, Lw6/k$b$c;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->f:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$a;

    invoke-direct {p3, p0}, Lw6/k$b$a;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->g:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$b;

    invoke-direct {p3, p0}, Lw6/k$b$b;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->h:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$i;

    invoke-direct {p3, p0}, Lw6/k$b$i;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->i:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$g;

    invoke-direct {p3, p0}, Lw6/k$b$g;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->j:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$h;

    invoke-direct {p3, p0}, Lw6/k$b$h;-><init>(Lw6/k$b;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->k:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$f;

    invoke-direct {p3, p0, p1}, Lw6/k$b$f;-><init>(Lw6/k$b;Lw6/k;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lw6/k$b;->l:Lx6/i;

    iget-object p2, p1, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/k$b$j;

    invoke-direct {p3, p0, p1}, Lw6/k$b$j;-><init>(Lw6/k$b;Lw6/k;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/k$b;->m:Lx6/i;

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

    iget-object p0, p0, Lw6/k$b;->l:Lx6/i;

    sget-object v0, Lw6/k$b;->o:[Lz4/n;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 5
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

    iget-object p2, p0, Lw6/k$b;->l:Lx6/i;

    sget-object v0, Lw6/k$b;->o:[Lz4/n;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    invoke-static {p2, v1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_21
    iget-object p0, p0, Lw6/k$b;->j:Lx6/i;

    const/4 p2, 0x6

    aget-object p2, v0, p2

    invoke-static {p0, p2}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_36

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_36
    return-object p0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 5
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

    iget-object p2, p0, Lw6/k$b;->m:Lx6/i;

    sget-object v0, Lw6/k$b;->o:[Lz4/n;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-static {p2, v1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_21
    iget-object p0, p0, Lw6/k$b;->k:Lx6/i;

    const/4 p2, 0x7

    aget-object p2, v0, p2

    invoke-static {p0, p2}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_36

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_36
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

    iget-object p0, p0, Lw6/k$b;->m:Lx6/i;

    sget-object v0, Lw6/k$b;->o:[Lz4/n;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw6/k$b;->c:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, Lw6/k$b;->n:Lw6/k;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    iget-object v3, p0, Lw6/k;->b:Lu6/m;

    iget-object v3, v3, Lu6/m;->b:Le6/c;

    check-cast v2, Lc6/r;

    iget v2, v2, Lc6/r;->e:I

    invoke-static {v3, v2}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v1
.end method

.method public f(Lh6/f;)Li5/z0;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k$b;->i:Lx6/i;

    sget-object v0, Lw6/k$b;->o:[Lz4/n;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/z0;

    return-object p0
.end method

.method public g(Ljava/util/Collection;Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)V
    .registers 8
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

    sget-object p4, Lr6/d;->c:Lr6/d$a;

    sget p4, Lr6/d;->j:I

    invoke-virtual {p2, p4}, Lr6/d;->a(I)Z

    move-result p4

    const-string v0, "it.name"

    if-eqz p4, :cond_55

    iget-object p4, p0, Lw6/k$b;->h:Lx6/i;

    sget-object v1, Lw6/k$b;->o:[Lz4/n;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p4, v1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_31
    :goto_31
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li5/o0;

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_55
    sget-object p4, Lr6/d;->c:Lr6/d$a;

    sget p4, Lr6/d;->i:I

    invoke-virtual {p2, p4}, Lr6/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p0, p0, Lw6/k$b;->g:Lx6/i;

    sget-object p2, Lw6/k$b;->o:[Lz4/n;

    const/4 p4, 0x3

    aget-object p2, p2, p4

    invoke-static {p0, p2}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_70
    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Li5/u0;

    invoke-interface {p4}, Li5/l;->getName()Lh6/f;

    move-result-object p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_70

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_94
    return-void
.end method
