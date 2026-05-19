.class public final Lc5/w0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/w0$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\nkotlin/reflect/jvm/internal/UtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,311:1\n1603#2,9:312\n1855#2:321\n1856#2:323\n1612#2:324\n1747#2,3:325\n1360#2:328\n1446#2,5:329\n1603#2,9:334\n1855#2:343\n1856#2:346\n1612#2:347\n1549#2:348\n1620#2,3:349\n1#3:322\n1#3:344\n1#3:345\n1#3:352\n*S KotlinDebug\n*F\n+ 1 util.kt\nkotlin/reflect/jvm/internal/UtilKt\n*L\n131#1:312,9\n131#1:321\n131#1:323\n131#1:324\n140#1:325,3\n141#1:328\n141#1:329,5\n161#1:334,9\n161#1:343\n161#1:346\n161#1:347\n191#1:348\n191#1:349,3\n131#1:322\n161#1:345\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc5/w0;->a:Lh6/c;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lc5/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc5/i<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lc5/i;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lc5/i;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    invoke-static {p0}, Lc5/w0;->b(Ljava/lang/Object;)Lc5/x;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-static {p0}, Lc5/w0;->c(Ljava/lang/Object;)Lc5/g0;

    move-result-object v0

    :cond_16
    :goto_16
    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Lc5/x;
    .registers 3

    instance-of v0, p0, Lc5/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lc5/x;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_24

    instance-of v0, p0, Lkotlin/jvm/internal/FunctionReference;

    if-eqz v0, :cond_13

    check-cast p0, Lkotlin/jvm/internal/FunctionReference;

    goto :goto_14

    :cond_13
    move-object p0, v1

    :goto_14
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lz4/c;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    move-object p0, v1

    :goto_1c
    instance-of v0, p0, Lc5/x;

    if-eqz v0, :cond_25

    move-object v1, p0

    check-cast v1, Lc5/x;

    goto :goto_25

    :cond_24
    move-object v1, v0

    :cond_25
    :goto_25
    return-object v1
.end method

.method public static final c(Ljava/lang/Object;)Lc5/g0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc5/g0<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lc5/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lc5/g0;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_24

    instance-of v0, p0, Lkotlin/jvm/internal/PropertyReference;

    if-eqz v0, :cond_13

    check-cast p0, Lkotlin/jvm/internal/PropertyReference;

    goto :goto_14

    :cond_13
    move-object p0, v1

    :goto_14
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->compute()Lz4/c;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    move-object p0, v1

    :goto_1c
    instance-of v0, p0, Lc5/g0;

    if-eqz v0, :cond_25

    move-object v1, p0

    check-cast v1, Lc5/g0;

    goto :goto_25

    :cond_24
    move-object v1, v0

    :cond_25
    :goto_25
    return-object v1
.end method

.method public static final d(Lj5/a;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/c;

    invoke-interface {v1}, Lj5/c;->getSource()Li5/v0;

    move-result-object v2

    instance-of v3, v2, Ln5/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    check-cast v2, Ln5/b;

    iget-object v4, v2, Ln5/b;->b:Ljava/lang/annotation/Annotation;

    goto :goto_45

    :cond_2c
    instance-of v3, v2, Ln5/j$a;

    if-eqz v3, :cond_41

    check-cast v2, Ln5/j$a;

    iget-object v1, v2, Ln5/j$a;->b:Lo5/w;

    instance-of v2, v1, Lo5/e;

    if-eqz v2, :cond_3b

    check-cast v1, Lo5/e;

    goto :goto_3c

    :cond_3b
    move-object v1, v4

    :goto_3c
    if-eqz v1, :cond_45

    iget-object v4, v1, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    goto :goto_45

    :cond_41
    invoke-static {v1}, Lc5/w0;->i(Lj5/c;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    :cond_45
    :goto_45
    if-eqz v4, :cond_12

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_4b
    const-string p0, "Container"

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_79

    :cond_55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const/4 v2, 0x1

    goto :goto_7a

    :cond_79
    :goto_79
    move v2, v1

    :goto_7a
    if-eqz v2, :cond_ce

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const-class v5, Lkotlin/jvm/internal/RepeatableContainer;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_c5

    new-array v5, v1, [Ljava/lang/Class;

    const-string v6, "value"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/annotation/Annotation;

    invoke-static {v3}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_c9

    :cond_c5
    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_c9
    invoke-static {v2, v3}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_85

    :cond_cd
    move-object v0, v2

    :cond_ce
    return-object v0
.end method

.method public static final e(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a8

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a9

    :cond_1e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_a9

    :cond_2d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_a9

    :cond_3b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_a9

    :cond_48
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_a9

    :cond_55
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_a9

    :cond_63
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_a9

    :cond_72
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_a9

    :cond_81
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter with void type is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    const/4 p0, 0x0

    :goto_a9
    return-object p0
.end method

.method public static final f(Ljava/lang/Class;Li6/p;Le6/c;Le6/g;Le6/a;Lkotlin/jvm/functions/Function2;)Li5/a;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Li6/p;",
            "D::",
            "Li5/a;",
            ">(",
            "Ljava/lang/Class<",
            "*>;TM;",
            "Le6/c;",
            "Le6/g;",
            "Le6/a;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lu6/v;",
            "-TM;+TD;>;)TD;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p5

    const-string v2, "moduleAnchor"

    move-object v3, p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "proto"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nameResolver"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "metadataVersion"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/o0;->a(Ljava/lang/Class;)Ln5/i;

    move-result-object v2

    instance-of v3, v0, Lc6/i;

    if-eqz v3, :cond_37

    move-object v3, v0

    check-cast v3, Lc6/i;

    iget-object v3, v3, Lc6/i;->i:Ljava/util/List;

    :goto_35
    move-object v12, v3

    goto :goto_41

    :cond_37
    instance-of v3, v0, Lc6/n;

    if-eqz v3, :cond_6a

    move-object v3, v0

    check-cast v3, Lc6/n;

    iget-object v3, v3, Lc6/n;->i:Ljava/util/List;

    goto :goto_35

    :goto_41
    new-instance v13, Lu6/m;

    iget-object v4, v2, Ln5/i;->a:Lu6/k;

    iget-object v6, v4, Lu6/k;->b:Li5/e0;

    sget-object v2, Le6/h;->b:Le6/h$a;

    sget-object v2, Le6/h;->b:Le6/h$a;

    sget-object v8, Le6/h;->c:Le6/h;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "typeParameters"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v13

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v12}, Lu6/m;-><init>(Lu6/k;Le6/c;Li5/l;Le6/g;Le6/h;Le6/a;Lw6/i;Lu6/f0;Ljava/util/List;)V

    new-instance v2, Lu6/v;

    invoke-direct {v2, v13}, Lu6/v;-><init>(Lu6/m;)V

    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a;

    return-object v0

    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final g(Li5/a;)Li5/r0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/a;->I()Li5/r0;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->C0()Li5/r0;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return-object p0
.end method

.method public static final h(Ljava/lang/ClassLoader;Lh6/b;I)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lh6/b;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lh5/c;->a:Lh5/c;

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object v1

    invoke-virtual {v1}, Lh6/c;->j()Lh6/d;

    move-result-object v1

    const-string v2, "kotlinClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lh5/c;->h(Lh6/d;)Lh6/b;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move-object p1, v0

    :goto_17
    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v0

    invoke-virtual {v0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClassId.packageFqName.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "javaClassId.relativeClassName.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kotlin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_10c

    goto/16 :goto_b6

    :sswitch_42
    const-string v1, "LongArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto/16 :goto_b6

    :cond_4c
    const-class p0, [J

    goto/16 :goto_10b

    :sswitch_50
    const-string v1, "FloatArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_b6

    :cond_59
    const-class p0, [F

    goto/16 :goto_10b

    :sswitch_5d
    const-string v1, "IntArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_b6

    :cond_66
    const-class p0, [I

    goto/16 :goto_10b

    :sswitch_6a
    const-string v1, "Array"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_b6

    :cond_73
    const-class p0, [Ljava/lang/Object;

    goto/16 :goto_10b

    :sswitch_77
    const-string v1, "DoubleArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    goto :goto_b6

    :cond_80
    const-class p0, [D

    goto/16 :goto_10b

    :sswitch_84
    const-string v1, "ByteArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    goto :goto_b6

    :cond_8d
    const-class p0, [B

    goto/16 :goto_10b

    :sswitch_91
    const-string v1, "CharArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_b6

    :cond_9a
    const-class p0, [C

    goto/16 :goto_10b

    :sswitch_9e
    const-string v1, "ShortArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    goto :goto_b6

    :cond_a7
    const-class p0, [S

    goto :goto_10b

    :sswitch_aa
    const-string v1, "BooleanArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    goto :goto_b6

    :cond_b3
    const-class p0, [Z

    goto :goto_10b

    :cond_b6
    :goto_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-lez p2, :cond_ce

    move v3, v2

    :goto_bf
    if-ge v3, p2, :cond_c9

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    :cond_c9
    const-string v3, "L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ce
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d6

    const/4 v3, 0x1

    goto :goto_d7

    :cond_d6
    move v3, v2

    :goto_d7
    const/16 v4, 0x2e

    if-eqz v3, :cond_ed

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ed
    const/16 v0, 0x24

    const/4 v3, 0x4

    invoke-static {p1, v4, v0, v2, v3}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_fe

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lv1/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_10b
    return-object p0

    :sswitch_data_10c
    .sparse-switch
        -0x35c13ccf -> :sswitch_aa
        -0x2d7eb8a3 -> :sswitch_9e
        -0x2d0e4b7d -> :sswitch_91
        -0x47759ef -> :sswitch_84
        0x15568e8 -> :sswitch_77
        0x3c98239 -> :sswitch_6a
        0x23deebca -> :sswitch_5d
        0x388e557d -> :sswitch_50
        0x7d6d891d -> :sswitch_42
    .end sparse-switch
.end method

.method public static final i(Lj5/c;)Ljava/lang/annotation/Annotation;
    .registers 8

    invoke-static {p0}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-interface {p0}, Lj5/c;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm6/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "annotationClass.classLoader"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lc5/w0;->k(Lm6/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v4}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v4, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_59

    :cond_58
    move-object v5, v1

    :goto_59
    if-eqz v5, :cond_27

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_5f
    invoke-static {v2}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_8d
    invoke-static {v0, p0, v2}, Ld5/c;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static final j(Li5/e;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, La6/v;

    if-eqz v1, :cond_20

    check-cast v0, La6/v;

    iget-object p0, v0, La6/v;->b:La6/t;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ln5/e;

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    goto :goto_47

    :cond_20
    instance-of v1, v0, Ln5/j$a;

    if-eqz v1, :cond_32

    check-cast v0, Ln5/j$a;

    iget-object p0, v0, Ln5/j$a;->b:Lo5/w;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    goto :goto_47

    :cond_32
    invoke-static {p0}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v0

    if-nez v0, :cond_3a

    const/4 p0, 0x0

    return-object p0

    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lo5/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lc5/w0;->h(Ljava/lang/ClassLoader;Lh6/b;I)Ljava/lang/Class;

    move-result-object p0

    :goto_47
    return-object p0
.end method

.method public static final k(Lm6/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/g<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p0, Lm6/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Lm6/a;

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Lj5/c;

    invoke-static {p0}, Lc5/w0;->i(Lj5/c;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto/16 :goto_2bc

    :cond_11
    instance-of v0, p0, Lm6/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_24c

    check-cast p0, Lm6/b;

    instance-of v0, p0, Lm6/w;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Lm6/w;

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    if-eqz v0, :cond_2bc

    iget-object v0, v0, Lm6/w;->c:Ly6/l0;

    if-nez v0, :cond_29

    goto/16 :goto_2bc

    :cond_29
    iget-object v3, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm6/g;

    invoke-static {v5, p1}, Lc5/w0;->k(Lm6/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_50
    sget-object v3, Lf5/g;->e:Lh6/f;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    if-nez v3, :cond_5e

    move-object v3, v1

    goto :goto_62

    :cond_5e
    invoke-static {v3}, Lf5/g;->t(Li5/l;)Lf5/h;

    move-result-object v3

    :goto_62
    if-nez v3, :cond_66

    const/4 v3, -0x1

    goto :goto_6e

    :cond_66
    sget-object v5, Lc5/w0$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    :goto_6e
    packed-switch v3, :pswitch_data_2be

    :pswitch_71  #0x0
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :pswitch_77  #0x8
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [D

    :goto_81
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :pswitch_97  #0x7
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [J

    :goto_a1
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :pswitch_b7  #0x6
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [F

    :goto_c1
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :pswitch_d7  #0x5
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_e1
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    :pswitch_f7  #0x4
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [S

    :goto_101
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Short"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_101

    :pswitch_117  #0x3
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [B

    :goto_121
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    :pswitch_137  #0x2
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [C

    :goto_141
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Char"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_141

    :pswitch_157  #0x1
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Z

    :goto_161
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_161

    :cond_177
    move-object v1, p1

    goto/16 :goto_2bc

    :pswitch_17a  #0xffffffff
    invoke-static {v0}, Lf5/g;->A(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_231

    invoke-virtual {v0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/q1;

    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    const-string v3, "type.arguments.single().type"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    instance-of v5, v3, Li5/e;

    if-eqz v5, :cond_1a2

    check-cast v3, Li5/e;

    goto :goto_1a3

    :cond_1a2
    move-object v3, v1

    :goto_1a3
    if-eqz v3, :cond_216

    invoke-static {v0}, Lf5/g;->N(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_1b5
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b5

    :cond_1c5
    invoke-static {v3}, Lf5/g;->F(Li5/e;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/Class;

    :goto_1d5
    if-ge v2, p0, :cond_177

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d5

    :cond_1e5
    invoke-static {v3}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v0

    if-eqz v0, :cond_2bc

    invoke-static {p1, v0, v2}, Lc5/w0;->h(Ljava/lang/ClassLoader;Lh6/b;I)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1f3

    goto/16 :goto_2bc

    :cond_1f3
    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_20b
    if-ge v2, p0, :cond_2bc

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20b

    :cond_216
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a class type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not an array type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24c
    instance-of v0, p0, Lm6/j;

    if-eqz v0, :cond_26d

    check-cast p0, Lm6/j;

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Lh4/j;

    iget-object v0, p0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Lh6/b;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Lh6/f;

    invoke-static {p1, v0, v2}, Lc5/w0;->h(Ljava/lang/ClassLoader;Lh6/b;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_2bc

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_2bc

    :cond_26d
    instance-of v0, p0, Lm6/r;

    if-eqz v0, :cond_2ad

    check-cast p0, Lm6/r;

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Lm6/r$a;

    instance-of v0, p0, Lm6/r$a$b;

    if-eqz v0, :cond_288

    check-cast p0, Lm6/r$a$b;

    iget-object p0, p0, Lm6/r$a$b;->a:Lm6/f;

    iget-object v0, p0, Lm6/f;->a:Lh6/b;

    iget p0, p0, Lm6/f;->b:I

    invoke-static {p1, v0, p0}, Lc5/w0;->h(Ljava/lang/ClassLoader;Lh6/b;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2bc

    :cond_288
    instance-of p1, p0, Lm6/r$a$a;

    if-eqz p1, :cond_2a7

    check-cast p0, Lm6/r$a$a;

    iget-object p0, p0, Lm6/r$a$a;->a:Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_29f

    check-cast p0, Li5/e;

    goto :goto_2a0

    :cond_29f
    move-object p0, v1

    :goto_2a0
    if-eqz p0, :cond_2bc

    invoke-static {p0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2bc

    :cond_2a7
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_2ad
    instance-of p1, p0, Lm6/k;

    if-eqz p1, :cond_2b3

    const/4 p1, 0x1

    goto :goto_2b5

    :cond_2b3
    instance-of p1, p0, Lm6/t;

    :goto_2b5
    if-eqz p1, :cond_2b8

    goto :goto_2bc

    :cond_2b8
    invoke-virtual {p0}, Lm6/g;->b()Ljava/lang/Object;

    move-result-object v1

    :cond_2bc
    :goto_2bc
    return-object v1

    nop

    :pswitch_data_2be
    .packed-switch -0x1
        :pswitch_17a  #ffffffff
        :pswitch_71  #00000000
        :pswitch_157  #00000001
        :pswitch_137  #00000002
        :pswitch_117  #00000003
        :pswitch_f7  #00000004
        :pswitch_d7  #00000005
        :pswitch_b7  #00000006
        :pswitch_97  #00000007
        :pswitch_77  #00000008
    .end packed-switch
.end method
