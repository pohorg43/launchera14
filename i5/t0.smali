.class public final Li5/t0;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr6/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/s0<",
            "Lr6/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li5/s0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/s0<",
            "Lr6/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li5/t0;->a:Li5/s0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Li5/t0;->a:Li5/s0;

    iget-object v0, p0, Li5/s0;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Li5/s0;->c:Lz6/f;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0
.end method
