.class public final Lw5/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaTypeResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaTypeResolver.kt\norg/jetbrains/kotlin/load/java/lazy/types/JavaTypeResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 coreLib.kt\norg/jetbrains/kotlin/utils/CoreLibKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,321:1\n1#2:322\n19#3:323\n1549#4:324\n1620#4,3:325\n1549#4:328\n1620#4,3:329\n1549#4:332\n1620#4,3:333\n*S KotlinDebug\n*F\n+ 1 JavaTypeResolver.kt\norg/jetbrains/kotlin/load/java/lazy/types/JavaTypeResolver\n*L\n144#1:323\n205#1:324\n205#1:325,3\n263#1:328\n263#1:329,3\n267#1:332\n267#1:333,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lu5/g;

.field public final b:Lu5/k;

.field public final c:Lw5/g;

.field public final d:Ly6/n1;


# direct methods
.method public constructor <init>(Lu5/g;Lu5/k;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/e;->a:Lu5/g;

    iput-object p2, p0, Lw5/e;->b:Lu5/k;

    new-instance p1, Lw5/g;

    invoke-direct {p1}, Lw5/g;-><init>()V

    iput-object p1, p0, Lw5/e;->c:Lw5/g;

    new-instance p2, Ly6/n1;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1}, Ly6/n1;-><init>(Ly6/b0;Ly6/m1;I)V

    iput-object p2, p0, Lw5/e;->d:Ly6/n1;

    return-void
.end method

.method public static final d(Ly5/j;)La7/g;
    .registers 4

    sget-object v0, La7/i;->f:La7/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0}, Ly5/j;->A()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ly5/j;Lw5/a;Ly6/s0;)Ly6/s0;
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    sget-object v1, Ly6/e2;->e:Ly6/e2;

    sget-object v2, Ly6/z1;->a:Ly6/z1;

    sget-object v3, Lw5/c;->c:Lw5/c;

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    invoke-virtual/range {p3 .. p3}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_19

    :cond_16
    move-object/from16 v10, p1

    goto :goto_27

    :cond_19
    :goto_19
    new-instance v5, Lu5/e;

    iget-object v8, v6, Lw5/e;->a:Lu5/g;

    const/4 v9, 0x4

    move-object/from16 v10, p1

    invoke-direct {v5, v8, v10, v4, v9}, Lu5/e;-><init>(Lu5/g;Ly5/d;ZI)V

    invoke-static {v5}, Ly6/h1;->b(Lj5/h;)Ly6/g1;

    move-result-object v5

    :goto_27
    move-object v8, v5

    invoke-interface/range {p1 .. p1}, Ly5/j;->getClassifier()Ly5/i;

    move-result-object v5

    const/4 v11, 0x1

    if-nez v5, :cond_38

    invoke-virtual/range {p0 .. p1}, Lw5/e;->b(Ly5/j;)Ly6/j1;

    move-result-object v5

    move-object/from16 v16, v8

    move-object v8, v5

    goto/16 :goto_204

    :cond_38
    instance-of v12, v5, Ly5/g;

    if-eqz v12, :cond_1ed

    move-object v12, v5

    check-cast v12, Ly5/g;

    invoke-interface {v12}, Ly5/g;->e()Lh6/c;

    move-result-object v13

    if-eqz v13, :cond_1d6

    iget-boolean v5, v7, Lw5/a;->g:Z

    if-eqz v5, :cond_ad

    sget-object v5, Lw5/f;->a:Lh6/c;

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, v6, Lw5/e;->a:Lu5/g;

    iget-object v5, v5, Lu5/g;->a:Lu5/c;

    iget-object v5, v5, Lu5/c;->p:Lf5/i;

    iget-object v13, v5, Lf5/i;->c:Lf5/i$a;

    sget-object v14, Lf5/i;->e:[Lz4/n;

    aget-object v14, v14, v4

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "types"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "property"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lg7/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v13

    const-string v14, "identifier(className)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v5, Lf5/i;->b:Lh4/f;

    invoke-interface {v14}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr6/i;

    sget-object v15, Lq5/d;->h:Lq5/d;

    invoke-interface {v14, v13, v15}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v14

    instance-of v15, v14, Li5/e;

    if-eqz v15, :cond_90

    check-cast v14, Li5/e;

    goto :goto_91

    :cond_90
    const/4 v14, 0x0

    :goto_91
    if-nez v14, :cond_a9

    iget-object v5, v5, Lf5/i;->a:Li5/g0;

    new-instance v14, Lh6/b;

    sget-object v15, Lf5/j;->h:Lh6/c;

    invoke-direct {v14, v15, v13}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Li5/g0;->a(Lh6/b;Ljava/util/List;)Li5/e;

    move-result-object v5

    move-object v14, v5

    :cond_a9
    move-object/from16 v16, v8

    goto/16 :goto_1bd

    :cond_ad
    iget-object v5, v6, Lw5/e;->a:Lu5/g;

    iget-object v5, v5, Lu5/g;->a:Lu5/c;

    iget-object v5, v5, Lu5/c;->o:Li5/e0;

    invoke-interface {v5}, Li5/e0;->k()Lf5/g;

    move-result-object v5

    const-string v14, "fqName"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "builtIns"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lh5/c;->a:Lh5/c;

    invoke-virtual {v14, v13}, Lh5/c;->g(Lh6/c;)Lh6/b;

    move-result-object v13

    if-eqz v13, :cond_d3

    invoke-virtual {v13}, Lh6/b;->b()Lh6/c;

    move-result-object v13

    invoke-virtual {v5, v13}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v5

    move-object v14, v5

    goto :goto_d4

    :cond_d3
    const/4 v14, 0x0

    :goto_d4
    if-nez v14, :cond_db

    move-object/from16 v16, v8

    const/4 v14, 0x0

    goto/16 :goto_1bd

    :cond_db
    const-string v5, "readOnly"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lh5/c;->a:Lh5/c;

    invoke-static {v14}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v15

    sget-object v4, Lh5/c;->l:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    iget-object v4, v7, Lw5/a;->e:Lw5/c;

    const-string v15, "descriptor.builtIns.getB…Name(oppositeClassFqName)"

    const-string v11, " collection"

    const-string v9, "read-only"

    const-string v10, " is not a "

    move-object/from16 v16, v8

    const-string v8, "Given class "

    if-eq v4, v3, :cond_183

    iget-object v4, v7, Lw5/a;->d:Ly6/z1;

    if-eq v4, v2, :cond_183

    invoke-interface/range {p1 .. p1}, Ly5/j;->v()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly5/x;

    instance-of v0, v4, Ly5/b0;

    if-eqz v0, :cond_114

    move-object v0, v4

    check-cast v0, Ly5/b0;

    goto :goto_115

    :cond_114
    const/4 v0, 0x0

    :goto_115
    if-eqz v0, :cond_125

    invoke-interface {v0}, Ly5/b0;->t()Ly5/x;

    move-result-object v4

    if-eqz v4, :cond_125

    invoke-interface {v0}, Ly5/b0;->G()Z

    move-result v0

    if-nez v0, :cond_125

    const/4 v0, 0x1

    goto :goto_126

    :cond_125
    const/4 v0, 0x0

    :goto_126
    if-nez v0, :cond_129

    goto :goto_161

    :cond_129
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v0

    invoke-virtual {v13, v0}, Lh5/c;->i(Lh6/d;)Lh6/c;

    move-result-object v0

    if-eqz v0, :cond_165

    invoke-static {v14}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v4, "JavaToKotlinClassMapper.…ypeConstructor.parameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a1;

    if-eqz v0, :cond_161

    invoke-interface {v0}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v0

    if-nez v0, :cond_15d

    goto :goto_161

    :cond_15d
    if-eq v0, v1, :cond_161

    const/4 v0, 0x1

    goto :goto_162

    :cond_161
    :goto_161
    const/4 v0, 0x0

    :goto_162
    if-eqz v0, :cond_1bd

    goto :goto_183

    :cond_165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_183
    :goto_183
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v0

    sget-object v4, Lh5/c;->a:Lh5/c;

    invoke-virtual {v4, v0}, Lh5/c;->i(Lh6/d;)Lh6/c;

    move-result-object v0

    if-eqz v0, :cond_19f

    invoke-static {v14}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_1bd

    :cond_19f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bd
    :goto_1bd
    if-nez v14, :cond_1c9

    iget-object v0, v6, Lw5/e;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->k:Lu5/i;

    invoke-interface {v0, v12}, Lu5/i;->a(Ly5/g;)Li5/e;

    move-result-object v14

    :cond_1c9
    if-eqz v14, :cond_1d1

    invoke-interface {v14}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    if-nez v0, :cond_201

    :cond_1d1
    invoke-virtual/range {p0 .. p1}, Lw5/e;->b(Ly5/j;)Ly6/j1;

    move-result-object v0

    goto :goto_201

    :cond_1d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class type should have a FQ name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1ed
    move-object/from16 v16, v8

    instance-of v0, v5, Ly5/y;

    if-eqz v0, :cond_466

    iget-object v0, v6, Lw5/e;->b:Lu5/k;

    check-cast v5, Ly5/y;

    invoke-interface {v0, v5}, Lu5/k;->a(Ly5/y;)Li5/a1;

    move-result-object v0

    if-eqz v0, :cond_203

    invoke-interface {v0}, Li5/a1;->h()Ly6/j1;

    move-result-object v0

    :cond_201
    :goto_201
    move-object v8, v0

    goto :goto_204

    :cond_203
    const/4 v8, 0x0

    :goto_204
    if-nez v8, :cond_208

    const/4 v0, 0x0

    return-object v0

    :cond_208
    iget-object v0, v7, Lw5/a;->e:Lw5/c;

    if-ne v0, v3, :cond_210

    move-object/from16 v0, p3

    const/4 v9, 0x0

    goto :goto_21e

    :cond_210
    iget-boolean v0, v7, Lw5/a;->g:Z

    if-nez v0, :cond_21a

    iget-object v0, v7, Lw5/a;->d:Ly6/z1;

    if-eq v0, v2, :cond_21a

    const/4 v0, 0x1

    goto :goto_21b

    :cond_21a
    const/4 v0, 0x0

    :goto_21b
    move v9, v0

    move-object/from16 v0, p3

    :goto_21e
    if-eqz v0, :cond_225

    invoke-virtual/range {p3 .. p3}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    goto :goto_226

    :cond_225
    const/4 v2, 0x0

    :goto_226
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23a

    invoke-interface/range {p1 .. p1}, Ly5/j;->p()Z

    move-result v2

    if-nez v2, :cond_23a

    if-eqz v9, :cond_23a

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_23a
    sget-object v0, Ly6/z1;->b:Ly6/z1;

    invoke-interface/range {p1 .. p1}, Ly5/j;->p()Z

    move-result v2

    const-string v3, "constructor.parameters"

    if-nez v2, :cond_260

    invoke-interface/range {p1 .. p1}, Ly5/j;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25e

    invoke-interface {v8}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_25e

    goto :goto_260

    :cond_25e
    const/4 v2, 0x0

    goto :goto_261

    :cond_260
    :goto_260
    const/4 v2, 0x1

    :goto_261
    invoke-interface {v8}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    if-eqz v2, :cond_2c4

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_279
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Li5/a1;

    iget-object v0, v7, Lw5/a;->h:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v12, v1, v0}, Ld7/c;->h(Li5/a1;Ly6/j1;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_294

    invoke-static {v12, v7}, Ly6/a2;->n(Li5/a1;Ly6/c0;)Ly6/q1;

    move-result-object v0

    goto :goto_2bd

    :cond_294
    new-instance v13, Ly6/o0;

    iget-object v0, v6, Lw5/e;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v14, v0, Lu5/c;->a:Lx6/m;

    new-instance v15, Lw5/d;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object v4, v8

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lw5/d;-><init>(Lw5/e;Li5/a1;Lw5/a;Ly6/j1;Ly5/j;)V

    invoke-direct {v13, v14, v15}, Ly6/o0;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v6, Lw5/e;->c:Lw5/g;

    invoke-interface/range {p1 .. p1}, Ly5/j;->p()Z

    move-result v1

    invoke-virtual {v7, v1}, Lw5/a;->f(Z)Lw5/a;

    move-result-object v1

    iget-object v2, v6, Lw5/e;->d:Ly6/n1;

    invoke-virtual {v0, v12, v1, v2, v13}, Lw5/g;->a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;

    move-result-object v0

    :goto_2bd
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_279

    :cond_2c1
    move-object v0, v10

    goto/16 :goto_45a

    :cond_2c4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ly5/j;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_313

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    new-instance v3, Ly6/s1;

    sget-object v4, La7/i;->b0:La7/i;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v7, "p.name.asString()"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v2

    invoke-direct {v3, v2}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2df

    :cond_30d
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_45a

    :cond_313
    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Ly5/j;->v()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Li4/v;->n0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Li4/d0;

    invoke-virtual {v2}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32b
    move-object v3, v2

    check-cast v3, Li4/e0;

    invoke-virtual {v3}, Li4/e0;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_456

    invoke-virtual {v3}, Li4/e0;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li4/c0;

    iget v10, v3, Li4/c0;->a:I

    iget-object v3, v3, Li4/c0;->b:Ljava/lang/Object;

    check-cast v3, Ly5/x;

    invoke-interface {v4}, Ljava/util/List;->size()I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/a1;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v0, v13, v13, v12, v11}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v14

    const-string v12, "parameter"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ly6/e2;->c:Ly6/e2;

    instance-of v13, v3, Ly5/b0;

    if-eqz v13, :cond_43d

    check-cast v3, Ly5/b0;

    invoke-interface {v3}, Ly5/b0;->t()Ly5/x;

    move-result-object v13

    invoke-interface {v3}, Ly5/b0;->G()Z

    move-result v15

    if-eqz v15, :cond_369

    move-object v15, v1

    goto :goto_36b

    :cond_369
    sget-object v15, Ly6/e2;->d:Ly6/e2;

    :goto_36b
    if-eqz v13, :cond_42d

    invoke-interface {v10}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v5

    if-ne v5, v12, :cond_374

    goto :goto_37c

    :cond_374
    invoke-interface {v10}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v5

    if-eq v15, v5, :cond_37c

    const/4 v5, 0x1

    goto :goto_37d

    :cond_37c
    :goto_37c
    const/4 v5, 0x0

    :goto_37d
    if-eqz v5, :cond_381

    goto/16 :goto_42d

    :cond_381
    iget-object v5, v6, Lw5/e;->a:Lu5/g;

    const-string v12, "c"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "wildcardType"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ly5/b0;->t()Ly5/x;

    move-result-object v12

    if-eqz v12, :cond_395

    const/4 v12, 0x1

    goto :goto_396

    :cond_395
    const/4 v12, 0x0

    :goto_396
    if-eqz v12, :cond_421

    new-instance v12, Lu5/e;

    const/4 v14, 0x0

    invoke-direct {v12, v5, v3, v14}, Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V

    invoke-virtual {v12}, Lu5/e;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a2
    move-object v5, v3

    check-cast v5, Lj7/e$a;

    invoke-virtual {v5}, Lj7/e$a;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e3

    invoke-virtual {v5}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lj5/c;

    sget-object v14, Lr5/y;->b:[Lh6/c;

    array-length v11, v14

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_3b8
    if-ge v1, v11, :cond_3d3

    move-object/from16 p2, v2

    aget-object v2, v14, v1

    move-object/from16 p3, v3

    invoke-interface {v12}, Lj5/c;->e()Lh6/c;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3cc

    const/4 v2, 0x1

    goto :goto_3d8

    :cond_3cc
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_3b8

    :cond_3d3
    move-object/from16 p2, v2

    move-object/from16 p3, v3

    const/4 v2, 0x0

    :goto_3d8
    if-eqz v2, :cond_3db

    goto :goto_3e8

    :cond_3db
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v1, v17

    const/4 v11, 0x7

    goto :goto_3a2

    :cond_3e3
    move-object/from16 v17, v1

    move-object/from16 p2, v2

    const/4 v5, 0x0

    :goto_3e8
    check-cast v5, Lj5/c;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v11, v11, v2, v1}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v1

    invoke-virtual {v6, v13, v1}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v1

    if-eqz v5, :cond_41c

    sget v3, Lj5/h;->I:I

    invoke-virtual {v1}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v3

    invoke-static {v3, v5}, Li4/v;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "annotations"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_412

    sget-object v3, Lj5/h$a;->b:Lj5/h;

    goto :goto_418

    :cond_412
    new-instance v5, Lj5/i;

    invoke-direct {v5, v3}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object v3, v5

    :goto_418
    invoke-static {v1, v3}, Ld7/c;->m(Ly6/l0;Lj5/h;)Ly6/l0;

    move-result-object v1

    :cond_41c
    invoke-static {v1, v15, v10}, Ld7/c;->d(Ly6/l0;Ly6/e2;Li5/a1;)Ly6/q1;

    move-result-object v1

    goto :goto_437

    :cond_421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42d
    :goto_42d
    move-object/from16 v17, v1

    move-object/from16 p2, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v14}, Ly6/a2;->n(Li5/a1;Ly6/c0;)Ly6/q1;

    move-result-object v1

    :goto_437
    const-string v3, "{\n                val bo…          }\n            }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_44c

    :cond_43d
    move-object/from16 v17, v1

    move-object/from16 p2, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    new-instance v1, Ly6/s1;

    invoke-virtual {v6, v3, v14}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    :goto_44c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    move-object/from16 v1, v17

    const/4 v5, 0x1

    goto/16 :goto_32b

    :cond_456
    invoke-static {v7}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_45a
    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object/from16 v6, v16

    move-object v7, v8

    move-object v8, v0

    invoke-static/range {v6 .. v11}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_466
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown classifier kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ly5/j;)Ly6/j1;
    .registers 3

    new-instance v0, Lh6/c;

    invoke-interface {p1}, Ly5/j;->D()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p1

    const-string v0, "topLevel(FqName(javaType.classifierQualifiedName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->d:La6/j;

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->l:Li5/g0;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li5/g0;->a(Lh6/b;Ljava/util/List;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    const-string p1, "c.components.deserialize…istOf(0)).typeConstructor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ly5/f;Lw5/a;Z)Ly6/l0;
    .registers 13

    sget-object v0, Ly6/e2;->e:Ly6/e2;

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    const-string v2, "arrayType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attr"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/f;->l()Ly5/x;

    move-result-object v2

    instance-of v3, v2, Ly5/v;

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    move-object v3, v2

    check-cast v3, Ly5/v;

    goto :goto_1c

    :cond_1b
    move-object v3, v4

    :goto_1c
    if-eqz v3, :cond_23

    invoke-interface {v3}, Ly5/v;->getType()Lf5/h;

    move-result-object v3

    goto :goto_24

    :cond_23
    move-object v3, v4

    :goto_24
    new-instance v5, Lu5/e;

    iget-object v6, p0, Lw5/e;->a:Lu5/g;

    const/4 v7, 0x1

    invoke-direct {v5, v6, p1, v7}, Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V

    const/4 p1, 0x0

    if-eqz v3, :cond_6b

    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0, v3}, Lf5/g;->s(Lf5/h;)Ly6/s0;

    move-result-object p0

    const-string p3, "it"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lj5/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lj5/h;

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v1

    aput-object v1, v0, p1

    aput-object v5, v0, v7

    invoke-direct {p3, v0}, Lj5/k;-><init>([Lj5/h;)V

    invoke-static {p0, p3}, Ld7/c;->m(Ly6/l0;Lj5/h;)Ly6/l0;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/s0;

    iget-boolean p1, p2, Lw5/a;->g:Z

    if-eqz p1, :cond_62

    goto :goto_6a

    :cond_62
    invoke-virtual {p0, v7}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p1

    invoke-static {p0, p1}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    :goto_6a
    return-object p0

    :cond_6b
    sget-object v3, Ly6/z1;->b:Ly6/z1;

    iget-boolean v6, p2, Lw5/a;->g:Z

    const/4 v8, 0x6

    invoke-static {v3, v6, p1, v4, v8}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object p1

    iget-boolean p2, p2, Lw5/a;->g:Z

    const-string v2, "c.module.builtIns.getArr…mponentType, annotations)"

    if-eqz p2, :cond_94

    if-eqz p3, :cond_81

    goto :goto_82

    :cond_81
    move-object v0, v1

    :goto_82
    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v5}, Lf5/g;->i(Ly6/e2;Ly6/l0;Lj5/h;)Ly6/s0;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_94
    iget-object p2, p0, Lw5/e;->a:Lu5/g;

    iget-object p2, p2, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->o:Li5/e0;

    invoke-interface {p2}, Li5/e0;->k()Lf5/g;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v5}, Lf5/g;->i(Ly6/e2;Ly6/l0;Lj5/h;)Ly6/s0;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v5}, Lf5/g;->i(Ly6/e2;Ly6/l0;Lj5/h;)Ly6/s0;

    move-result-object p0

    invoke-virtual {p0, v7}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    invoke-static {p2, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ly5/x;Lw5/a;)Ly6/l0;
    .registers 6

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ly5/v;

    if-eqz v0, :cond_35

    check-cast p1, Ly5/v;

    invoke-interface {p1}, Ly5/v;->getType()Lf5/h;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object p0

    goto :goto_2e

    :cond_20
    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->y()Ly6/s0;

    move-result-object p0

    :goto_2e
    const-string p1, "{\n                val pr…ns.unitType\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_d4

    :cond_35
    instance-of v0, p1, Ly5/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    check-cast p1, Ly5/j;

    iget-boolean v0, p2, Lw5/a;->g:Z

    if-nez v0, :cond_47

    iget-object v0, p2, Lw5/a;->d:Ly6/z1;

    sget-object v2, Ly6/z1;->a:Ly6/z1;

    if-eq v0, v2, :cond_47

    const/4 v1, 0x1

    :cond_47
    invoke-interface {p1}, Ly5/j;->p()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5e

    if-nez v1, :cond_5e

    invoke-virtual {p0, p1, p2, v2}, Lw5/e;->a(Ly5/j;Lw5/a;Ly6/s0;)Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_58

    goto/16 :goto_d4

    :cond_58
    invoke-static {p1}, Lw5/e;->d(Ly5/j;)La7/g;

    move-result-object p0

    goto/16 :goto_d4

    :cond_5e
    sget-object v1, Lw5/c;->c:Lw5/c;

    invoke-virtual {p2, v1}, Lw5/a;->g(Lw5/c;)Lw5/a;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2}, Lw5/e;->a(Ly5/j;Lw5/a;Ly6/s0;)Ly6/s0;

    move-result-object v1

    if-nez v1, :cond_6f

    invoke-static {p1}, Lw5/e;->d(Ly5/j;)La7/g;

    move-result-object p0

    goto :goto_d4

    :cond_6f
    sget-object v2, Lw5/c;->b:Lw5/c;

    invoke-virtual {p2, v2}, Lw5/a;->g(Lw5/c;)Lw5/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lw5/e;->a(Ly5/j;Lw5/a;Ly6/s0;)Ly6/s0;

    move-result-object p0

    if-nez p0, :cond_80

    invoke-static {p1}, Lw5/e;->d(Ly5/j;)La7/g;

    move-result-object p0

    goto :goto_d4

    :cond_80
    if-eqz v0, :cond_88

    new-instance p1, Lw5/i;

    invoke-direct {p1, v1, p0}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    goto :goto_ad

    :cond_88
    invoke-static {v1, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p1

    goto :goto_ad

    :cond_8d
    instance-of v0, p1, Ly5/f;

    if-eqz v0, :cond_98

    check-cast p1, Ly5/f;

    invoke-virtual {p0, p1, p2, v1}, Lw5/e;->c(Ly5/f;Lw5/a;Z)Ly6/l0;

    move-result-object p0

    goto :goto_d4

    :cond_98
    instance-of v0, p1, Ly5/b0;

    const-string v1, "c.module.builtIns.defaultBound"

    if-eqz v0, :cond_c1

    check-cast p1, Ly5/b0;

    invoke-interface {p1}, Ly5/b0;->t()Ly5/x;

    move-result-object p1

    if-eqz p1, :cond_af

    invoke-virtual {p0, p1, p2}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object p1

    if-nez p1, :cond_ad

    goto :goto_af

    :cond_ad
    :goto_ad
    move-object p0, p1

    goto :goto_d4

    :cond_af
    :goto_af
    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->n()Ly6/s0;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d4

    :cond_c1
    if-nez p1, :cond_d5

    iget-object p0, p0, Lw5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->n()Ly6/s0;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d4
    return-object p0

    :cond_d5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
