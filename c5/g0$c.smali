.class public abstract Lc5/g0$c;
.super Lc5/g0$a;
.source ""

# interfaces
.implements Lz4/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/g0$a<",
        "TV;",
        "Lh4/z;",
        ">;",
        "Lz4/i$a<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lz4/n;
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
.field public final f:Lc5/p0$a;

.field public final g:Lh4/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc5/g0$c;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "descriptor"

    const-string v4, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc5/g0$c;->h:[Lz4/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lc5/g0$a;-><init>()V

    new-instance v0, Lc5/g0$c$b;

    invoke-direct {v0, p0}, Lc5/g0$c$b;-><init>(Lc5/g0$c;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    iput-object v0, p0, Lc5/g0$c;->f:Lc5/p0$a;

    sget-object v0, Lkotlin/a;->b:Lkotlin/a;

    new-instance v1, Lc5/g0$c$a;

    invoke-direct {v1, p0}, Lc5/g0$c$a;-><init>(Lc5/g0$c;)V

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lc5/g0$c;->g:Lh4/f;

    return-void
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

    iget-object p0, p0, Lc5/g0$c;->g:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld5/f;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lc5/g0$c;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    check-cast p1, Lc5/g0$c;

    invoke-virtual {p1}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    const-string v0, "<set-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    iget-object p0, p0, Lc5/g0;->g:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {p0}, Lc5/g0;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Li5/b;
    .registers 3

    iget-object p0, p0, Lc5/g0$c;->f:Lc5/p0$a;

    sget-object v0, Lc5/g0$c;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/q0;

    return-object p0
.end method

.method public l()Li5/n0;
    .registers 3

    iget-object p0, p0, Lc5/g0$c;->f:Lc5/p0$a;

    sget-object v0, Lc5/g0$c;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/q0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "setter of "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
