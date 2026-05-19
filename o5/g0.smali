.class public final Lo5/g0;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/d;
.implements Ly5/y;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaTypeParameter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaTypeParameter.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaTypeParameter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,50:1\n11335#2:51\n11670#2,3:52\n*S KotlinDebug\n*F\n+ 1 ReflectJavaTypeParameter.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaTypeParameter\n*L\n29#1:51\n29#1:52,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "typeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/w;-><init>()V

    iput-object p1, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public K(Lh6/c;)Lo5/e;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/g0;->M()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0, p1}, Lo5/h;->a([Ljava/lang/annotation/Annotation;Lh6/c;)Lo5/e;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public L()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo5/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo5/g0;->M()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Lo5/h;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    goto :goto_13

    :cond_11
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_13
    return-object p0
.end method

.method public M()Ljava/lang/reflect/AnnotatedElement;
    .registers 2

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v0, p0, Ljava/lang/reflect/AnnotatedElement;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lo5/g0;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Lo5/g0;

    iget-object p1, p1, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public bridge synthetic f(Lh6/c;)Ly5/a;
    .registers 2

    invoke-virtual {p0, p1}, Lo5/g0;->K(Lh6/c;)Lo5/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .registers 1

    invoke-virtual {p0}, Lo5/g0;->L()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 2

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v0, "identifier(typeVariable.name)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getUpperBounds()Ljava/util/Collection;
    .registers 6

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "typeVariable.bounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    new-instance v4, Lo5/u;

    invoke-direct {v4, v3}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    invoke-static {v0}, Li4/v;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo5/u;

    if-eqz p0, :cond_2d

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_38
    return-object v0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo5/g0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo5/g0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
