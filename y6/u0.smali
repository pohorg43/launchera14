.class public final Ly6/u0;
.super Ly6/x;
.source ""


# instance fields
.field public final c:Ly6/g1;


# direct methods
.method public constructor <init>(Ly6/s0;Ly6/g1;)V
    .registers 4

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ly6/x;-><init>(Ly6/s0;)V

    iput-object p2, p0, Ly6/u0;->c:Ly6/g1;

    return-void
.end method


# virtual methods
.method public E0()Ly6/g1;
    .registers 1

    iget-object p0, p0, Ly6/u0;->c:Ly6/g1;

    return-object p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/u0;

    iget-object p0, p0, Ly6/u0;->c:Ly6/g1;

    invoke-direct {v0, p1, p0}, Ly6/u0;-><init>(Ly6/s0;Ly6/g1;)V

    return-object v0
.end method
