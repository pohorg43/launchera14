.class public final Lh5/r;
.super Lu6/a;
.source ""


# direct methods
.method public constructor <init>(Lx6/m;La6/r;Li5/e0;Li5/g0;Lk5/a;Lk5/c;Lu6/l;Lz6/l;Lq6/a;)V
    .registers 36

    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    const-string v0, "storageManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializationConfiguration"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lu6/a;-><init>(Lx6/m;Lu6/t;Li5/e0;)V

    new-instance v9, Lu6/k;

    move-object v0, v9

    new-instance v5, Lu6/n;

    move-object v4, v5

    invoke-direct {v5, v13}, Lu6/n;-><init>(Li5/i0;)V

    new-instance v8, Lu6/d;

    move-object v5, v8

    move-object/from16 p2, v0

    sget-object v0, Lv6/a;->q:Lv6/a;

    invoke-direct {v8, v10, v7, v0}, Lu6/d;-><init>(Li5/e0;Li5/g0;Lt6/a;)V

    sget-object v7, Lu6/u$a;->a:Lu6/u$a;

    sget-object v8, Lu6/q;->a:Lu6/q;

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    const-string v9, "DO_NOTHING"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lq5/c$a;->a:Lq5/c$a;

    move-object/from16 v10, p5

    sget-object v16, Lu6/r$a;->a:Lu6/r$a;

    move-object/from16 v13, p3

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    move-object/from16 v23, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lk5/b;

    move-object/from16 v24, v2

    new-instance v2, Lg5/a;

    invoke-direct {v2, v11, v13}, Lg5/a;-><init>(Lx6/m;Li5/e0;)V

    const/16 v16, 0x0

    aput-object v2, v1, v16

    new-instance v2, Lh5/f;

    move-object/from16 v25, v3

    const/4 v3, 0x0

    move-object/from16 p5, v4

    const/4 v4, 0x4

    invoke-direct {v2, v11, v13, v3, v4}, Lh5/f;-><init>(Lx6/m;Li5/e0;Lkotlin/jvm/functions/Function1;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sget v1, Lu6/j;->a:I

    sget-object v13, Lu6/j$a;->b:Lu6/j;

    move-object/from16 v1, p0

    iget-object v0, v0, Lt6/a;->a:Li6/f;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0xc0000

    move-object/from16 v0, p2

    move-object/from16 v4, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct/range {v0 .. v21}, Lu6/k;-><init>(Lx6/m;Li5/e0;Lu6/l;Lu6/h;Lu6/c;Li5/i0;Lu6/u;Lu6/q;Lq5/c;Lu6/r;Ljava/lang/Iterable;Li5/g0;Lu6/j;Lk5/a;Lk5/c;Li6/f;Lz6/l;Lq6/a;Lk5/e;Ljava/util/List;I)V

    const-string v0, "<set-?>"

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lu6/a;->d:Lu6/k;

    return-void
.end method


# virtual methods
.method public d(Lh6/c;)Lu6/o;
    .registers 5

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/a;->b:Lu6/t;

    invoke-interface {v0, p1}, Lu6/t;->b(Lh6/c;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lu6/a;->a:Lx6/m;

    iget-object p0, p0, Lu6/a;->c:Li5/e0;

    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v0, v2}, Lv6/c;->E0(Lh6/c;Lx6/m;Li5/e0;Ljava/io/InputStream;Z)Lv6/c;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return-object p0
.end method
