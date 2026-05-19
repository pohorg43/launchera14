.class public final La6/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lu6/k;


# direct methods
.method public constructor <init>(Lx6/m;Li5/e0;Lu6/l;La6/k;La6/f;Lu5/f;Li5/g0;Lu6/q;Lq5/c;Lu6/j;Lz6/l;Lb7/a;)V
    .registers 37

    move-object/from16 v1, p1

    move-object/from16 v0, p12

    const-string v2, "storageManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "moduleDescriptor"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuration"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "classDataFinder"

    move-object/from16 v5, p4

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotationAndConstantLoader"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageFragmentProvider"

    move-object/from16 v7, p6

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notFoundClasses"

    move-object/from16 v12, p7

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorReporter"

    move-object/from16 v8, p8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "lookupTracker"

    move-object/from16 v9, p9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contractDeserializer"

    move-object/from16 v13, p10

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kotlinTypeChecker"

    move-object/from16 v15, p11

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeAttributeTranslators"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p2 .. p2}, Li5/e0;->k()Lf5/g;

    move-result-object v2

    instance-of v10, v2, Lh5/h;

    if-eqz v10, :cond_62

    check-cast v2, Lh5/h;

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    new-instance v14, Lu6/k;

    sget-object v10, Lu6/u$a;->a:Lu6/u$a;

    sget-object v11, La6/l;->a:La6/l;

    sget-object v12, Li4/y;->a:Li4/y;

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Lh5/h;->R()Lh5/l;

    move-result-object v16

    if-eqz v16, :cond_74

    goto :goto_76

    :cond_74
    sget-object v16, Lk5/a$a;->a:Lk5/a$a;

    :goto_76
    move-object/from16 v17, v16

    if-eqz v2, :cond_81

    invoke-virtual {v2}, Lh5/h;->R()Lh5/l;

    move-result-object v2

    if-eqz v2, :cond_81

    goto :goto_83

    :cond_81
    sget-object v2, Lk5/c$b;->a:Lk5/c$b;

    :goto_83
    move-object/from16 v22, v2

    sget-object v2, Lg6/h;->a:Lg6/h;

    sget-object v16, Lg6/h;->b:Li6/f;

    new-instance v2, Lq6/b;

    move-object/from16 v18, v2

    invoke-direct {v2, v1, v12}, Lq6/b;-><init>(Lx6/m;Ljava/lang/Iterable;)V

    const/16 v19, 0x0

    iget-object v0, v0, Lb7/a;->a:Ljava/util/List;

    move-object/from16 v20, v0

    const/high16 v21, 0x40000

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v22

    move-object/from16 v17, p11

    invoke-direct/range {v0 .. v21}, Lu6/k;-><init>(Lx6/m;Li5/e0;Lu6/l;Lu6/h;Lu6/c;Li5/i0;Lu6/u;Lu6/q;Lq5/c;Lu6/r;Ljava/lang/Iterable;Li5/g0;Lu6/j;Lk5/a;Lk5/c;Li6/f;Lz6/l;Lq6/a;Lk5/e;Ljava/util/List;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iput-object v1, v0, La6/h;->a:Lu6/k;

    return-void
.end method
