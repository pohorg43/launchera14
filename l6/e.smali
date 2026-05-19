.class public final Ll6/e;
.super Ly6/v;
.source ""


# instance fields
.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ly6/t1;Z)V
    .registers 3

    iput-boolean p2, p0, Ll6/e;->c:Z

    invoke-direct {p0, p1}, Ly6/v;-><init>(Ly6/t1;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 1

    iget-boolean p0, p0, Ll6/e;->c:Z

    return p0
.end method

.method public e(Ly6/l0;)Ly6/q1;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/v;->b:Ly6/t1;

    invoke-virtual {p0, p1}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    instance-of v1, p1, Li5/a1;

    if-eqz v1, :cond_20

    move-object v0, p1

    check-cast v0, Li5/a1;

    :cond_20
    invoke-static {p0, v0}, Ll6/d;->a(Ly6/q1;Li5/a1;)Ly6/q1;

    move-result-object v0

    :cond_24
    return-object v0
.end method
