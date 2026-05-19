.class public final Lo5/b0;
.super Lo5/a0;
.source ""

# interfaces
.implements Ly5/r;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaMethod.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaMethod\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,37:1\n1#2:38\n11335#3:39\n11670#3,3:40\n*S KotlinDebug\n*F\n+ 1 ReflectJavaMethod.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaMethod\n*L\n35#1:39\n35#1:40,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/a0;-><init>()V

    iput-object p1, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public H()Z
    .registers 4

    iget-object p0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_54

    const-string v1, "value"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lo5/d;->a:Ljava/util/List;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Lo5/x;

    check-cast p0, Ljava/lang/Enum;

    invoke-direct {v1, v0, p0}, Lo5/x;-><init>(Lh6/f;Ljava/lang/Enum;)V

    :goto_28
    move-object v0, v1

    goto :goto_54

    :cond_2a
    instance-of v1, p0, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_36

    new-instance v1, Lo5/g;

    check-cast p0, Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v0, p0}, Lo5/g;-><init>(Lh6/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_28

    :cond_36
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_42

    new-instance v1, Lo5/i;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v1, v0, p0}, Lo5/i;-><init>(Lh6/f;[Ljava/lang/Object;)V

    goto :goto_28

    :cond_42
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_4e

    new-instance v1, Lo5/t;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lo5/t;-><init>(Lh6/f;Ljava/lang/Class;)V

    goto :goto_28

    :cond_4e
    new-instance v1, Lo5/z;

    invoke-direct {v1, v0, p0}, Lo5/z;-><init>(Lh6/f;Ljava/lang/Object;)V

    goto :goto_28

    :cond_54
    :goto_54
    if-eqz v0, :cond_58

    const/4 p0, 0x1

    goto :goto_59

    :cond_58
    const/4 p0, 0x0

    :goto_59
    return p0
.end method

.method public N()Ljava/lang/reflect/Member;
    .registers 1

    iget-object p0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public g()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly5/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericParameterTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "member.parameterAnnotations"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lo5/a0;->P([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getReturnType()Ly5/x;
    .registers 4

    iget-object p0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "member.genericReturnType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_23

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance p0, Lo5/d0;

    invoke-direct {p0, v1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_4b

    :cond_23
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_45

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_45

    :cond_33
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3f

    new-instance v0, Lo5/i0;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_4a

    :cond_3f
    new-instance v0, Lo5/u;

    invoke-direct {v0, p0}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4a

    :cond_45
    :goto_45
    new-instance v0, Lo5/j;

    invoke-direct {v0, p0}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_4a
    move-object p0, v0

    :goto_4b
    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo5/g0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "member.typeParameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_13
    if-ge v1, v2, :cond_22

    aget-object v3, p0, v1

    new-instance v4, Lo5/g0;

    invoke-direct {v4, v3}, Lo5/g0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    return-object v0
.end method
