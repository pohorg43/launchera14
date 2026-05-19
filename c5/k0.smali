.class public final Lc5/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/KTypeBase;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKTypeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KTypeImpl.kt\nkotlin/reflect/jvm/internal/KTypeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,136:1\n1#2:137\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic e:[Lz4/n;
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
.field public final a:Ly6/l0;

.field public final b:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc5/p0$a;

.field public final d:Lc5/p0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lc5/k0;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "arguments"

    const-string v4, "getArguments()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lc5/k0;->e:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/k0;->a:Ly6/l0;

    instance-of p1, p2, Lc5/p0$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Lc5/p0$a;

    goto :goto_14

    :cond_13
    move-object p1, v0

    :goto_14
    if-nez p1, :cond_1d

    if-eqz p2, :cond_1e

    invoke-static {p2}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, p1

    :cond_1e
    :goto_1e
    iput-object v0, p0, Lc5/k0;->b:Lc5/p0$a;

    new-instance p1, Lc5/k0$b;

    invoke-direct {p1, p0}, Lc5/k0$b;-><init>(Lc5/k0;)V

    invoke-static {p1}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/k0;->c:Lc5/p0$a;

    new-instance p1, Lc5/k0$a;

    invoke-direct {p1, p0, p2}, Lc5/k0$a;-><init>(Lc5/k0;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/k0;->d:Lc5/p0$a;

    return-void
.end method

.method public synthetic constructor <init>(Ly6/l0;Lkotlin/jvm/functions/Function0;I)V
    .registers 4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final b(Ly6/l0;)Lz4/f;
    .registers 5

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    check-cast v0, Li5/e;

    invoke-static {v0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_16

    return-object v2

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const-string v2, "<this>"

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li4/v;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/q1;

    if-eqz p1, :cond_68

    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_68

    :cond_31
    invoke-virtual {p0, p1}, Lc5/k0;->b(Ly6/l0;)Lz4/f;

    move-result-object p1

    if-eqz p1, :cond_51

    new-instance p0, Lc5/o;

    invoke-static {p1}, Lb5/b;->a(Lz4/f;)Lz4/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_51
    new-instance p1, Lc5/n0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    :goto_68
    new-instance p0, Lc5/o;

    invoke-direct {p0, v0}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_6e
    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p0

    if-nez p0, :cond_8b

    new-instance p0, Lc5/o;

    sget-object p1, Lo5/d;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lo5/d;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_86

    goto :goto_87

    :cond_86
    move-object v0, p1

    :goto_87
    invoke-direct {p0, v0}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_8b
    new-instance p0, Lc5/o;

    invoke-direct {p0, v0}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_91
    instance-of p0, v0, Li5/a1;

    if-eqz p0, :cond_9d

    new-instance p0, Lc5/l0;

    check-cast v0, Li5/a1;

    invoke-direct {p0, v2, v0}, Lc5/l0;-><init>(Lc5/m0;Li5/a1;)V

    return-object p0

    :cond_9d
    instance-of p0, v0, Li5/z0;

    if-nez p0, :cond_a2

    return-object v2

    :cond_a2
    new-instance p0, Lh4/i;

    const-string p1, "An operation is not implemented: Type alias classifiers are not yet supported"

    invoke-direct {p0, p1}, Lh4/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lc5/k0;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lc5/k0;->a:Ly6/l0;

    check-cast p1, Lc5/k0;

    iget-object v1, p1, Lc5/k0;->a:Ly6/l0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lc5/k0;->getClassifier()Lz4/f;

    move-result-object v0

    invoke-virtual {p1}, Lc5/k0;->getClassifier()Lz4/f;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lc5/k0;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lc5/k0;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/k0;->a:Ly6/l0;

    invoke-static {p0}, Lc5/w0;->d(Lj5/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArguments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/k0;->d:Lc5/p0$a;

    sget-object v0, Lc5/k0;->e:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-arguments>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getClassifier()Lz4/f;
    .registers 3

    iget-object p0, p0, Lc5/k0;->c:Lc5/p0$a;

    sget-object v0, Lc5/k0;->e:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/f;

    return-object p0
.end method

.method public getJavaType()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Lc5/k0;->b:Lc5/p0$a;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lc5/k0;->a:Ly6/l0;

    invoke-virtual {v0}, Ly6/l0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lc5/k0;->getClassifier()Lz4/f;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lc5/k0;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isMarkedNullable()Z
    .registers 1

    iget-object p0, p0, Lc5/k0;->a:Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lc5/r0;->a:Lc5/r0;

    iget-object p0, p0, Lc5/k0;->a:Ly6/l0;

    invoke-static {p0}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
