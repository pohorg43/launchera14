.class public final Lj5/f;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/e0;",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .registers 2

    iput-object p1, p0, Lj5/f;->a:Lf5/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Li5/e0;

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object p1

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    iget-object p0, p0, Lj5/f;->a:Lf5/g;

    invoke-virtual {p0}, Lf5/g;->w()Ly6/s0;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lf5/g;->h(Ly6/e2;Ly6/l0;)Ly6/s0;

    move-result-object p0

    const-string p1, "module.builtIns.getArray…ce.INVARIANT, stringType)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
