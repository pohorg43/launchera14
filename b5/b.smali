.class public final Lb5/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "KTypesJvm"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKTypesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KTypesJvm.kt\nkotlin/reflect/jvm/KTypesJvm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n288#2,2:53\n*S KotlinDebug\n*F\n+ 1 KTypesJvm.kt\nkotlin/reflect/jvm/KTypesJvm\n*L\n44#1:53,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lz4/f;)Lz4/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/f;",
            ")",
            "Lz4/d<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lz4/d;

    if-eqz v0, :cond_c

    check-cast p0, Lz4/d;

    goto :goto_70

    :cond_c
    instance-of v0, p0, Lz4/s;

    if-eqz v0, :cond_71

    check-cast p0, Lz4/s;

    invoke-interface {p0}, Lz4/s;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lz4/r;

    const-string v4, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lc5/k0;

    iget-object v3, v3, Lc5/k0;->a:Ly6/l0;

    invoke-virtual {v3}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    instance-of v4, v3, Li5/e;

    if-eqz v4, :cond_40

    move-object v2, v3

    check-cast v2, Li5/e;

    :cond_40
    if-eqz v2, :cond_54

    invoke-interface {v2}, Li5/e;->f()Li5/f;

    move-result-object v3

    sget-object v4, Li5/f;->b:Li5/f;

    if-eq v3, v4, :cond_54

    invoke-interface {v2}, Li5/e;->f()Li5/f;

    move-result-object v2

    sget-object v3, Li5/f;->e:Li5/f;

    if-eq v2, v3, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    if-eqz v2, :cond_1a

    move-object v2, v1

    :cond_58
    check-cast v2, Lz4/r;

    if-nez v2, :cond_63

    invoke-static {p0}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lz4/r;

    :cond_63
    if-eqz v2, :cond_6a

    invoke-static {v2}, Lb5/b;->b(Lz4/r;)Lz4/d;

    move-result-object p0

    goto :goto_70

    :cond_6a
    const-class p0, Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    :goto_70
    return-object p0

    :cond_71
    new-instance v0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lz4/r;)Lz4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/r;",
            ")",
            "Lz4/d<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lb5/b;->a(Lz4/f;)Lz4/d;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    new-instance v0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
