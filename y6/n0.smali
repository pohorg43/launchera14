.class public final Ly6/n0;
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
.field public final synthetic a:Lz6/f;

.field public final synthetic b:Ly6/o0;


# direct methods
.method public constructor <init>(Lz6/f;Ly6/o0;)V
    .registers 3

    iput-object p1, p0, Ly6/n0;->a:Lz6/f;

    iput-object p2, p0, Ly6/n0;->b:Ly6/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ly6/n0;->a:Lz6/f;

    iget-object p0, p0, Ly6/n0;->b:Ly6/o0;

    iget-object p0, p0, Ly6/o0;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc7/i;

    invoke-virtual {v0, p0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
