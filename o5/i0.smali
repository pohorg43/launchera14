.class public final Lo5/i0;
.super Lo5/f0;
.source ""

# interfaces
.implements Ly5/b0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaWildcardType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaWildcardType.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaWildcardType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/WildcardType;

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .registers 3

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/f0;-><init>()V

    iput-object p1, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    sget-object p1, Li4/y;->a:Li4/y;

    iput-object p1, p0, Lo5/i0;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public G()Z
    .registers 2

    iget-object p0, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "reflectType.upperBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->x([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public K()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/i0;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public t()Ly5/x;
    .registers 6

    iget-object v0, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_c4

    array-length v2, v1

    if-gt v2, v3, :cond_c4

    array-length p0, v1

    const/4 v2, 0x0

    const-string v4, "type"

    if-ne p0, v3, :cond_6a

    const-string p0, "lowerBounds"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Li4/k;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "lowerBounds.single()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_41

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance p0, Lo5/d0;

    invoke-direct {p0, v1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    :goto_3e
    move-object v2, p0

    goto/16 :goto_c3

    :cond_41
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_63

    if-eqz v0, :cond_51

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_63

    :cond_51
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5d

    new-instance v0, Lo5/i0;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_68

    :cond_5d
    new-instance v0, Lo5/u;

    invoke-direct {v0, p0}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_68

    :cond_63
    :goto_63
    new-instance v0, Lo5/j;

    invoke-direct {v0, p0}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_68
    move-object v2, v0

    goto :goto_c3

    :cond_6a
    array-length p0, v0

    if-ne p0, v3, :cond_c3

    const-string p0, "upperBounds"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/k;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "ub"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_9b

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_9b

    new-instance p0, Lo5/d0;

    invoke-direct {p0, v1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_3e

    :cond_9b
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_bd

    if-eqz v0, :cond_ab

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_ab

    goto :goto_bd

    :cond_ab
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b7

    new-instance v0, Lo5/i0;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_68

    :cond_b7
    new-instance v0, Lo5/u;

    invoke-direct {v0, p0}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_68

    :cond_bd
    :goto_bd
    new-instance v0, Lo5/j;

    invoke-direct {v0, p0}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_68

    :cond_c3
    :goto_c3
    return-object v2

    :cond_c4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wildcard types with many bounds are not yet supported: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lo5/i0;->a:Ljava/lang/reflect/WildcardType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
