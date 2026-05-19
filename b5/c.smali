.class public final Lb5/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "ReflectJvmMapping"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJvmMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJvmMapping.kt\nkotlin/reflect/jvm/ReflectJvmMapping\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n800#2,11:149\n288#2,2:160\n288#2,2:162\n800#2,11:164\n288#2,2:175\n288#2,2:177\n288#2,2:180\n288#2,2:182\n1#3:179\n*S KotlinDebug\n*F\n+ 1 ReflectJvmMapping.kt\nkotlin/reflect/jvm/ReflectJvmMapping\n*L\n99#1:149,11\n99#1:160,2\n102#1:162,2\n122#1:164,11\n122#1:175,2\n128#1:177,2\n136#1:180,2\n146#1:182,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lz4/h;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/h<",
            "+TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w0;->a(Ljava/lang/Object;)Lc5/i;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ld5/f;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1f

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    :cond_1f
    return-object v0
.end method

.method public static final b(Lz4/n;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w0;->c(Ljava/lang/Object;)Lc5/g0;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lc5/g0;->p()Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final c(Lz4/n;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz4/n;->getGetter()Lz4/n$b;

    move-result-object p0

    invoke-static {p0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lz4/h;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/h<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w0;->a(Ljava/lang/Object;)Lc5/i;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ld5/f;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1f

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    :cond_1f
    return-object v0
.end method

.method public static final e(Lz4/r;)Ljava/lang/reflect/Type;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lc5/k0;

    invoke-virtual {v1}, Lc5/k0;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_26

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/jvm/internal/KTypeBase;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/KTypeBase;

    invoke-interface {v0}, Lkotlin/jvm/internal/KTypeBase;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v1, v0

    goto :goto_26

    :cond_20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz4/y;->b(Lz4/r;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    move-object v1, p0

    :cond_26
    :goto_26
    return-object v1
.end method
