.class public final Ly6/t0;
.super Ly6/s0;
.source ""


# instance fields
.field public final b:Ly6/j1;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lr6/i;

.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lz6/f;",
            "Ly6/s0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;Z",
            "Lr6/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lz6/f;",
            "+",
            "Ly6/s0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/s0;-><init>()V

    iput-object p1, p0, Ly6/t0;->b:Ly6/j1;

    iput-object p2, p0, Ly6/t0;->c:Ljava/util/List;

    iput-boolean p3, p0, Ly6/t0;->d:Z

    iput-object p4, p0, Ly6/t0;->e:Lr6/i;

    iput-object p5, p0, Ly6/t0;->f:Lkotlin/jvm/functions/Function1;

    instance-of p0, p4, La7/e;

    if-eqz p0, :cond_49

    instance-of p0, p4, La7/k;

    if-eqz p0, :cond_2a

    goto :goto_49

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SimpleTypeImpl should not be created for error type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public D0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ly6/t0;->c:Ljava/util/List;

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ly6/t0;->b:Ly6/j1;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    iget-boolean p0, p0, Ly6/t0;->d:Z

    return p0
.end method

.method public H0(Lz6/f;)Ly6/l0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/t0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/s0;

    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, p1

    :goto_11
    return-object p0
.end method

.method public K0(Lz6/f;)Ly6/d2;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/t0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/s0;

    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, p1

    :goto_11
    return-object p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 3

    iget-boolean v0, p0, Ly6/t0;->d:Z

    if-ne p1, v0, :cond_5

    goto :goto_13

    :cond_5
    if-eqz p1, :cond_d

    new-instance p1, Ly6/q0;

    invoke-direct {p1, p0}, Ly6/q0;-><init>(Ly6/s0;)V

    goto :goto_12

    :cond_d
    new-instance p1, Ly6/p0;

    invoke-direct {p1, p0}, Ly6/p0;-><init>(Ly6/s0;)V

    :goto_12
    move-object p0, p1

    :goto_13
    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf7/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_12

    :cond_c
    new-instance v0, Ly6/u0;

    invoke-direct {v0, p0, p1}, Ly6/u0;-><init>(Ly6/s0;Ly6/g1;)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Ly6/t0;->e:Lr6/i;

    return-object p0
.end method
