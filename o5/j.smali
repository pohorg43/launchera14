.class public final Lo5/j;
.super Lo5/f0;
.source ""

# interfaces
.implements Ly5/f;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Lo5/f0;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 5

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/f0;-><init>()V

    iput-object p1, p0, Lo5/j;->a:Ljava/lang/reflect/Type;

    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    const-string v1, "type"

    if-eqz v0, :cond_5b

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v0, "genericComponentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_32

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance p1, Lo5/d0;

    invoke-direct {p1, v1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_a9

    :cond_32
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_54

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_54

    :cond_42
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4e

    new-instance v0, Lo5/i0;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p1}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_59

    :cond_4e
    new-instance v0, Lo5/u;

    invoke-direct {v0, p1}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_59

    :cond_54
    :goto_54
    new-instance v0, Lo5/j;

    invoke-direct {v0, p1}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_59
    move-object p1, v0

    goto :goto_a9

    :cond_5b
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_b0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getComponentType()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_84

    new-instance v0, Lo5/d0;

    invoke-direct {v0, p1}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_59

    :cond_84
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_a3

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_a3

    :cond_91
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_9d

    new-instance v0, Lo5/i0;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p1}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_59

    :cond_9d
    new-instance v0, Lo5/u;

    invoke-direct {v0, p1}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_59

    :cond_a3
    :goto_a3
    new-instance v0, Lo5/j;

    invoke-direct {v0, p1}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_59

    :goto_a9
    iput-object p1, p0, Lo5/j;->b:Lo5/f0;

    sget-object p1, Li4/y;->a:Li4/y;

    iput-object p1, p0, Lo5/j;->c:Ljava/util/Collection;

    return-void

    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an array type ("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public K()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Lo5/j;->a:Ljava/lang/reflect/Type;

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

    iget-object p0, p0, Lo5/j;->c:Ljava/util/Collection;

    return-object p0
.end method

.method public l()Ly5/x;
    .registers 1

    iget-object p0, p0, Lo5/j;->b:Lo5/f0;

    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
