.class public final Lc5/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz4/s;
.implements Lc5/r;


# static fields
.field public static final synthetic d:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li5/a1;

.field public final b:Lc5/p0$a;

.field public final c:Lc5/m0;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc5/l0;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc5/l0;->d:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lc5/m0;Li5/a1;)V
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/l0;->a:Li5/a1;

    new-instance v0, Lc5/l0$a;

    invoke-direct {v0, p0}, Lc5/l0$a;-><init>(Lc5/l0;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    iput-object v0, p0, Lc5/l0;->b:Lc5/p0$a;

    if-nez p1, :cond_d4

    invoke-interface {p2}, Li5/m;->b()Li5/l;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Li5/e;

    if-eqz p2, :cond_2b

    check-cast p1, Li5/e;

    invoke-virtual {p0, p1}, Lc5/l0;->a(Li5/e;)Lc5/o;

    move-result-object p1

    goto :goto_87

    :cond_2b
    instance-of p2, p1, Li5/b;

    if-eqz p2, :cond_bd

    move-object p2, p1

    check-cast p2, Li5/b;

    invoke-interface {p2}, Li5/m;->b()Li5/l;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Li5/e;

    if-eqz v0, :cond_46

    check-cast p2, Li5/e;

    invoke-virtual {p0, p2}, Lc5/l0;->a(Li5/e;)Lc5/o;

    move-result-object p2

    goto :goto_7c

    :cond_46
    instance-of p2, p1, Lw6/j;

    const/4 v0, 0x0

    if-eqz p2, :cond_4f

    move-object p2, p1

    check-cast p2, Lw6/j;

    goto :goto_50

    :cond_4f
    move-object p2, v0

    :goto_50
    if-eqz p2, :cond_a6

    invoke-interface {p2}, Lw6/j;->H()Lw6/i;

    move-result-object v1

    instance-of v2, v1, La6/n;

    if-eqz v2, :cond_5d

    check-cast v1, La6/n;

    goto :goto_5e

    :cond_5d
    move-object v1, v0

    :goto_5e
    if-eqz v1, :cond_63

    iget-object v1, v1, La6/n;->d:La6/t;

    goto :goto_64

    :cond_63
    move-object v1, v0

    :goto_64
    instance-of v2, v1, Ln5/e;

    if-eqz v2, :cond_6b

    move-object v0, v1

    check-cast v0, Ln5/e;

    :cond_6b
    if-eqz v0, :cond_8f

    iget-object v0, v0, Ln5/e;->a:Ljava/lang/Class;

    if-eqz v0, :cond_8f

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lc5/o;

    :goto_7c
    new-instance v0, Lc5/e;

    invoke-direct {v0, p2}, Lc5/e;-><init>(Lc5/t;)V

    sget-object p2, Lh4/z;->a:Lh4/z;

    invoke-interface {p1, v0, p2}, Li5/l;->F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_87
    const-string p2, "when (val declaration = … $declaration\")\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc5/m0;

    goto :goto_d4

    :cond_8f
    new-instance p0, Lc5/n0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    new-instance p0, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    new-instance p0, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type parameter container: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d4
    :goto_d4
    iput-object p1, p0, Lc5/l0;->c:Lc5/m0;

    return-void
.end method


# virtual methods
.method public final a(Li5/e;)Lc5/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Lc5/o<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    check-cast p0, Lc5/o;

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    new-instance p0, Lc5/n0;

    const-string v0, "Type parameter container is not resolved: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Li5/e;->b()Li5/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lc5/l0;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lc5/l0;->c:Lc5/m0;

    check-cast p1, Lc5/l0;

    iget-object v1, p1, Lc5/l0;->c:Lc5/m0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lc5/l0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lc5/l0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public getDescriptor()Li5/h;
    .registers 1

    iget-object p0, p0, Lc5/l0;->a:Li5/a1;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lc5/l0;->a:Li5/a1;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/r;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/l0;->b:Lc5/p0$a;

    sget-object v0, Lc5/l0;->d:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-upperBounds>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getVariance()Lz4/u;
    .registers 2

    iget-object p0, p0, Lc5/l0;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_15

    sget-object p0, Lz4/u;->c:Lz4/u;

    goto :goto_20

    :cond_15
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_1b
    sget-object p0, Lz4/u;->b:Lz4/u;

    goto :goto_20

    :cond_1e
    sget-object p0, Lz4/u;->a:Lz4/u;

    :goto_20
    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lc5/l0;->c:Lc5/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lc5/l0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/TypeParameterReference;->Companion:Lkotlin/jvm/internal/TypeParameterReference$Companion;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/TypeParameterReference$Companion;->toString(Lz4/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
