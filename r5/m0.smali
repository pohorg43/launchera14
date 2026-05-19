.class public Lr5/m0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/m0$c;,
        Lr5/m0$a;,
        Lr5/m0$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpecialGenericSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialGenericSignatures.kt\norg/jetbrains/kotlin/load/java/SpecialGenericSignatures\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,146:1\n1549#2:147\n1620#2,3:148\n1549#2:151\n1620#2,3:152\n1549#2:155\n1620#2,3:156\n1238#2,4:162\n1549#2:166\n1620#2,3:167\n1549#2:170\n1620#2,3:171\n1238#2,4:177\n1549#2:181\n1620#2,3:182\n1549#2:185\n1620#2,3:186\n1208#2,2:189\n1238#2,4:191\n13#3:159\n13#3:174\n457#4:160\n403#4:161\n457#4:175\n403#4:176\n*S KotlinDebug\n*F\n+ 1 SpecialGenericSignatures.kt\norg/jetbrains/kotlin/load/java/SpecialGenericSignatures\n*L\n54#1:147\n54#1:148,3\n56#1:151\n56#1:152,3\n57#1:155\n57#1:156,3\n95#1:162,4\n101#1:166\n101#1:167,3\n102#1:170\n102#1:171,3\n126#1:177,4\n128#1:181\n128#1:182,3\n132#1:185\n132#1:186,3\n133#1:189,2\n133#1:191,4\n60#1:159\n111#1:174\n95#1:160\n95#1:161\n126#1:175\n126#1:176\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr5/m0$a;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr5/m0$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr5/m0$a$a;",
            "Lr5/m0$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr5/m0$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lr5/m0$a$a;

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr5/m0$a$a;",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    new-instance v0, Lr5/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/m0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lr5/m0;->a:Lr5/m0$a;

    const-string v0, "containsAll"

    const-string v1, "removeAll"

    const-string v2, "retainAll"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "BOOLEAN.desc"

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lr5/m0;->a:Lr5/m0$a;

    sget-object v6, Lp6/d;->e:Lp6/d;

    invoke-virtual {v6}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "java/util/Collection"

    const-string v7, "Ljava/util/Collection;"

    invoke-static {v5, v4, v3, v7, v6}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4a
    sput-object v1, Lr5/m0;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/m0$a$a;

    iget-object v3, v3, Lr5/m0$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_6b
    sput-object v0, Lr5/m0;->c:Ljava/util/List;

    sget-object v0, Lr5/m0;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/m0$a$a;

    iget-object v3, v3, Lr5/m0$a$a;->a:Lh6/f;

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_92
    sget-object v0, La6/a0;->a:La6/a0;

    new-array v1, v2, [Lh4/j;

    sget-object v3, Lr5/m0;->a:Lr5/m0$a;

    const-string v5, "Collection"

    invoke-virtual {v0, v5}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lp6/d;->e:Lp6/d;

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "contains"

    const-string v10, "Ljava/lang/Object;"

    invoke-static {v3, v6, v9, v10, v8}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v6

    sget-object v8, Lr5/m0$c;->d:Lr5/m0$c;

    new-instance v9, Lh4/j;

    invoke-direct {v9, v6, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v9, v1, v6

    invoke-virtual {v0, v5}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "remove"

    invoke-static {v3, v5, v11, v10, v9}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v5

    new-instance v9, Lh4/j;

    invoke-direct {v9, v5, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v9, v1, v5

    const-string v9, "Map"

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "containsKey"

    invoke-static {v3, v12, v14, v10, v13}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v12

    new-instance v13, Lh4/j;

    invoke-direct {v13, v12, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v13, v1, v12

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "containsValue"

    invoke-static {v3, v13, v15, v10, v14}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v13

    new-instance v14, Lh4/j;

    invoke-direct {v14, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x3

    aput-object v14, v1, v13

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Ljava/lang/Object;Ljava/lang/Object;"

    invoke-static {v3, v14, v11, v4, v7}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v7

    new-instance v14, Lh4/j;

    invoke-direct {v14, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x4

    aput-object v14, v1, v7

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "getOrDefault"

    invoke-static {v3, v8, v14, v4, v10}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v4

    sget-object v8, Lr5/m0$c;->e:Lr5/m0$c;

    new-instance v14, Lh4/j;

    invoke-direct {v14, v4, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v14, v1, v4

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "get"

    invoke-static {v3, v8, v14, v10, v10}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v8

    sget-object v15, Lr5/m0$c;->b:Lr5/m0$c;

    new-instance v4, Lh4/j;

    invoke-direct {v4, v8, v15}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x6

    aput-object v4, v1, v8

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11, v10, v10}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v4

    new-instance v9, Lh4/j;

    invoke-direct {v9, v4, v15}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x7

    aput-object v9, v1, v4

    const-string v9, "List"

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lp6/d;->i:Lp6/d;

    invoke-virtual/range {v16 .. v16}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v4

    const-string v8, "INT.desc"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "indexOf"

    invoke-static {v3, v15, v7, v10, v4}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v4

    sget-object v7, Lr5/m0$c;->c:Lr5/m0$c;

    new-instance v15, Lh4/j;

    invoke-direct {v15, v4, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x8

    aput-object v15, v1, v4

    const/16 v15, 0x9

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "lastIndexOf"

    invoke-static {v3, v0, v13, v10, v9}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v0

    new-instance v3, Lh4/j;

    invoke-direct {v3, v0, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v15

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/m0;->d:Ljava/util/Map;

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

    :goto_1ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr5/m0$a$a;

    iget-object v7, v7, Lr5/m0$a$a;->b:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ae

    :cond_1ca
    sput-object v1, Lr5/m0;->e:Ljava/util/Map;

    sget-object v0, Lr5/m0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lr5/m0;->b:Ljava/util/List;

    invoke-static {v0, v1}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr5/m0$a$a;

    iget-object v7, v7, Lr5/m0$a$a;->a:Lh6/f;

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e5

    :cond_1f7
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lr5/m0;->f:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/m0$a$a;

    iget-object v3, v3, Lr5/m0$a$a;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20a

    :cond_21c
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/m0;->g:Ljava/util/Set;

    sget-object v0, Lr5/m0;->a:Lr5/m0$a;

    sget-object v1, Lp6/d;->i:Lp6/d;

    invoke-virtual {v1}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "java/util/List"

    const-string v9, "removeAt"

    invoke-static {v0, v7, v9, v3, v10}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v3

    sput-object v3, Lr5/m0;->h:Lr5/m0$a$a;

    sget-object v7, La6/a0;->a:La6/a0;

    new-array v4, v4, [Lh4/j;

    const-string v9, "Number"

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lp6/d;->g:Lp6/d;

    invoke-virtual {v13}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v13

    const-string v15, "BYTE.desc"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "toByte"

    const-string v2, ""

    invoke-static {v0, v10, v15, v2, v13}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v10

    const-string v13, "byteValue"

    invoke-static {v13}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v13

    new-instance v15, Lh4/j;

    invoke-direct {v15, v10, v13}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v4, v6

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lp6/d;->h:Lp6/d;

    invoke-virtual {v10}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v10

    const-string v13, "SHORT.desc"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "toShort"

    invoke-static {v0, v6, v13, v2, v10}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v6

    const-string v10, "shortValue"

    invoke-static {v10}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v10

    new-instance v13, Lh4/j;

    invoke-direct {v13, v6, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v4, v5

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "toInt"

    invoke-static {v0, v5, v10, v2, v6}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v5

    const-string v6, "intValue"

    invoke-static {v6}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    new-instance v10, Lh4/j;

    invoke-direct {v10, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v4, v12

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lp6/d;->k:Lp6/d;

    invoke-virtual {v6}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    const-string v10, "LONG.desc"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "toLong"

    invoke-static {v0, v5, v10, v2, v6}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v5

    const-string v6, "longValue"

    invoke-static {v6}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    new-instance v10, Lh4/j;

    invoke-direct {v10, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v10, v4, v5

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lp6/d;->j:Lp6/d;

    invoke-virtual {v6}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    const-string v10, "FLOAT.desc"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "toFloat"

    invoke-static {v0, v5, v10, v2, v6}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v5

    const-string v6, "floatValue"

    invoke-static {v6}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    new-instance v10, Lh4/j;

    invoke-direct {v10, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v10, v4, v5

    invoke-virtual {v7, v9}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lp6/d;->l:Lp6/d;

    invoke-virtual {v6}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    const-string v9, "DOUBLE.desc"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "toDouble"

    invoke-static {v0, v5, v9, v2, v6}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v2

    const-string v5, "doubleValue"

    invoke-static {v5}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    new-instance v6, Lh4/j;

    invoke-direct {v6, v2, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v6, v4, v2

    invoke-static {v11}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    new-instance v5, Lh4/j;

    invoke-direct {v5, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x6

    aput-object v5, v4, v2

    const-string v2, "CharSequence"

    invoke-virtual {v7, v2}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lp6/d;->f:Lp6/d;

    invoke-virtual {v3}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CHAR.desc"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v14, v1, v3}, Lr5/m0$a;->a(Lr5/m0$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr5/m0$a$a;

    move-result-object v0

    const-string v1, "charAt"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x7

    aput-object v2, v4, v0

    invoke-static {v4}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/m0;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Li4/j0;->b(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_377

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/m0$a$a;

    iget-object v3, v3, Lr5/m0$a$a;->b:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35b

    :cond_377
    sput-object v1, Lr5/m0;->j:Ljava/util/Map;

    sget-object v0, Lr5/m0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr5/m0$a$a;

    iget-object v2, v2, Lr5/m0$a$a;->a:Lh6/f;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38e

    :cond_3a0
    sput-object v1, Lr5/m0;->k:Ljava/util/List;

    sget-object v0, Lr5/m0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lh4/j;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr5/m0$a$a;

    iget-object v4, v4, Lr5/m0$a$a;->a:Lh6/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3b7

    :cond_3d8
    const/16 v2, 0xa

    invoke-static {v1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Li4/j0;->b(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_3e7

    move v0, v2

    :cond_3e7
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_408

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v3, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Lh6/f;

    iget-object v1, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Lh6/f;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f0

    :cond_408
    sput-object v2, Lr5/m0;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
