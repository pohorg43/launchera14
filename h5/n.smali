.class public final Lh5/n;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/l;


# direct methods
.method public constructor <init>(Lh5/l;)V
    .registers 2

    iput-object p1, p0, Lh5/n;->a:Lh5/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lh5/n;->a:Lh5/l;

    iget-object p0, p0, Lh5/l;->a:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->f()Ly6/s0;

    move-result-object p0

    const-string v0, "moduleDescriptor.builtIns.anyType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
