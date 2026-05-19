.class public final Ly6/y;
.super Ly6/t1;
.source ""


# instance fields
.field public final b:Ly6/t1;

.field public final c:Ly6/t1;


# direct methods
.method public constructor <init>(Ly6/t1;Ly6/t1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ly6/t1;-><init>()V

    iput-object p1, p0, Ly6/y;->b:Ly6/t1;

    iput-object p2, p0, Ly6/y;->c:Ly6/t1;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Ly6/y;->b:Ly6/t1;

    invoke-virtual {v0}, Ly6/t1;->a()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Ly6/y;->c:Ly6/t1;

    invoke-virtual {p0}, Ly6/t1;->a()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Ly6/y;->b:Ly6/t1;

    invoke-virtual {v0}, Ly6/t1;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Ly6/y;->c:Ly6/t1;

    invoke-virtual {p0}, Ly6/t1;->b()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public d(Lj5/h;)Lj5/h;
    .registers 3

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/y;->c:Ly6/t1;

    iget-object p0, p0, Ly6/y;->b:Ly6/t1;

    invoke-virtual {p0, p1}, Ly6/t1;->d(Lj5/h;)Lj5/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly6/t1;->d(Lj5/h;)Lj5/h;

    move-result-object p0

    return-object p0
.end method

.method public e(Ly6/l0;)Ly6/q1;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/y;->b:Ly6/t1;

    invoke-virtual {v0, p1}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object p0, p0, Ly6/y;->c:Ly6/t1;

    invoke-virtual {p0, p1}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public g(Ly6/l0;Ly6/e2;)Ly6/l0;
    .registers 4

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/y;->c:Ly6/t1;

    iget-object p0, p0, Ly6/y;->b:Ly6/t1;

    invoke-virtual {p0, p1, p2}, Ly6/t1;->g(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Ly6/t1;->g(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
