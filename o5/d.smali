.class public final Lo5/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nreflectClassUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 reflectClassUtil.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectClassUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1549#2:100\n1620#2,3:101\n1549#2:104\n1620#2,3:105\n1559#2:108\n1590#2,4:109\n*S KotlinDebug\n*F\n+ 1 reflectClassUtil.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectClassUtilKt\n*L\n34#1:100\n34#1:101,3\n35#1:104\n35#1:105,3\n50#1:108\n50#1:109,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz4/d<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lh4/a<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    const/16 v0, 0x8

    new-array v1, v0, [Lz4/d;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo5/d;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lz4/d;

    invoke-static {v12}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v12}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v12

    new-instance v14, Lh4/j;

    invoke-direct {v14, v13, v12}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_7e
    invoke-static {v2}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lo5/d;->b:Ljava/util/Map;

    sget-object v1, Lo5/d;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lz4/d;

    invoke-static {v12}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v12}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object v12

    new-instance v14, Lh4/j;

    invoke-direct {v14, v13, v12}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_b0
    invoke-static {v2}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lo5/d;->c:Ljava/util/Map;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lkotlin/jvm/functions/Function0;

    aput-object v2, v1, v3

    const-class v2, Lkotlin/jvm/functions/Function1;

    aput-object v2, v1, v4

    const-class v2, Lkotlin/jvm/functions/Function2;

    aput-object v2, v1, v5

    const-class v2, Lkotlin/jvm/functions/Function3;

    aput-object v2, v1, v6

    const-class v2, Lkotlin/jvm/functions/Function4;

    aput-object v2, v1, v7

    const-class v2, Lkotlin/jvm/functions/Function5;

    aput-object v2, v1, v8

    const-class v2, Lkotlin/jvm/functions/Function6;

    aput-object v2, v1, v9

    const-class v2, Lkotlin/jvm/functions/Function7;

    aput-object v2, v1, v10

    const-class v2, Lkotlin/jvm/functions/Function8;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-class v2, Lkotlin/jvm/functions/Function9;

    aput-object v2, v1, v0

    const-class v0, Lkotlin/jvm/functions/Function10;

    aput-object v0, v1, v11

    const/16 v0, 0xb

    const-class v2, Lkotlin/jvm/functions/Function11;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-class v2, Lkotlin/jvm/functions/Function12;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-class v2, Lkotlin/jvm/functions/Function13;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-class v2, Lkotlin/jvm/functions/Function14;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-class v2, Lkotlin/jvm/functions/Function15;

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-class v2, Lkotlin/jvm/functions/Function16;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-class v2, Lkotlin/jvm/functions/Function17;

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-class v2, Lkotlin/jvm/functions/Function18;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-class v2, Lkotlin/jvm/functions/Function19;

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-class v2, Lkotlin/jvm/functions/Function20;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-class v2, Lkotlin/jvm/functions/Function21;

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-class v2, Lkotlin/jvm/functions/Function22;

    aput-object v2, v1, v0

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_164

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    if-ltz v3, :cond_15f

    check-cast v2, Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lh4/j;

    invoke-direct {v5, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_141

    :cond_15f
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_164
    invoke-static {v1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo5/d;->d:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lh6/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh6/b;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "simpleName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_33

    goto :goto_5f

    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {v0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object p0

    goto :goto_59

    :cond_4c
    new-instance v0, Lh6/c;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p0

    :goto_59
    const-string v0, "declaringClass?.classId?…Id.topLevel(FqName(name))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_79

    :cond_5f
    :goto_5f
    new-instance v0, Lh6/c;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance p0, Lh6/b;

    invoke-virtual {v0}, Lh6/c;->e()Lh6/c;

    move-result-object v2

    invoke-virtual {v0}, Lh6/c;->g()Lh6/f;

    move-result-object v0

    invoke-static {v0}, Lh6/c;->k(Lh6/f;)Lh6/c;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    :goto_79
    return-object p0

    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t compute ClassId for array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t compute ClassId for primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d0

    goto/16 :goto_80

    :sswitch_18
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "S"

    goto/16 :goto_ce

    :sswitch_24
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "F"

    goto/16 :goto_ce

    :sswitch_30
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "Z"

    goto/16 :goto_ce

    :sswitch_3c
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "V"

    goto/16 :goto_ce

    :sswitch_48
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "J"

    goto/16 :goto_ce

    :sswitch_54
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "C"

    goto :goto_ce

    :sswitch_5f
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "B"

    goto :goto_ce

    :sswitch_6a
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "I"

    goto :goto_ce

    :sswitch_75
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "D"

    goto :goto_ce

    :cond_80
    :goto_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    const-string v5, "name"

    if-eqz v0, :cond_b1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4, v3, v2, v1}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    goto :goto_ce

    :cond_b1
    const/16 v0, 0x4c

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4, v3, v2, v1}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_ce
    return-object p0

    nop

    :sswitch_data_d0
    .sparse-switch
        -0x4f08842f -> :sswitch_75
        0x197ef -> :sswitch_6a
        0x2e6108 -> :sswitch_5f
        0x2e9356 -> :sswitch_54
        0x32c67c -> :sswitch_48
        0x375194 -> :sswitch_3c
        0x3db6c28 -> :sswitch_30
        0x5d0225c -> :sswitch_24
        0x685847c -> :sswitch_18
    .end sparse-switch
.end method

.method public static final c(Ljava/lang/reflect/Type;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_c

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_23

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "actualTypeArguments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_23
    sget-object v0, Lo5/d$a;->a:Lo5/d$a;

    invoke-static {p0, v0}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/d$b;->a:Lo5/d$b;

    invoke-static {p0, v0}, Lj7/p;->o(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "getSystemClassLoader()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    return-object p0
.end method

.method public static final e(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method
