.class public final Lr5/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuiltinSpecialProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltinSpecialProperties.kt\norg/jetbrains/kotlin/load/java/BuiltinSpecialProperties\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n1490#2:47\n1520#2,3:48\n1523#2,3:58\n1238#2,4:63\n1549#2:67\n1620#2,3:68\n361#3,7:51\n442#3:61\n392#3:62\n*S KotlinDebug\n*F\n+ 1 BuiltinSpecialProperties.kt\norg/jetbrains/kotlin/load/java/BuiltinSpecialProperties\n*L\n27#1:43\n27#1:44,3\n28#1:47\n28#1:48,3\n28#1:58,3\n29#1:63,4\n34#1:67\n34#1:68,3\n28#1:51,7\n29#1:61\n29#1:62\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr5/j;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Ljava/util/List<",
            "Lh6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lr5/j;

    invoke-direct {v0}, Lr5/j;-><init>()V

    sput-object v0, Lr5/j;->a:Lr5/j;

    const/16 v0, 0x8

    new-array v0, v0, [Lh4/j;

    sget-object v1, Lf5/j$a;->k:Lh6/d;

    const-string v2, "name"

    invoke-static {v1, v2}, Lv1/o;->c(Lh6/d;Ljava/lang/String;)Lh6/c;

    move-result-object v3

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    new-instance v4, Lh4/j;

    invoke-direct {v4, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v3, "ordinal"

    invoke-static {v1, v3}, Lv1/o;->c(Lh6/d;Ljava/lang/String;)Lh6/c;

    move-result-object v1

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v1, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lf5/j$a;->C:Lh6/c;

    const-string v3, "size"

    invoke-static {v2, v3}, Lv1/o;->b(Lh6/c;Ljava/lang/String;)Lh6/c;

    move-result-object v2

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lf5/j$a;->G:Lh6/c;

    invoke-static {v2, v3}, Lv1/o;->b(Lh6/c;Ljava/lang/String;)Lh6/c;

    move-result-object v4

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    new-instance v5, Lh4/j;

    invoke-direct {v5, v4, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lf5/j$a;->f:Lh6/d;

    const-string v4, "length"

    invoke-static {v3, v4}, Lv1/o;->c(Lh6/d;Ljava/lang/String;)Lh6/c;

    move-result-object v3

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v3, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v3, "keys"

    invoke-static {v2, v3}, Lv1/o;->b(Lh6/c;Ljava/lang/String;)Lh6/c;

    move-result-object v3

    const-string v4, "keySet"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v3, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-string v3, "values"

    invoke-static {v2, v3}, Lv1/o;->b(Lh6/c;Ljava/lang/String;)Lh6/c;

    move-result-object v4

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    new-instance v5, Lh4/j;

    invoke-direct {v5, v4, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v3, "entries"

    invoke-static {v2, v3}, Lv1/o;->b(Lh6/c;Ljava/lang/String;)Lh6/c;

    move-result-object v2

    const-string v3, "entrySet"

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lh4/j;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh6/c;

    invoke-virtual {v5}, Lh6/c;->g()Lh6/f;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_be

    :cond_e1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_112

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/j;

    iget-object v4, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Lh6/f;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_108

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_108
    check-cast v5, Ljava/util/List;

    iget-object v3, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Lh6/f;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    :cond_112
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Li4/j0;->b(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Li4/v;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_127

    :cond_145
    sput-object v1, Lr5/j;->c:Ljava/util/Map;

    sget-object v0, Lr5/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/j;->d:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_170

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/c;

    invoke-virtual {v2}, Lh6/c;->g()Lh6/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    :cond_170
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/j;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
