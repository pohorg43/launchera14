.class public final Ly6/u;
.super Ly6/w;
.source ""

# interfaces
.implements Ly6/s;
.implements Lc7/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/u$a;
    }
.end annotation


# static fields
.field public static final d:Ly6/u$a;


# instance fields
.field public final b:Ly6/s0;

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly6/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly6/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly6/u;->d:Ly6/u$a;

    return-void
.end method

.method public constructor <init>(Ly6/s0;Z)V
    .registers 3

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Ly6/u;->b:Ly6/s0;

    iput-boolean p2, p0, Ly6/u;->c:Z

    return-void
.end method

.method public constructor <init>(Ly6/s0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Ly6/u;->b:Ly6/s0;

    iput-boolean p2, p0, Ly6/u;->c:Z

    return-void
.end method


# virtual methods
.method public G0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 2

    if-eqz p1, :cond_8

    iget-object p0, p0, Ly6/u;->b:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 4

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/u;

    iget-object v1, p0, Ly6/u;->b:Ly6/s0;

    invoke-virtual {v1, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p1

    iget-boolean p0, p0, Ly6/u;->c:Z

    invoke-direct {v0, p1, p0}, Ly6/u;-><init>(Ly6/s0;Z)V

    return-object v0
.end method

.method public O0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/u;->b:Ly6/s0;

    return-object p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/u;

    iget-boolean p0, p0, Ly6/u;->c:Z

    invoke-direct {v0, p1, p0}, Ly6/u;-><init>(Ly6/s0;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ly6/u;->b:Ly6/s0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & Any"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x0()Z
    .registers 2

    iget-object v0, p0, Ly6/u;->b:Ly6/s0;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    instance-of v0, v0, Lz6/n;

    if-nez v0, :cond_1b

    iget-object p0, p0, Ly6/u;->b:Ly6/s0;

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of p0, p0, Li5/a1;

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public z(Ly6/l0;)Ly6/l0;
    .registers 3

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    iget-boolean p0, p0, Ly6/u;->c:Z

    invoke-static {p1, p0}, Ly6/w0;->a(Ly6/d2;Z)Ly6/d2;

    move-result-object p0

    return-object p0
.end method
