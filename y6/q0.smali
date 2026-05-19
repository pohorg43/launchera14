.class public final Ly6/q0;
.super Ly6/x;
.source ""


# direct methods
.method public constructor <init>(Ly6/s0;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ly6/x;-><init>(Ly6/s0;)V

    return-void
.end method


# virtual methods
.method public G0()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 2

    const-string p0, "delegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly6/q0;

    invoke-direct {p0, p1}, Ly6/q0;-><init>(Ly6/s0;)V

    return-object p0
.end method
