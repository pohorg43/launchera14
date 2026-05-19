.class public final Lm6/m;
.super Lm6/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/p<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lm6/p;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 2

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->o()Ly6/s0;

    move-result-object p0

    const-string p1, "module.builtIns.intType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
