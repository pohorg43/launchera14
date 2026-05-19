.class public final Lz6/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll6/b;


# instance fields
.field public final a:Ly6/q1;

.field public b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ly6/d2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lz6/j;

.field public final d:Li5/a1;

.field public final e:Lh4/f;


# direct methods
.method public constructor <init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/q1;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ly6/d2;",
            ">;>;",
            "Lz6/j;",
            "Li5/a1;",
            ")V"
        }
    .end annotation

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/j;->a:Ly6/q1;

    iput-object p2, p0, Lz6/j;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lz6/j;->c:Lz6/j;

    iput-object p4, p0, Lz6/j;->d:Li5/a1;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lz6/j$a;

    invoke-direct {p2, p0}, Lz6/j$a;-><init>(Lz6/j;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lz6/j;->e:Lh4/f;

    return-void
.end method

.method public synthetic constructor <init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;I)V
    .registers 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object p2, v1

    :cond_6
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    move-object p3, v1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v1

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lz6/j;-><init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lz6/f;)Ly6/j1;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/j;->g(Lz6/f;)Lz6/j;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Lz6/j;->e:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_c

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_c
    return-object p0
.end method

.method public d()Ly6/q1;
    .registers 1

    iget-object p0, p0, Lz6/j;->a:Ly6/q1;

    return-object p0
.end method

.method public e()Li5/h;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lz6/j;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz6/j;

    iget-object v1, p0, Lz6/j;->c:Lz6/j;

    if-nez v1, :cond_22

    goto :goto_23

    :cond_22
    move-object p0, v1

    :goto_23
    iget-object v1, p1, Lz6/j;->c:Lz6/j;

    if-nez v1, :cond_28

    goto :goto_29

    :cond_28
    move-object p1, v1

    :goto_29
    if-ne p0, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public g(Lz6/f;)Lz6/j;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz6/j;->a:Ly6/q1;

    invoke-interface {v0, p1}, Ly6/q1;->a(Lz6/f;)Ly6/q1;

    move-result-object v0

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lz6/j;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1a

    new-instance v1, Lz6/j$b;

    invoke-direct {v1, p0, p1}, Lz6/j$b;-><init>(Lz6/j;Lz6/f;)V

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iget-object p1, p0, Lz6/j;->c:Lz6/j;

    if-nez p1, :cond_20

    move-object p1, p0

    :cond_20
    iget-object p0, p0, Lz6/j;->d:Li5/a1;

    new-instance v2, Lz6/j;

    invoke-direct {v2, v0, v1, p1, p0}, Lz6/j;-><init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;)V

    return-object v2
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lz6/j;->c:Lz6/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lz6/j;->hashCode()I

    move-result p0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_d
    return p0
.end method

.method public k()Lf5/g;
    .registers 2

    iget-object p0, p0, Lz6/j;->a:Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    const-string v0, "projection.type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CapturedType("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz6/j;->a:Ly6/q1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
