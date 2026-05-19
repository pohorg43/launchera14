.class public final Lr5/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFakePureImplementationsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakePureImplementationsProvider.kt\norg/jetbrains/kotlin/load/java/FakePureImplementationsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,38:1\n1285#2,4:39\n11335#3:43\n11670#3,3:44\n125#4:47\n152#4,3:48\n*S KotlinDebug\n*F\n+ 1 FakePureImplementationsProvider.kt\norg/jetbrains/kotlin/load/java/FakePureImplementationsProvider\n*L\n18#1:39,4\n36#1:43\n36#1:44,3\n32#1:47\n32#1:48,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr5/q;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lr5/q;->b:Ljava/util/Map;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->w:Lh6/b;

    const-string v2, "java.util.ArrayList"

    const-string v3, "java.util.LinkedList"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr5/q;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/q;->b(Lh6/b;Ljava/util/List;)V

    sget-object v1, Lh6/i;->x:Lh6/b;

    const-string v2, "java.util.HashSet"

    const-string v3, "java.util.TreeSet"

    const-string v4, "java.util.LinkedHashSet"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr5/q;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/q;->b(Lh6/b;Ljava/util/List;)V

    sget-object v1, Lh6/i;->y:Lh6/b;

    const-string v2, "java.util.HashMap"

    const-string v3, "java.util.TreeMap"

    const-string v4, "java.util.LinkedHashMap"

    const-string v5, "java.util.concurrent.ConcurrentHashMap"

    const-string v6, "java.util.concurrent.ConcurrentSkipListMap"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr5/q;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/q;->b(Lh6/b;Ljava/util/List;)V

    new-instance v1, Lh6/c;

    const-string v2, "java.util.function.Function"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    const-string v2, "topLevel(FqName(\"java.util.function.Function\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "java.util.function.UnaryOperator"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr5/q;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/q;->b(Lh6/b;Ljava/util/List;)V

    new-instance v1, Lh6/c;

    const-string v2, "java.util.function.BiFunction"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    const-string v2, "topLevel(FqName(\"java.util.function.BiFunction\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "java.util.function.BinaryOperator"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr5/q;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/q;->b(Lh6/b;Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh6/b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/b;

    invoke-virtual {v3}, Lh6/b;->b()Lh6/c;

    move-result-object v3

    invoke-virtual {v2}, Lh6/b;->b()Lh6/c;

    move-result-object v2

    new-instance v4, Lh4/j;

    invoke-direct {v4, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_b8
    invoke-static {v1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/q;->c:Ljava/util/Map;

    return-void
.end method

.method public static final varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lh6/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    new-instance v4, Lh6/c;

    invoke-direct {v4, v3}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return-object v0
.end method

.method public static final b(Lh6/b;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            "Ljava/util/List<",
            "Lh6/b;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lr5/q;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lh6/b;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_17
    return-void
.end method
