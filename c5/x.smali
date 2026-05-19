.class public final Lc5/x;
.super Lc5/i;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Lz4/h;
.implements Lkotlin/jvm/functions/Function0;
.implements Lkotlin/jvm/functions/Function1;
.implements Lkotlin/jvm/functions/Function10;
.implements Lkotlin/jvm/functions/Function11;
.implements Lkotlin/jvm/functions/Function12;
.implements Lkotlin/jvm/functions/Function13;
.implements Lkotlin/jvm/functions/Function14;
.implements Lkotlin/jvm/functions/Function15;
.implements Lkotlin/jvm/functions/Function16;
.implements Lkotlin/jvm/functions/Function17;
.implements Lkotlin/jvm/functions/Function18;
.implements Lkotlin/jvm/functions/Function19;
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/jvm/functions/Function20;
.implements Lkotlin/jvm/functions/Function21;
.implements Lkotlin/jvm/functions/Function22;
.implements Lkotlin/jvm/functions/Function3;
.implements Lkotlin/jvm/functions/Function4;
.implements Lkotlin/jvm/functions/Function5;
.implements Lkotlin/jvm/functions/Function6;
.implements Lkotlin/jvm/functions/Function7;
.implements Lkotlin/jvm/functions/Function8;
.implements Lkotlin/jvm/functions/Function9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc5/i<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/FunctionBase<",
        "Ljava/lang/Object;",
        ">;",
        "Lz4/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Lz4/n;
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
.field public final f:Lc5/t;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Object;

.field public final i:Lc5/p0$a;

.field public final j:Lh4/f;

.field public final k:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc5/x;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "descriptor"

    const-string v4, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc5/x;->l:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lc5/t;Li5/x;)V
    .registers 10

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    invoke-static {p2}, Lc5/t0;->d(Li5/x;)Lc5/g;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lc5/x;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/x;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/x;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lc5/i;-><init>()V

    iput-object p1, p0, Lc5/x;->f:Lc5/t;

    iput-object p3, p0, Lc5/x;->g:Ljava/lang/String;

    iput-object p5, p0, Lc5/x;->h:Ljava/lang/Object;

    new-instance p1, Lc5/x$c;

    invoke-direct {p1, p0, p2}, Lc5/x$c;-><init>(Lc5/x;Ljava/lang/String;)V

    invoke-static {p4, p1}, Lc5/p0;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/x;->i:Lc5/p0$a;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/x$a;

    invoke-direct {p2, p0}, Lc5/x$a;-><init>(Lc5/x;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lc5/x;->j:Lh4/f;

    new-instance p2, Lc5/x$b;

    invoke-direct {p2, p0}, Lc5/x$b;-><init>(Lc5/x;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/x;->k:Lh4/f;

    return-void
.end method

.method public static final l(Lc5/x;Ljava/lang/reflect/Constructor;Li5/x;Z)Ld5/g;
    .registers 6

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_88

    const-string p3, "descriptor"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p2, Li5/d;

    if-eqz p3, :cond_11

    check-cast p2, Li5/d;

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    const/4 p3, 0x0

    if-nez p2, :cond_16

    goto :goto_70

    :cond_16
    invoke-interface {p2}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    invoke-static {v0}, Li5/s;->e(Li5/t;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_70

    :cond_21
    invoke-interface {p2}, Li5/k;->Z()Li5/e;

    move-result-object v0

    const-string v1, "constructorDescriptor.constructedClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lk6/k;->b(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_70

    :cond_31
    invoke-interface {p2}, Li5/k;->Z()Li5/e;

    move-result-object v0

    invoke-static {v0}, Lk6/i;->v(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_70

    :cond_3c
    invoke-interface {p2}, Li5/a;->g()Ljava/util/List;

    move-result-object p2

    const-string v0, "constructorDescriptor.valueParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_70

    :cond_50
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_54
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    const-string v1, "it.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp6/b;->a(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p3, 0x1

    :cond_70
    :goto_70
    if-eqz p3, :cond_88

    invoke-virtual {p0}, Lc5/x;->k()Z

    move-result p2

    if-eqz p2, :cond_82

    new-instance p2, Ld5/g$a;

    invoke-virtual {p0}, Lc5/x;->n()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ld5/g$a;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_9d

    :cond_82
    new-instance p2, Ld5/g$b;

    invoke-direct {p2, p1}, Ld5/g$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_9d

    :cond_88
    invoke-virtual {p0}, Lc5/x;->k()Z

    move-result p2

    if-eqz p2, :cond_98

    new-instance p2, Ld5/g$c;

    invoke-virtual {p0}, Lc5/x;->n()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ld5/g$c;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_9d

    :cond_98
    new-instance p2, Ld5/g$d;

    invoke-direct {p2, p1}, Ld5/g$d;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_9d
    return-object p2
.end method

.method public static final m(Lc5/x;Ljava/lang/reflect/Method;)Ld5/g$g;
    .registers 3

    invoke-virtual {p0}, Lc5/x;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ld5/g$g$c;

    invoke-virtual {p0}, Lc5/x;->n()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ld5/g$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_15

    :cond_10
    new-instance v0, Ld5/g$g$f;

    invoke-direct {v0, p1}, Ld5/g$g$f;-><init>(Ljava/lang/reflect/Method;)V

    :goto_15
    return-object v0
.end method


# virtual methods
.method public e()Ld5/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/x;->j:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld5/f;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Lc5/w0;->b(Ljava/lang/Object;)Lc5/x;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lc5/x;->f:Lc5/t;

    iget-object v2, p1, Lc5/x;->f:Lc5/t;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lc5/x;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc5/x;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lc5/x;->g:Ljava/lang/String;

    iget-object v2, p1, Lc5/x;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object p0, p0, Lc5/x;->h:Ljava/lang/Object;

    iget-object p1, p1, Lc5/x;->h:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 v0, 0x1

    :cond_35
    return v0
.end method

.method public g()Lc5/t;
    .registers 1

    iget-object p0, p0, Lc5/x;->f:Lc5/t;

    return-object p0
.end method

.method public getArity()I
    .registers 1

    invoke-virtual {p0}, Lc5/x;->e()Ld5/f;

    move-result-object p0

    invoke-static {p0}, Ld5/h;->a(Ld5/f;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ld5/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/x;->k:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld5/f;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lc5/x;->f:Lc5/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lc5/x;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lc5/x;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public bridge synthetic i()Li5/b;
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const/16 p1, 0x8

    aput-object p9, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    const/16 p1, 0xa

    aput-object p11, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    const/16 p1, 0xa

    aput-object p11, v0, p1

    const/16 p1, 0xb

    aput-object p12, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    const/16 p1, 0xa

    aput-object p11, v0, p1

    const/16 p1, 0xb

    aput-object p12, v0, p1

    const/16 p1, 0xc

    aput-object p13, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    const/16 v1, 0x14

    aput-object p21, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    const/16 v1, 0x14

    aput-object p21, v0, v1

    const/16 v1, 0x15

    aput-object p22, v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isExternal()Z
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInfix()Z
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isInfix()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isInline()Z

    move-result p0

    return p0
.end method

.method public isOperator()Z
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isOperator()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->isSuspend()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .registers 2

    iget-object p0, p0, Lc5/x;->h:Ljava/lang/Object;

    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final n()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lc5/x;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-static {v0, p0}, Ld5/j;->a(Ljava/lang/Object;Li5/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public o()Li5/x;
    .registers 3

    iget-object p0, p0, Lc5/x;->i:Lc5/p0$a;

    sget-object v0, Lc5/x;->l:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/x;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lc5/r0;->a:Lc5/r0;

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-static {p0}, Lc5/r0;->c(Li5/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
