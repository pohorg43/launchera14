.class public final Lv5/f$a;
.super Ly6/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n1549#2:323\n1620#2,3:324\n1549#2:327\n1620#2,3:328\n1549#2:331\n1620#2,3:332\n*S KotlinDebug\n*F\n+ 1 LazyJavaClassDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor\n*L\n254#1:323\n254#1:324,3\n280#1:327\n280#1:328,3\n285#1:331\n285#1:332,3\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lv5/f;


# direct methods
.method public constructor <init>(Lv5/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv5/f$a;->d:Lv5/f;

    iget-object v0, p1, Lv5/f;->k:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->a:Lx6/m;

    invoke-direct {p0, v0}, Ly6/b;-><init>(Lx6/m;)V

    iget-object v0, p1, Lv5/f;->k:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/f$a$a;

    invoke-direct {v1, p1}, Lv5/f$a$a;-><init>(Lv5/f;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/f$a;->c:Lx6/i;

    return-void
.end method


# virtual methods
.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Lv5/f$a;->d:Lv5/f;

    return-object p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/f$a;->c:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/util/Collection;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    iget-object v2, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v2, v2, Lv5/f;->i:Ly5/g;

    invoke-interface {v2}, Ly5/g;->b()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v6, v6, Lv5/f;->v:Lj5/h;

    sget-object v7, Lr5/f0;->n:Lh6/c;

    const-string v8, "PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_30

    goto/16 :goto_8c

    :cond_30
    invoke-interface {v6}, Lj5/c;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Li4/v;->Y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lm6/v;

    if-eqz v9, :cond_43

    check-cast v6, Lm6/v;

    goto :goto_44

    :cond_43
    move-object v6, v8

    :goto_44
    if-eqz v6, :cond_8c

    iget-object v6, v6, Lm6/g;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4d

    goto :goto_8c

    :cond_4d
    const/4 v9, 0x3

    move v10, v5

    move v11, v7

    :goto_50
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_7e

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v11}, Lk/b;->g(I)I

    move-result v13

    const/4 v14, 0x2

    if-eqz v13, :cond_73

    if-eq v13, v7, :cond_66

    if-eq v13, v14, :cond_73

    goto :goto_7b

    :cond_66
    const/16 v13, 0x2e

    if-ne v12, v13, :cond_6c

    move v11, v9

    goto :goto_7b

    :cond_6c
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-nez v12, :cond_7b

    goto :goto_82

    :cond_73
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v11

    if-nez v11, :cond_7a

    goto :goto_82

    :cond_7a
    move v11, v14

    :cond_7b
    :goto_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    :cond_7e
    if-eq v11, v9, :cond_82

    move v9, v7

    goto :goto_83

    :cond_82
    :goto_82
    move v9, v5

    :goto_83
    if-nez v9, :cond_86

    goto :goto_8c

    :cond_86
    new-instance v9, Lh6/c;

    invoke-direct {v9, v6}, Lh6/c;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :cond_8c
    :goto_8c
    move-object v9, v8

    :goto_8d
    if-eqz v9, :cond_a3

    invoke-virtual {v9}, Lh6/c;->d()Z

    move-result v6

    if-nez v6, :cond_9f

    sget-object v6, Lf5/j;->j:Lh6/f;

    invoke-virtual {v9, v6}, Lh6/c;->i(Lh6/f;)Z

    move-result v6

    if-eqz v6, :cond_9f

    move v6, v7

    goto :goto_a0

    :cond_9f
    move v6, v5

    :goto_a0
    if-eqz v6, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v9, v8

    :goto_a4
    const/16 v6, 0xa

    if-nez v9, :cond_c1

    sget-object v10, Lr5/q;->a:Lr5/q;

    iget-object v10, v0, Lv5/f$a;->d:Lv5/f;

    invoke-static {v10}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v10

    const-string v11, "classFqName"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lr5/q;->c:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh6/c;

    if-nez v10, :cond_c2

    goto/16 :goto_191

    :cond_c1
    move-object v10, v9

    :cond_c2
    iget-object v11, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v11, v11, Lv5/f;->k:Lu5/g;

    iget-object v11, v11, Lu5/g;->a:Lu5/c;

    iget-object v11, v11, Lu5/c;->o:Li5/e0;

    sget-object v12, Lq5/d;->s:Lq5/d;

    sget v13, Lo6/c;->a:I

    const-string v13, "<this>"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "topLevelClassFqName"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "location"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lh6/c;->d()Z

    invoke-virtual {v10}, Lh6/c;->e()Lh6/c;

    move-result-object v13

    const-string v14, "topLevelClassFqName.parent()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object v11

    invoke-interface {v11}, Li5/l0;->l()Lr6/i;

    move-result-object v11

    invoke-virtual {v10}, Lh6/c;->g()Lh6/f;

    move-result-object v10

    const-string v13, "topLevelClassFqName.shortName()"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v10, v12}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v10

    instance-of v11, v10, Li5/e;

    if-eqz v11, :cond_105

    check-cast v10, Li5/e;

    goto :goto_106

    :cond_105
    move-object v10, v8

    :goto_106
    if-nez v10, :cond_10a

    goto/16 :goto_191

    :cond_10a
    invoke-interface {v10}, Li5/h;->h()Ly6/j1;

    move-result-object v11

    invoke-interface {v11}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v12, v12, Lv5/f;->q:Lv5/f$a;

    invoke-virtual {v12}, Lv5/f$a;->getParameters()Ljava/util/List;

    move-result-object v12

    const-string v13, "getTypeConstructor().parameters"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v11, :cond_14f

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v12, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_136
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_185

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/a1;

    new-instance v13, Ly6/s1;

    invoke-interface {v12}, Li5/h;->m()Ly6/s0;

    move-result-object v12

    invoke-direct {v13, v1, v12}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_136

    :cond_14f
    if-ne v13, v7, :cond_191

    if-le v11, v7, :cond_191

    if-nez v9, :cond_191

    new-instance v9, Ly6/s1;

    invoke-static {v12}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/a1;

    invoke-interface {v12}, Li5/h;->m()Ly6/s0;

    move-result-object v12

    invoke-direct {v9, v1, v12}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    new-instance v12, Ly4/d;

    invoke-direct {v12, v7, v11}, Ly4/d;-><init>(II)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v12, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Ly4/b;->a()Li4/f0;

    move-result-object v12

    :goto_176
    move-object v13, v12

    check-cast v13, Ly4/c;

    iget-boolean v13, v13, Ly4/c;->c:Z

    if-eqz v13, :cond_184

    invoke-virtual {v12}, Li4/f0;->nextInt()I

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_184
    move-object v9, v11

    :cond_185
    sget-object v11, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ly6/g1;->c:Ly6/g1;

    invoke-static {v11, v10, v9}, Ly6/m0;->e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;

    move-result-object v9

    goto :goto_192

    :cond_191
    :goto_191
    move-object v9, v8

    :goto_192
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_196
    :goto_196
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_220

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly5/j;

    iget-object v11, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v11, v11, Lv5/f;->k:Lu5/g;

    iget-object v11, v11, Lu5/g;->e:Lw5/e;

    sget-object v12, Ly6/z1;->a:Ly6/z1;

    const/4 v13, 0x7

    invoke-static {v12, v5, v5, v8, v13}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v11

    iget-object v12, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v12, v12, Lv5/f;->k:Lu5/g;

    iget-object v13, v12, Lu5/g;->a:Lu5/c;

    iget-object v15, v13, Lu5/c;->r:Lz5/n;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "type"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lz5/t;

    sget-object v17, Lr5/c;->e:Lr5/c;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    move-object/from16 v13, v19

    move-object/from16 v20, v15

    move/from16 v15, v16

    move-object/from16 v16, v12

    invoke-direct/range {v13 .. v18}, Lz5/t;-><init>(Lj5/a;ZLu5/g;Lr5/c;Z)V

    sget-object v16, Li4/y;->a:Li4/y;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0xc

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object v15, v11

    move/from16 v19, v12

    invoke-static/range {v13 .. v19}, Lz5/n;->d(Lz5/n;Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;ZI)Ly6/l0;

    move-result-object v12

    if-nez v12, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    move-object v11, v12

    :goto_1f3
    invoke-virtual {v11}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v12

    invoke-interface {v12}, Ly6/j1;->e()Li5/h;

    move-result-object v12

    instance-of v12, v12, Li5/g0$b;

    if-eqz v12, :cond_202

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_202
    invoke-virtual {v11}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v10

    if-eqz v9, :cond_20d

    invoke-virtual {v9}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v12

    goto :goto_20e

    :cond_20d
    move-object v12, v8

    :goto_20e
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_215

    goto :goto_196

    :cond_215
    invoke-static {v11}, Lf5/g;->z(Ly6/l0;)Z

    move-result v10

    if-nez v10, :cond_196

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_196

    :cond_220
    iget-object v2, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v5, v2, Lv5/f;->j:Li5/e;

    if-eqz v5, :cond_236

    invoke-static {v5, v2}, Lh5/t;->a(Li5/e;Li5/e;)Ly6/l1;

    move-result-object v2

    invoke-virtual {v2}, Ly6/t1;->c()Ly6/x1;

    move-result-object v2

    invoke-interface {v5}, Li5/e;->m()Ly6/s0;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v8

    :cond_236
    invoke-static {v3, v8}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-static {v3, v9}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_276

    iget-object v1, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v2, v1, Lv5/f;->k:Lu5/g;

    iget-object v2, v2, Lu5/g;->a:Lu5/c;

    iget-object v2, v2, Lu5/c;->f:Lu6/q;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_258
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_273

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly5/x;

    const-string v8, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ly5/j;

    invoke-interface {v6}, Ly5/j;->A()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_258

    :cond_273
    invoke-interface {v2, v1, v5}, Lu6/q;->a(Li5/e;Ljava/util/List;)V

    :cond_276
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_282

    invoke-static {v3}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_296

    :cond_282
    iget-object v0, v0, Lv5/f$a;->d:Lv5/f;

    iget-object v0, v0, Lv5/f;->k:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->o:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    invoke-virtual {v0}, Lf5/g;->f()Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_296
    return-object v0
.end method

.method public n()Li5/y0;
    .registers 1

    iget-object p0, p0, Lv5/f$a;->d:Lv5/f;

    iget-object p0, p0, Lv5/f;->k:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->m:Li5/y0;

    return-object p0
.end method

.method public s()Li5/e;
    .registers 1

    iget-object p0, p0, Lv5/f$a;->d:Lv5/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lv5/f$a;->d:Lv5/f;

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
