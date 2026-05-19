.class public final Ly6/o0;
.super Ly6/f2;
.source ""


# instance fields
.field public final b:Lx6/m;

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly6/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/f2;-><init>()V

    iput-object p1, p0, Ly6/o0;->b:Lx6/m;

    iput-object p2, p0, Ly6/o0;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ly6/o0;->d:Lx6/i;

    return-void
.end method


# virtual methods
.method public H0(Lz6/f;)Ly6/l0;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/o0;

    iget-object v1, p0, Ly6/o0;->b:Lx6/m;

    new-instance v2, Ly6/n0;

    invoke-direct {v2, p1, p0}, Ly6/n0;-><init>(Lz6/f;Ly6/o0;)V

    invoke-direct {v0, v1, v2}, Ly6/o0;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public J0()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/o0;->d:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    return-object p0
.end method

.method public K0()Z
    .registers 3

    iget-object p0, p0, Ly6/o0;->d:Lx6/i;

    check-cast p0, Lx6/e$h;

    iget-object v0, p0, Lx6/e$h;->c:Ljava/lang/Object;

    sget-object v1, Lx6/e$n;->a:Lx6/e$n;

    if-eq v0, v1, :cond_12

    iget-object p0, p0, Lx6/e$h;->c:Ljava/lang/Object;

    sget-object v0, Lx6/e$n;->b:Lx6/e$n;

    if-eq p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
