.class public final Lo5/e;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/a;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaAnnotation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaAnnotation.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaAnnotation\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,43:1\n11335#2:44\n11670#2,3:45\n*S KotlinDebug\n*F\n+ 1 ReflectJavaAnnotation.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaAnnotation\n*L\n26#1:44\n26#1:45,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .registers 3

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/w;-><init>()V

    iput-object p1, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public C()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public c()Lh6/b;
    .registers 1

    iget-object p0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lo5/e;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    check-cast p1, Lo5/e;

    iget-object p1, p1, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getArguments()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "annotation.annotationClass.java.declaredMethods"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_84

    aget-object v5, v0, v4

    iget-object v6, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "method.invoke(annotation)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    const-string v7, "value"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lo5/d;->a:Ljava/util/List;

    const-string v8, "<this>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v8, Ljava/lang/Enum;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_55

    new-instance v7, Lo5/x;

    check-cast v6, Ljava/lang/Enum;

    invoke-direct {v7, v5, v6}, Lo5/x;-><init>(Lh6/f;Ljava/lang/Enum;)V

    goto :goto_7e

    :cond_55
    instance-of v7, v6, Ljava/lang/annotation/Annotation;

    if-eqz v7, :cond_61

    new-instance v7, Lo5/g;

    check-cast v6, Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v5, v6}, Lo5/g;-><init>(Lh6/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_7e

    :cond_61
    instance-of v7, v6, [Ljava/lang/Object;

    if-eqz v7, :cond_6d

    new-instance v7, Lo5/i;

    check-cast v6, [Ljava/lang/Object;

    invoke-direct {v7, v5, v6}, Lo5/i;-><init>(Lh6/f;[Ljava/lang/Object;)V

    goto :goto_7e

    :cond_6d
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_79

    new-instance v7, Lo5/t;

    check-cast v6, Ljava/lang/Class;

    invoke-direct {v7, v5, v6}, Lo5/t;-><init>(Lh6/f;Ljava/lang/Class;)V

    goto :goto_7e

    :cond_79
    new-instance v7, Lo5/z;

    invoke-direct {v7, v5, v6}, Lo5/z;-><init>(Lh6/f;Ljava/lang/Object;)V

    :goto_7e
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_84
    return-object v1
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public q()Ly5/g;
    .registers 2

    new-instance v0, Lo5/s;

    iget-object p0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lo5/s;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo5/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo5/e;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
