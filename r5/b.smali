.class public abstract Lr5/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAnnotation:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractAnnotationTypeQualifierResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractAnnotationTypeQualifierResolver.kt\norg/jetbrains/kotlin/load/java/AbstractAnnotationTypeQualifierResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,213:1\n1#2:214\n1#2:220\n1#2:225\n1#2:247\n1747#3,3:215\n288#3,2:221\n1611#3:223\n1855#3:224\n1856#3:226\n1612#3:227\n1747#3,3:228\n1789#3,3:231\n1789#3,3:234\n1603#3,9:237\n1855#3:246\n1856#3:248\n1612#3:249\n73#4,2:218\n361#5,7:250\n*S KotlinDebug\n*F\n+ 1 AbstractAnnotationTypeQualifierResolver.kt\norg/jetbrains/kotlin/load/java/AbstractAnnotationTypeQualifierResolver\n*L\n40#1:220\n81#1:225\n162#1:247\n30#1:215,3\n79#1:221,2\n81#1:223\n81#1:224\n81#1:226\n81#1:227\n88#1:228,3\n124#1:231,3\n136#1:234,3\n162#1:237,9\n162#1:246\n162#1:248\n162#1:249\n40#1:218,2\n208#1:250,7\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr5/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr5/a0;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "TTAnnotation;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Lr5/c;->values()[Lr5/c;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    iget-object v5, v4, Lr5/c;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1d
    sput-object v0, Lr5/b;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lr5/a0;)V
    .registers 3

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/b;->a:Lr5/a0;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lr5/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Z)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;Z)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(Lr5/b0;Ljava/lang/Iterable;)Lr5/b0;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/b0;",
            "Ljava/lang/Iterable<",
            "+TTAnnotation;>;)",
            "Lr5/b0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "annotations"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lr5/b;->a:Lr5/a0;

    iget-boolean v2, v2, Lr5/a0;->c:Z

    if-eqz v2, :cond_12

    return-object v1

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_176

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v0, Lr5/b;->a:Lr5/a0;

    iget-boolean v7, v7, Lr5/a0;->c:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2f

    goto :goto_88

    :cond_2f
    sget-object v7, Lr5/d;->g:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v9

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr5/u;

    if-eqz v7, :cond_88

    invoke-virtual {v0, v4}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v9

    if-eqz v9, :cond_58

    sget-object v10, Lr5/d;->f:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    iget-object v10, v0, Lr5/b;->a:Lr5/a0;

    iget-object v10, v10, Lr5/a0;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr5/k0;

    goto :goto_5c

    :cond_58
    invoke-virtual {v0, v4}, Lr5/b;->k(Ljava/lang/Object;)Lr5/k0;

    move-result-object v9

    :goto_5c
    sget-object v10, Lr5/k0;->b:Lr5/k0;

    if-eq v9, v10, :cond_62

    move v10, v5

    goto :goto_63

    :cond_62
    move v10, v6

    :goto_63
    if-eqz v10, :cond_66

    goto :goto_67

    :cond_66
    move-object v9, v8

    :goto_67
    if-nez v9, :cond_6a

    goto :goto_88

    :cond_6a
    iget-object v10, v7, Lr5/u;->a:Lz5/k;

    invoke-virtual {v9}, Lr5/k0;->b()Z

    move-result v9

    invoke-static {v10, v8, v9, v5}, Lz5/k;->a(Lz5/k;Lz5/j;ZI)Lz5/k;

    move-result-object v9

    iget-object v10, v7, Lr5/u;->b:Ljava/util/Collection;

    iget-boolean v7, v7, Lr5/u;->c:Z

    const-string v11, "nullabilityQualifier"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "qualifierApplicabilityTypes"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lr5/u;

    invoke-direct {v11, v9, v10, v7}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;Z)V

    goto :goto_89

    :cond_88
    :goto_88
    move-object v11, v8

    :goto_89
    if-eqz v11, :cond_8e

    move-object v8, v11

    goto/16 :goto_16f

    :cond_8e
    iget-object v7, v0, Lr5/b;->a:Lr5/a0;

    iget-object v7, v7, Lr5/a0;->a:Lr5/d0;

    iget-boolean v7, v7, Lr5/d0;->e:Z

    if-eqz v7, :cond_97

    goto :goto_c1

    :cond_97
    sget-object v7, Lr5/d;->c:Lh6/c;

    invoke-virtual {v0, v4, v7}, Lr5/b;->d(Ljava/lang/Object;Lh6/c;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a0

    goto :goto_c1

    :cond_a0
    invoke-virtual {v0, v4}, Lr5/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Lr5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_ba

    move v11, v5

    goto :goto_bb

    :cond_ba
    move v11, v6

    :goto_bb
    if-eqz v11, :cond_a8

    goto :goto_bf

    :cond_be
    move-object v10, v8

    :goto_bf
    if-nez v10, :cond_c4

    :goto_c1
    move-object v7, v8

    goto/16 :goto_13d

    :cond_c4
    invoke-virtual {v0, v7, v5}, Lr5/b;->a(Ljava/lang/Object;Z)Ljava/lang/Iterable;

    move-result-object v7

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d1
    :goto_d1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ed

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v12, Lr5/b;->c:Ljava/util/Map;

    check-cast v12, Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr5/c;

    if-eqz v11, :cond_d1

    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_ed
    new-instance v7, Lh4/j;

    sget-object v11, Lr5/c;->e:Lr5/c;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13a

    invoke-static {}, Lr5/c;->values()[Lr5/c;

    move-result-object v11

    invoke-static {v11}, Li4/k;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    sget-object v12, Lr5/c;->f:Lr5/c;

    const-string v13, "<this>"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v14

    invoke-static {v14}, Li4/j0;->b(I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v14, v6

    :cond_118
    :goto_118
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_136

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_12e

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    move v14, v5

    move/from16 v16, v6

    goto :goto_130

    :cond_12e
    move/from16 v16, v5

    :goto_130
    if-eqz v16, :cond_118

    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_118

    :cond_136
    invoke-static {v13, v9}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    :cond_13a
    invoke-direct {v7, v10, v9}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13d
    if-nez v7, :cond_140

    goto :goto_16f

    :cond_140
    iget-object v9, v7, Lh4/j;->a:Ljava/lang/Object;

    iget-object v7, v7, Lh4/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-virtual {v0, v4}, Lr5/b;->l(Ljava/lang/Object;)Lr5/k0;

    move-result-object v4

    if-nez v4, :cond_150

    invoke-virtual {v0, v9}, Lr5/b;->k(Ljava/lang/Object;)Lr5/k0;

    move-result-object v4

    :cond_150
    invoke-virtual {v4}, Lr5/k0;->a()Z

    move-result v10

    if-eqz v10, :cond_157

    goto :goto_16f

    :cond_157
    sget-object v10, Lr5/a;->a:Lr5/a;

    invoke-virtual {v0, v9, v10}, Lr5/b;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lz5/k;

    move-result-object v9

    if-nez v9, :cond_160

    goto :goto_16f

    :cond_160
    new-instance v10, Lr5/u;

    invoke-virtual {v4}, Lr5/k0;->b()Z

    move-result v4

    invoke-static {v9, v8, v4, v5}, Lz5/k;->a(Lz5/k;Lz5/j;ZI)Lz5/k;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v10, v4, v7, v6, v5}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;ZI)V

    move-object v8, v10

    :goto_16f
    if-eqz v8, :cond_1b

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_176
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17d

    return-object v1

    :cond_17d
    if-eqz v1, :cond_189

    iget-object v0, v1, Lr5/b0;->a:Ljava/util/EnumMap;

    if-eqz v0, :cond_189

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    goto :goto_190

    :cond_189
    new-instance v3, Ljava/util/EnumMap;

    const-class v0, Lr5/c;

    invoke-direct {v3, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :goto_190
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_194
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr5/u;

    iget-object v4, v2, Lr5/u;->b:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_194

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr5/c;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v5

    goto :goto_1a6

    :cond_1b7
    if-nez v6, :cond_1bb

    move-object v0, v1

    goto :goto_1c0

    :cond_1bb
    new-instance v0, Lr5/b0;

    invoke-direct {v0, v3}, Lr5/b0;-><init>(Ljava/util/EnumMap;)V

    :goto_1c0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lz5/k;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTAnnotation;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lz5/k;"
        }
    .end annotation

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr5/b;->j(Ljava/lang/Object;Z)Lz5/k;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    invoke-virtual {p0, p1}, Lr5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    invoke-virtual {p0, p1}, Lr5/b;->k(Ljava/lang/Object;)Lr5/k0;

    move-result-object p1

    invoke-virtual {p1}, Lr5/k0;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v1

    :cond_24
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lr5/b;->j(Ljava/lang/Object;Z)Lz5/k;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p1}, Lr5/k0;->b()Z

    move-result p1

    const/4 p2, 0x1

    invoke-static {p0, v1, p1, p2}, Lz5/k;->a(Lz5/k;Lz5/j;ZI)Lz5/k;

    move-result-object v1

    :cond_3d
    return-object v1
.end method

.method public final d(Ljava/lang/Object;Lh6/c;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;",
            "Lh6/c;",
            ")TTAnnotation;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr5/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return-object v0
.end method

.method public abstract e(Ljava/lang/Object;)Lh6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Lh6/c;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Ljava/lang/Iterable<",
            "TTAnnotation;>;"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Object;Lh6/c;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;",
            "Lh6/c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr5/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2c

    :cond_13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    return v1
.end method

.method public final i(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)Z"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf5/j$a;->u:Lh6/c;

    invoke-virtual {p0, p1, v0}, Lr5/b;->d(Ljava/lang/Object;Lh6/c;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0, p1, v0}, Lr5/b;->a(Ljava/lang/Object;Z)Ljava/lang/Iterable;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_21

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_3c

    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lj5/n;->A:Lj5/n;

    const-string v1, "TYPE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :cond_3c
    :goto_3c
    return v0
.end method

.method public final j(Ljava/lang/Object;Z)Lz5/k;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;Z)",
            "Lz5/k;"
        }
    .end annotation

    sget-object v0, Lz5/j;->a:Lz5/j;

    sget-object v1, Lz5/j;->c:Lz5/j;

    sget-object v2, Lz5/j;->b:Lz5/j;

    invoke-virtual {p0, p1}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return-object v4

    :cond_e
    iget-object v5, p0, Lr5/b;->a:Lr5/a0;

    iget-object v5, v5, Lr5/a0;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr5/k0;

    invoke-virtual {v5}, Lr5/k0;->a()Z

    move-result v6

    if-eqz v6, :cond_1f

    return-object v4

    :cond_1f
    sget-object v6, Lr5/g0;->g:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2b

    goto/16 :goto_c1

    :cond_2b
    sget-object v6, Lr5/g0;->j:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    goto/16 :goto_b7

    :cond_35
    sget-object v6, Lr5/g0;->a:Lh6/c;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    move v6, v8

    goto :goto_45

    :cond_3f
    sget-object v6, Lr5/g0;->d:Lh6/c;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    :goto_45
    if-eqz v6, :cond_49

    goto/16 :goto_c1

    :cond_49
    sget-object v6, Lr5/g0;->b:Lh6/c;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    move v6, v8

    goto :goto_59

    :cond_53
    sget-object v6, Lr5/g0;->e:Lh6/c;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    :goto_59
    if-eqz v6, :cond_5d

    goto/16 :goto_c2

    :cond_5d
    sget-object v6, Lr5/g0;->h:Lh6/c;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-virtual {p0, p1, v7}, Lr5/b;->a(Ljava/lang/Object;Z)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Li4/v;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b7

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_d2

    goto :goto_9c

    :sswitch_79
    const-string p1, "ALWAYS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9c

    goto :goto_b7

    :sswitch_82
    const-string p1, "UNKNOWN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto :goto_9c

    :sswitch_8b
    const-string p1, "NEVER"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto :goto_9c

    :sswitch_94
    const-string p1, "MAYBE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    :cond_9c
    :goto_9c
    return-object v4

    :cond_9d
    sget-object p0, Lr5/g0;->k:Lh6/c;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a6

    goto :goto_c1

    :cond_a6
    sget-object p0, Lr5/g0;->l:Lh6/c;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_af

    goto :goto_b7

    :cond_af
    sget-object p0, Lr5/g0;->n:Lh6/c;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b9

    :cond_b7
    :goto_b7
    move-object v0, v1

    goto :goto_c2

    :cond_b9
    sget-object p0, Lr5/g0;->m:Lh6/c;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d1

    :cond_c1
    :goto_c1
    move-object v0, v2

    :cond_c2
    :goto_c2
    new-instance p0, Lz5/k;

    invoke-virtual {v5}, Lr5/k0;->b()Z

    move-result p1

    if-nez p1, :cond_cc

    if-eqz p2, :cond_cd

    :cond_cc
    move v7, v8

    :cond_cd
    invoke-direct {p0, v0, v7}, Lz5/k;-><init>(Lz5/j;Z)V

    return-object p0

    :cond_d1
    return-object v4

    :sswitch_data_d2
    .sparse-switch
        0x45bf448 -> :sswitch_94
        0x46bd26c -> :sswitch_8b
        0x19d1382a -> :sswitch_82
        0x7342860f -> :sswitch_79
    .end sparse-switch
.end method

.method public final k(Ljava/lang/Object;)Lr5/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Lr5/k0;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr5/b;->l(Ljava/lang/Object;)Lr5/k0;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    iget-object p0, p0, Lr5/b;->a:Lr5/a0;

    iget-object p0, p0, Lr5/a0;->a:Lr5/d0;

    iget-object p0, p0, Lr5/d0;->a:Lr5/k0;

    return-object p0
.end method

.method public final l(Ljava/lang/Object;)Lr5/k0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Lr5/k0;"
        }
    .end annotation

    iget-object v0, p0, Lr5/b;->a:Lr5/a0;

    iget-object v0, v0, Lr5/a0;->a:Lr5/d0;

    iget-object v0, v0, Lr5/d0;->c:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/k0;

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    sget-object v0, Lr5/d;->d:Lh6/c;

    invoke-virtual {p0, p1, v0}, Lr5/b;->d(Ljava/lang/Object;Lh6/c;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lr5/b;->a(Ljava/lang/Object;Z)Ljava/lang/Iterable;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-static {p1}, Li4/v;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2c

    goto :goto_6d

    :cond_2c
    iget-object p0, p0, Lr5/b;->a:Lr5/a0;

    iget-object p0, p0, Lr5/a0;->a:Lr5/d0;

    iget-object p0, p0, Lr5/d0;->b:Lr5/k0;

    if-nez p0, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, -0x7f610e2e

    if-eq p0, v1, :cond_60

    const v1, -0x6d97ad37

    if-eq p0, v1, :cond_54

    const v1, 0x288a86

    if-eq p0, v1, :cond_48

    goto :goto_6d

    :cond_48
    const-string p0, "WARN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_6d

    :cond_51
    sget-object v0, Lr5/k0;->c:Lr5/k0;

    goto :goto_6d

    :cond_54
    const-string p0, "STRICT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_6d

    :cond_5d
    sget-object v0, Lr5/k0;->d:Lr5/k0;

    goto :goto_6d

    :cond_60
    const-string p0, "IGNORE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto :goto_6d

    :cond_69
    sget-object v0, Lr5/k0;->b:Lr5/k0;

    goto :goto_6d

    :cond_6c
    move-object v0, p0

    :cond_6d
    :goto_6d
    return-object v0
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)TTAnnotation;"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr5/b;->a:Lr5/a0;

    iget-object v0, v0, Lr5/a0;->a:Lr5/d0;

    iget-boolean v0, v0, Lr5/d0;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    sget-object v0, Lr5/d;->h:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v2

    invoke-static {v0, v2}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lr5/d;->b:Lh6/c;

    invoke-virtual {p0, p1, v0}, Lr5/b;->h(Ljava/lang/Object;Lh6/c;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_5f

    :cond_24
    sget-object v0, Lr5/d;->a:Lh6/c;

    invoke-virtual {p0, p1, v0}, Lr5/b;->h(Ljava/lang/Object;Lh6/c;)Z

    move-result v0

    if-nez v0, :cond_2d

    return-object v1

    :cond_2d
    iget-object v0, p0, Lr5/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lr5/b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5e

    invoke-virtual {p0, p1}, Lr5/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lr5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_41

    goto :goto_53

    :cond_52
    move-object v3, v1

    :goto_53
    if-nez v3, :cond_56

    return-object v1

    :cond_56
    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v3, p0

    :cond_5e
    :goto_5e
    return-object v3

    :cond_5f
    :goto_5f
    return-object p1
.end method
