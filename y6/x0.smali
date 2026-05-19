.class public final Ly6/x0;
.super Ly6/r1;
.source ""


# instance fields
.field public final a:Ly6/l0;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .registers 3

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/r1;-><init>()V

    invoke-virtual {p1}, Lf5/g;->q()Ly6/s0;

    move-result-object p1

    const-string v0, "kotlinBuiltIns.nullableAnyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly6/x0;->a:Ly6/l0;

    return-void
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/q1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public c()Ly6/e2;
    .registers 1

    sget-object p0, Ly6/e2;->e:Ly6/e2;

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/x0;->a:Ly6/l0;

    return-object p0
.end method
