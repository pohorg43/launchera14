.class public abstract Lc5/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz4/c;
.implements Lc5/m0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz4/c<",
        "TR;>;",
        "Lc5/m0;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKCallableImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl\n+ 2 util.kt\nkotlin/reflect/jvm/internal/UtilKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,243:1\n224#2,5:244\n224#2,2:249\n226#2,3:252\n224#2,5:255\n224#2,5:260\n224#2,2:269\n226#2,3:273\n26#3:251\n1549#4:265\n1620#4,3:266\n37#5,2:271\n*S KotlinDebug\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl\n*L\n106#1:244,5\n148#1:249,2\n148#1:252,3\n187#1:255,5\n195#1:260,5\n215#1:269,2\n215#1:273,3\n149#1:251\n201#1:265\n201#1:266,3\n216#1:271,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Ljava/util/ArrayList<",
            "Lz4/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Lc5/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Ljava/util/List<",
            "Lc5/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc5/i$b;

    invoke-direct {v0, p0}, Lc5/i$b;-><init>(Lc5/i;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    const-string v1, "lazySoft { descriptor.computeAnnotations() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lc5/i;->a:Lc5/p0$a;

    new-instance v0, Lc5/i$c;

    invoke-direct {v0, p0}, Lc5/i$c;-><init>(Lc5/i;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    const-string v1, "lazySoft {\n        val d…ze()\n        result\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lc5/i;->b:Lc5/p0$a;

    new-instance v0, Lc5/i$d;

    invoke-direct {v0, p0}, Lc5/i$d;-><init>(Lc5/i;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    const-string v1, "lazySoft {\n        KType…eturnType\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lc5/i;->c:Lc5/p0$a;

    new-instance v0, Lc5/i$e;

    invoke-direct {v0, p0}, Lc5/i$e;-><init>(Lc5/i;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    const-string v1, "lazySoft {\n        descr…this, descriptor) }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lc5/i;->d:Lc5/p0$a;

    new-instance v0, Lc5/i$a;

    invoke-direct {v0, p0}, Lc5/i$a;-><init>(Lc5/i;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    const-string v1, "lazySoft {\n        val p…\n\n        arguments\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lc5/i;->e:Lc5/p0$a;

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p0

    invoke-interface {p0, p1}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    new-instance p1, La5/a;

    invoke-direct {p1, p0}, La5/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lz4/m;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/i;->j()Z

    move-result v1

    const-string v2, "No argument provided for a required parameter: "

    const-string v3, "This callable does not support a default call: "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_b6

    invoke-virtual {p0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz4/m;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3d

    goto :goto_6f

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Annotation argument value cannot be null ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    invoke-interface {v6}, Lz4/m;->c()Z

    move-result v7

    if-eqz v7, :cond_61

    move-object v7, v5

    goto :goto_6f

    :cond_61
    invoke-interface {v6}, Lz4/m;->a()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v6}, Lz4/m;->getType()Lz4/r;

    move-result-object v6

    invoke-virtual {p0, v6}, Lc5/i;->d(Lz4/r;)Ljava/lang/Object;

    move-result-object v7

    :goto_6f
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    invoke-virtual {p0}, Lc5/i;->h()Ld5/f;

    move-result-object p1

    if-eqz p1, :cond_a1

    :try_start_8e
    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_8e .. :try_end_98} :catch_9a

    goto/16 :goto_195

    :catch_9a
    move-exception p0

    new-instance p1, La5/a;

    invoke-direct {p1, p0}, La5/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1

    :cond_a1
    new-instance p1, Lc5/n0;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_e2

    :try_start_c4
    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p1

    invoke-interface {p0}, Lz4/c;->isSuspend()Z

    move-result p0

    if-eqz p0, :cond_d3

    new-array p0, v6, [Ll4/d;

    aput-object v5, p0, v4

    goto :goto_d5

    :cond_d3
    new-array p0, v4, [Ll4/d;

    :goto_d5
    invoke-interface {p1, p0}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d9
    .catch Ljava/lang/IllegalAccessException; {:try_start_c4 .. :try_end_d9} :catch_db

    goto/16 :goto_195

    :catch_db
    move-exception p0

    new-instance p1, La5/a;

    invoke-direct {p1, p0}, La5/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1

    :cond_e2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Lz4/c;->isSuspend()Z

    move-result v7

    add-int/2addr v7, v1

    iget-object v1, p0, Lc5/i;->e:Lc5/p0$a;

    invoke-virtual {v1}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lz4/c;->isSuspend()Z

    move-result v8

    if-eqz v8, :cond_105

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    aput-object v5, v1, v8

    :cond_105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :cond_10a
    :goto_10a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_170

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz4/m;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_127

    invoke-interface {v8}, Lz4/m;->getIndex()I

    move-result v9

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v1, v9

    goto :goto_150

    :cond_127
    invoke-interface {v8}, Lz4/m;->c()Z

    move-result v9

    if-eqz v9, :cond_14a

    div-int/lit8 v4, v5, 0x20

    add-int/2addr v4, v7

    aget-object v9, v1, v4

    const-string v10, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rem-int/lit8 v10, v5, 0x20

    shl-int v10, v6, v10

    or-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v4

    move v4, v6

    goto :goto_150

    :cond_14a
    invoke-interface {v8}, Lz4/m;->a()Z

    move-result v9

    if-eqz v9, :cond_15b

    :goto_150
    invoke-interface {v8}, Lz4/m;->f()Lz4/m$a;

    move-result-object v8

    sget-object v9, Lz4/m$a;->c:Lz4/m$a;

    if-ne v8, v9, :cond_10a

    add-int/lit8 v5, v5, 0x1

    goto :goto_10a

    :cond_15b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_170
    if-nez v4, :cond_18b

    :try_start_172
    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p0

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_183
    .catch Ljava/lang/IllegalAccessException; {:try_start_172 .. :try_end_183} :catch_184

    goto :goto_195

    :catch_184
    move-exception p0

    new-instance p1, La5/a;

    invoke-direct {p1, p0}, La5/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1

    :cond_18b
    invoke-virtual {p0}, Lc5/i;->h()Ld5/f;

    move-result-object p1

    if-eqz p1, :cond_19d

    :try_start_191
    invoke-interface {p1, v1}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_195
    .catch Ljava/lang/IllegalAccessException; {:try_start_191 .. :try_end_195} :catch_196

    :goto_195
    return-object p0

    :catch_196
    move-exception p0

    new-instance p1, La5/a;

    invoke-direct {p1, p0}, La5/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1

    :cond_19d
    new-instance p1, Lc5/n0;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lz4/r;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lb5/b;->b(Lz4/r;)Lz4/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "type.jvmErasure.java.run…\"\n            )\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1d
    new-instance p1, Lc5/n0;

    const-string v0, "Cannot instantiate the default empty array of type "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", because it is not an array type"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract e()Ld5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract g()Lc5/t;
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/i;->a:Lc5/p0$a;

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_annotations()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/m;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/i;->b:Lc5/p0$a;

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_parameters()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getReturnType()Lz4/r;
    .registers 2

    iget-object p0, p0, Lc5/i;->c:Lc5/p0$a;

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_returnType()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz4/r;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/s;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/i;->d:Lc5/p0$a;

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_typeParameters()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getVisibility()Lz4/v;
    .registers 2

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object p0

    const-string v0, "descriptor.visibility"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/w0;->a:Lh6/c;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li5/s;->e:Li5/t;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p0, Lz4/v;->a:Lz4/v;

    goto :goto_4b

    :cond_1f
    sget-object v0, Li5/s;->c:Li5/t;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p0, Lz4/v;->b:Lz4/v;

    goto :goto_4b

    :cond_2a
    sget-object v0, Li5/s;->d:Li5/t;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object p0, Lz4/v;->c:Lz4/v;

    goto :goto_4b

    :cond_35
    sget-object v0, Li5/s;->a:Li5/t;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 p0, 0x1

    goto :goto_45

    :cond_3f
    sget-object v0, Li5/s;->b:Li5/t;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_45
    if-eqz p0, :cond_4a

    sget-object p0, Lz4/v;->d:Lz4/v;

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    return-object p0
.end method

.method public abstract h()Ld5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract i()Li5/b;
.end method

.method public isAbstract()Z
    .registers 2

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->d:Li5/d0;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isFinal()Z
    .registers 2

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->a:Li5/d0;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isOpen()Z
    .registers 2

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->c:Li5/d0;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final j()Z
    .registers 3

    invoke-interface {p0}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lc5/i;->g()Lc5/t;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public abstract k()Z
.end method
