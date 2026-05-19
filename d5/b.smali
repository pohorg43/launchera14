.class public Ld5/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/Map;

.field public final c:Lh4/f;

.field public final d:Lh4/f;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Lh4/f;Lh4/f;Ljava/util/List;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/b;->a:Ljava/lang/Class;

    iput-object p2, p0, Ld5/b;->b:Ljava/util/Map;

    iput-object p3, p0, Ld5/b;->c:Lh4/f;

    iput-object p4, p0, Ld5/b;->d:Lh4/f;

    iput-object p5, p0, Ld5/b;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object p1, p0, Ld5/b;->a:Ljava/lang/Class;

    iget-object v0, p0, Ld5/b;->b:Ljava/util/Map;

    iget-object v1, p0, Ld5/b;->c:Lh4/f;

    iget-object v2, p0, Ld5/b;->d:Lh4/f;

    iget-object p0, p0, Ld5/b;->e:Ljava/util/List;

    const-string v3, "$annotationClass"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$values"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$toString$delegate"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$hashCode$delegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$methods"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x69e9ad94

    if-eq v4, v5, :cond_5f

    const v1, 0x8cdac1b

    if-eq v4, v1, :cond_46

    const v1, 0x5620bf09

    if-eq v4, v1, :cond_3d

    goto :goto_71

    :cond_3d
    const-string v1, "annotationType"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    goto :goto_71

    :cond_46
    const-string v1, "hashCode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_71

    :cond_4f
    invoke-interface {v2}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_194

    :cond_5f
    const-string v2, "toString"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_71

    :cond_68
    invoke-interface {v1}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_194

    :cond_71
    :goto_71
    const-string v1, "equals"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18a

    const/4 v1, 0x1

    if-eqz p3, :cond_82

    array-length v4, p3

    if-ne v4, v1, :cond_82

    move v4, v1

    goto :goto_83

    :cond_82
    move v4, v2

    :goto_83
    if-eqz v4, :cond_18a

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Li4/k;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    if-eqz p3, :cond_97

    move-object p3, p2

    check-cast p3, Ljava/lang/annotation/Annotation;

    goto :goto_98

    :cond_97
    move-object p3, v3

    :goto_98
    if-eqz p3, :cond_a4

    invoke-static {p3}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object p3

    if-eqz p3, :cond_a4

    invoke-static {p3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v3

    :cond_a4
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_185

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_b6

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b6

    goto/16 :goto_181

    :cond_b6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_ba
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_181

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p3, [Z

    if-eqz v3, :cond_e7

    check-cast p3, [Z

    const-string v3, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Z

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    goto/16 :goto_17d

    :cond_e7
    instance-of v3, p3, [C

    if-eqz v3, :cond_fa

    check-cast p3, [C

    const-string v3, "null cannot be cast to non-null type kotlin.CharArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [C

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    goto/16 :goto_17d

    :cond_fa
    instance-of v3, p3, [B

    if-eqz v3, :cond_10d

    check-cast p3, [B

    const-string v3, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [B

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    goto/16 :goto_17d

    :cond_10d
    instance-of v3, p3, [S

    if-eqz v3, :cond_11f

    check-cast p3, [S

    const-string v3, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [S

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    goto :goto_17d

    :cond_11f
    instance-of v3, p3, [I

    if-eqz v3, :cond_131

    check-cast p3, [I

    const-string v3, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [I

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    goto :goto_17d

    :cond_131
    instance-of v3, p3, [F

    if-eqz v3, :cond_143

    check-cast p3, [F

    const-string v3, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [F

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    goto :goto_17d

    :cond_143
    instance-of v3, p3, [J

    if-eqz v3, :cond_155

    check-cast p3, [J

    const-string v3, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [J

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    goto :goto_17d

    :cond_155
    instance-of v3, p3, [D

    if-eqz v3, :cond_167

    check-cast p3, [D

    const-string v3, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [D

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    goto :goto_17d

    :cond_167
    instance-of v3, p3, [Ljava/lang/Object;

    if-eqz v3, :cond_179

    check-cast p3, [Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    goto :goto_17d

    :cond_179
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_17d
    if-nez p1, :cond_ba

    move p0, v2

    goto :goto_182

    :cond_181
    :goto_181
    move p0, v1

    :goto_182
    if-eqz p0, :cond_185

    move v2, v1

    :cond_185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_194

    :cond_18a
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_195

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_194
    :goto_194
    return-object p1

    :cond_195
    new-instance p0, Lc5/n0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Method is not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (args: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1ad

    new-array p3, v2, [Ljava/lang/Object;

    :cond_1ad
    invoke-static {p3}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
