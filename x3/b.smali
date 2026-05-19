.class public final Lx3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,328:1\n1194#2,2:329\n1222#2,4:331\n288#2,2:336\n288#2,2:339\n1603#2,9:342\n1855#2:351\n1856#2:353\n1612#2:354\n1549#2:359\n1620#2,3:360\n20#3:335\n20#3:338\n1#4:341\n1#4:352\n37#5,2:355\n37#5,2:357\n37#5,2:363\n*S KotlinDebug\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory\n*L\n229#1:329,2\n229#1:331,4\n238#1:336,2\n244#1:339,2\n278#1:342,9\n278#1:351\n278#1:353\n278#1:354\n324#1:359\n324#1:360,3\n238#1:335\n244#1:338\n278#1:352\n278#1:355,2\n294#1:357,2\n324#1:363,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lv3/e0;",
            ")",
            "Lv3/r<",
            "*>;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "type"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_1f

    return-object v4

    :cond_1f
    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    const-string v0, "getRawType(this)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_34

    return-object v4

    :cond_34
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-object v4

    :cond_3b
    sget-object v0, Lx3/c;->a:Ljava/lang/Class;

    sget-object v0, Lx3/c;->a:Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_46

    return-object v4

    :cond_46
    invoke-static {v6}, Lw3/b;->f(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return-object v4

    :cond_4d
    :try_start_4d
    invoke-static {v2, v1, v6}, Lw3/b;->c(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lv3/r;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_51} :catch_54

    if-eqz v0, :cond_5e

    return-object v0

    :catch_54
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_50a

    :cond_5e
    invoke-virtual {v6}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_4ef

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-interface {v0}, Lz4/d;->isAbstract()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_4d4

    invoke-interface {v0}, Lz4/d;->isInner()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_4b9

    invoke-interface {v0}, Lz4/d;->getObjectInstance()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7f

    move v7, v3

    goto :goto_80

    :cond_7f
    const/4 v7, 0x0

    :goto_80
    if-eqz v7, :cond_49e

    invoke-interface {v0}, Lz4/d;->isSealed()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_47e

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lc5/o;

    iget-object v8, v7, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {v8}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc5/o$a;

    iget-object v8, v8, Lc5/o$a;->g:Lc5/p0$a;

    sget-object v9, Lc5/o$a;->q:[Lz4/n;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v8}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "<get-constructors>(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ad
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lz4/h;

    const-string v11, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KFunctionImpl"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lc5/x;

    invoke-virtual {v10}, Lc5/x;->o()Li5/x;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ConstructorDescriptor"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Li5/k;

    invoke-interface {v10}, Li5/k;->Y()Z

    move-result v10

    if-eqz v10, :cond_ad

    goto :goto_d4

    :cond_d3
    move-object v9, v4

    :goto_d4
    check-cast v9, Lz4/h;

    if-nez v9, :cond_d9

    return-object v4

    :cond_d9
    invoke-interface {v9}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v8

    const/16 v10, 0xa

    invoke-static {v8, v10}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Li4/j0;->b(I)I

    move-result v10

    const/16 v11, 0x10

    if-ge v10, v11, :cond_ec

    move v10, v11

    :cond_ec
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lz4/m;

    invoke-interface {v12}, Lz4/m;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f5

    :cond_10a
    invoke-static {v9, v3}, Lb5/a;->b(Lz4/c;Z)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {v0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/o$a;

    iget-object v0, v0, Lc5/o$a;->n:Lc5/p0$a;

    sget-object v5, Lc5/o$a;->q:[Lz4/n;

    const/16 v7, 0xe

    aget-object v5, v5, v7

    invoke-virtual {v0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "<get-allNonStaticMembers>(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_139
    :goto_139
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_163

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lc5/i;

    invoke-virtual {v10}, Lc5/i;->i()Li5/b;

    move-result-object v12

    invoke-interface {v12}, Li5/a;->L()Li5/r0;

    move-result-object v12

    if-eqz v12, :cond_152

    move v12, v3

    goto :goto_153

    :cond_152
    const/4 v12, 0x0

    :goto_153
    xor-int/2addr v12, v3

    if-eqz v12, :cond_15c

    instance-of v10, v10, Lz4/p;

    if-eqz v10, :cond_15c

    move v10, v3

    goto :goto_15d

    :cond_15c
    const/4 v10, 0x0

    :goto_15d
    if-eqz v10, :cond_139

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_163
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_167
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "adapter"

    if-eqz v5, :cond_39e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lz4/p;

    invoke-interface {v15}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/m;

    invoke-static {v15, v3}, Lb5/a;->b(Lz4/c;Z)V

    invoke-interface {v15}, Lz4/b;->getAnnotations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/annotation/Annotation;

    instance-of v13, v13, Lv3/q;

    if-eqz v13, :cond_18b

    move-object v4, v12

    :cond_19d
    check-cast v4, Lv3/q;

    invoke-interface {v15}, Lz4/b;->getAnnotations()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    if-eqz v5, :cond_1d0

    invoke-interface {v5}, Lz4/b;->getAnnotations()Ljava/util/List;

    move-result-object v12

    invoke-static {v10, v12}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    if-nez v4, :cond_1d0

    invoke-interface {v5}, Lz4/b;->getAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/annotation/Annotation;

    instance-of v13, v13, Lv3/q;

    if-eqz v13, :cond_1ba

    goto :goto_1cd

    :cond_1cc
    const/4 v12, 0x0

    :goto_1cd
    move-object v4, v12

    check-cast v4, Lv3/q;

    :cond_1d0
    invoke-static {v15}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v12

    if-eqz v12, :cond_1db

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    goto :goto_1dc

    :cond_1db
    const/4 v12, 0x0

    :goto_1dc
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v12

    if-eqz v12, :cond_20b

    if-eqz v5, :cond_1ec

    invoke-interface {v5}, Lz4/m;->c()Z

    move-result v4

    if-eqz v4, :cond_1eb

    goto :goto_1ec

    :cond_1eb
    const/4 v3, 0x0

    :cond_1ec
    :goto_1ec
    if-eqz v3, :cond_1f0

    goto/16 :goto_25b

    :cond_1f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default value for transient constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20b
    if-eqz v4, :cond_215

    invoke-interface {v4}, Lv3/q;->ignore()Z

    move-result v12

    if-ne v12, v3, :cond_215

    move v12, v3

    goto :goto_216

    :cond_215
    const/4 v12, 0x0

    :goto_216
    if-eqz v12, :cond_240

    if-eqz v5, :cond_222

    invoke-interface {v5}, Lz4/m;->c()Z

    move-result v4

    if-eqz v4, :cond_221

    goto :goto_222

    :cond_221
    const/4 v3, 0x0

    :cond_222
    :goto_222
    if-eqz v3, :cond_225

    goto :goto_25b

    :cond_225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default value for ignored constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_240
    if-eqz v5, :cond_252

    invoke-interface {v5}, Lz4/m;->getType()Lz4/r;

    move-result-object v12

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_251

    goto :goto_252

    :cond_251
    const/4 v3, 0x0

    :cond_252
    :goto_252
    if-eqz v3, :cond_363

    instance-of v3, v15, Lz4/k;

    if-nez v3, :cond_25f

    if-eqz v5, :cond_25b

    goto :goto_25f

    :cond_25b
    :goto_25b
    const/4 v3, 0x0

    move-object v4, v3

    goto/16 :goto_354

    :cond_25f
    :goto_25f
    if-eqz v4, :cond_273

    invoke-interface {v4}, Lv3/q;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_273

    const-string v4, "\u0000"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_270

    goto :goto_271

    :cond_270
    const/4 v3, 0x0

    :goto_271
    if-nez v3, :cond_277

    :cond_273
    invoke-interface {v15}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_277
    move-object v13, v3

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v3

    invoke-interface {v3}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v3

    instance-of v4, v3, Lz4/d;

    if-eqz v4, :cond_30b

    check-cast v3, Lz4/d;

    invoke-interface {v3}, Lz4/d;->isValue()Z

    move-result v4

    if-eqz v4, :cond_301

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v4

    invoke-interface {v4}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a1

    const/4 v4, 0x0

    goto/16 :goto_318

    :cond_2a1
    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v4

    invoke-interface {v4}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object v4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b2
    :goto_2b2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz4/t;

    iget-object v14, v14, Lz4/t;->b:Lz4/r;

    if-eqz v14, :cond_2c7

    invoke-static {v14}, Lb5/c;->e(Lz4/r;)Ljava/lang/reflect/Type;

    move-result-object v14

    goto :goto_2c8

    :cond_2c7
    const/4 v14, 0x0

    :goto_2c8
    if-eqz v14, :cond_2b2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b2

    :cond_2ce
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/reflect/Type;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    array-length v12, v4

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    array-length v12, v4

    if-eqz v12, :cond_2ea

    new-instance v12, Lw3/b$b;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v3, v4}, Lw3/b$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object v3, v12

    move-object v4, v14

    goto :goto_318

    :cond_2ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing type arguments for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_301
    const/4 v4, 0x0

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v3

    invoke-static {v3}, Lb5/c;->e(Lz4/r;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_318

    :cond_30b
    const/4 v4, 0x0

    instance-of v3, v3, Lz4/s;

    if-eqz v3, :cond_357

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v3

    invoke-static {v3}, Lb5/c;->e(Lz4/r;)Ljava/lang/reflect/Type;

    move-result-object v3

    :goto_318
    invoke-static {v1, v6, v3}, Lw3/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/annotation/Annotation;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/annotation/Annotation;

    invoke-static {v10}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v15}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v3, v10, v12}, Lv3/e0;->d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;

    move-result-object v14

    invoke-interface {v15}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lx3/a$a;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type kotlin.reflect.KProperty1<kotlin.Any, kotlin.Any?>"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_348

    invoke-interface {v5}, Lz4/m;->getIndex()I

    move-result v7

    goto :goto_349

    :cond_348
    const/4 v7, -0x1

    :goto_349
    move/from16 v17, v7

    move-object v12, v10

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lx3/a$a;-><init>(Ljava/lang/String;Lv3/r;Lz4/p;Lz4/m;I)V

    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_354
    const/4 v3, 0x1

    goto/16 :goto_167

    :cond_357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not possible!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_363
    const/16 v0, 0x27

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has a constructor parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lz4/m;->getType()Lz4/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but a property of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/m;

    invoke-interface {v2}, Lz4/m;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx3/a$a;

    if-nez v3, :cond_3d0

    invoke-interface {v2}, Lz4/m;->c()Z

    move-result v4

    if-eqz v4, :cond_3ce

    goto :goto_3d0

    :cond_3ce
    const/4 v4, 0x0

    goto :goto_3d1

    :cond_3d0
    :goto_3d0
    const/4 v4, 0x1

    :goto_3d1
    if-eqz v4, :cond_3d7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3ab

    :cond_3d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No property for required constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v15, v1

    :goto_3ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_433

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx3/a$a;

    add-int/lit8 v3, v15, 0x1

    iget-object v11, v1, Lx3/a$a;->a:Ljava/lang/String;

    iget-object v12, v1, Lx3/a$a;->b:Lv3/r;

    iget-object v13, v1, Lx3/a$a;->c:Lz4/p;

    iget-object v14, v1, Lx3/a$a;->d:Lz4/m;

    const-string v1, "jsonName"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "property"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lx3/a$a;

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lx3/a$a;-><init>(Ljava/lang/String;Lv3/r;Lz4/p;Lz4/m;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v3

    goto :goto_3ff

    :cond_433
    invoke-static {v0}, Li4/v;->D(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_449
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx3/a$a;

    iget-object v4, v4, Lx3/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_449

    :cond_45b
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lv3/w$a;->a([Ljava/lang/String;)Lv3/w$a;

    move-result-object v2

    new-instance v3, Lx3/a;

    const-string v4, "options"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v9, v0, v1, v2}, Lx3/a;-><init>(Lz4/h;Ljava/util/List;Ljava/util/List;Lv3/w$a;)V

    invoke-virtual {v3}, Lv3/r;->b()Lv3/r;

    move-result-object v0

    return-object v0

    :cond_47e
    const-string v0, "Cannot reflectively serialize sealed class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Please register an adapter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49e
    const-string v0, "Cannot serialize object declaration "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b9
    const-string v0, "Cannot serialize inner class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d4
    const-string v0, "Cannot serialize abstract class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4ef
    const-string v0, "Cannot serialize local class or object expression "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50a
    throw v7
.end method
