.class public final Lv6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf5/a;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuiltInsLoaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInsLoaderImpl.kt\norg/jetbrains/kotlin/serialization/deserialization/builtins/BuiltInsLoaderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1549#2:94\n1620#2,3:95\n*S KotlinDebug\n*F\n+ 1 BuiltInsLoaderImpl.kt\norg/jetbrains/kotlin/serialization/deserialization/builtins/BuiltInsLoaderImpl\n*L\n57#1:94\n57#1:95,3\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lv6/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv6/d;

    invoke-direct {v0}, Lv6/d;-><init>()V

    iput-object v0, p0, Lv6/b;->b:Lv6/d;

    return-void
.end method


# virtual methods
.method public a(Lx6/m;Li5/e0;Ljava/lang/Iterable;Lk5/c;Lk5/a;Z)Li5/i0;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Li5/e0;",
            "Ljava/lang/Iterable<",
            "+",
            "Lk5/b;",
            ">;",
            "Lk5/c;",
            "Lk5/a;",
            "Z)",
            "Li5/i0;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "builtInsModule"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "classDescriptorFactories"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "platformDependentDeclarationFilter"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "additionalClassPartsProvider"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lf5/j;->p:Ljava/util/Set;

    new-instance v7, Lv6/b$a;

    move-object/from16 v8, p0

    iget-object v8, v8, Lv6/b;->b:Lv6/d;

    invoke-direct {v7, v8}, Lv6/b$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFqNames"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadResource"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v6, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh6/c;

    sget-object v4, Lv6/a;->q:Lv6/a;

    invoke-virtual {v4, v3}, Lv6/a;->a(Lh6/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lv6/b$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_7c

    move/from16 v6, p6

    invoke-static {v3, v1, v2, v5, v6}, Lv6/c;->E0(Lh6/c;Lx6/m;Li5/e0;Ljava/io/InputStream;Z)Lv6/c;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v1, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    new-instance v10, Li5/j0;

    move-object v6, v10

    invoke-direct {v10, v13}, Li5/j0;-><init>(Ljava/util/Collection;)V

    new-instance v7, Li5/g0;

    move-object v12, v7

    invoke-direct {v7, v1, v2}, Li5/g0;-><init>(Lx6/m;Li5/e0;)V

    new-instance v9, Lu6/k;

    move-object v0, v9

    sget-object v3, Lu6/l$a;->a:Lu6/l$a;

    new-instance v5, Lu6/n;

    move-object v4, v5

    invoke-direct {v5, v10}, Lu6/n;-><init>(Li5/i0;)V

    new-instance v8, Lu6/d;

    move-object v5, v8

    sget-object v11, Lv6/a;->q:Lv6/a;

    invoke-direct {v8, v2, v7, v11}, Lu6/d;-><init>(Li5/e0;Li5/g0;Lt6/a;)V

    sget-object v7, Lu6/u$a;->a:Lu6/u$a;

    sget-object v8, Lu6/q;->a:Lu6/q;

    move-object/from16 p0, v8

    const-string v2, "DO_NOTHING"

    move-object/from16 p6, v9

    move-object/from16 v9, p0

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lq5/c$a;->a:Lq5/c$a;

    move-object/from16 v2, p6

    sget-object v16, Lu6/r$a;->a:Lu6/r$a;

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    sget-object v16, Lu6/j$a;->b:Lu6/j;

    move-object/from16 v23, v13

    move-object/from16 v13, v16

    iget-object v11, v11, Lt6/a;->a:Li6/f;

    move-object/from16 v16, v11

    const/16 v17, 0x0

    new-instance v11, Lq6/b;

    move-object/from16 v18, v11

    sget-object v2, Li4/y;->a:Li4/y;

    invoke-direct {v11, v1, v2}, Lq6/b;-><init>(Lx6/m;Ljava/lang/Iterable;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0xd0000

    move-object/from16 v1, p1

    move-object/from16 v11, p6

    move-object/from16 v2, p2

    move-object/from16 v24, v11

    move-object/from16 v11, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p4

    invoke-direct/range {v0 .. v21}, Lu6/k;-><init>(Lx6/m;Li5/e0;Lu6/l;Lu6/h;Lu6/c;Li5/i0;Lu6/u;Lu6/q;Lq5/c;Lu6/r;Ljava/lang/Iterable;Li5/g0;Lu6/j;Lk5/a;Lk5/c;Li6/f;Lz6/l;Lq6/a;Lk5/e;Ljava/util/List;I)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv6/c;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Lu6/p;->D0(Lu6/k;)V

    goto :goto_f0

    :cond_102
    return-object v22
.end method
