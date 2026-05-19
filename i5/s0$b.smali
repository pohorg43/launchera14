.class public final Li5/s0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/s0;->a(Lz6/f;)Lr6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/s0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lz6/f;


# direct methods
.method public constructor <init>(Li5/s0;Lz6/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/s0<",
            "TT;>;",
            "Lz6/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Li5/s0$b;->a:Li5/s0;

    iput-object p2, p0, Li5/s0$b;->b:Lz6/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Li5/s0$b;->a:Li5/s0;

    iget-object v0, v0, Li5/s0;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Li5/s0$b;->b:Lz6/f;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0
.end method
