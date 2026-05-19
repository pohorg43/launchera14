.class public final Ly6/u1;
.super Ly6/t1;
.source ""


# instance fields
.field public final synthetic b:Ly6/t1;


# direct methods
.method public constructor <init>(Ly6/t1;)V
    .registers 2

    iput-object p1, p0, Ly6/u1;->b:Ly6/t1;

    invoke-direct {p0}, Ly6/t1;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lj5/h;)Lj5/h;
    .registers 3

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/u1;->b:Ly6/t1;

    invoke-virtual {p0, p1}, Ly6/t1;->d(Lj5/h;)Lj5/h;

    move-result-object p0

    return-object p0
.end method

.method public e(Ly6/l0;)Ly6/q1;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/u1;->b:Ly6/t1;

    invoke-virtual {p0, p1}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object p0

    return-object p0
.end method

.method public f()Z
    .registers 1

    iget-object p0, p0, Ly6/u1;->b:Ly6/t1;

    invoke-virtual {p0}, Ly6/t1;->f()Z

    move-result p0

    return p0
.end method

.method public g(Ly6/l0;Ly6/e2;)Ly6/l0;
    .registers 4

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/u1;->b:Ly6/t1;

    invoke-virtual {p0, p1, p2}, Ly6/t1;->g(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
