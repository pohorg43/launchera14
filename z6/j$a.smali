.class public final Lz6/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/j;-><init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ly6/d2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz6/j;


# direct methods
.method public constructor <init>(Lz6/j;)V
    .registers 2

    iput-object p1, p0, Lz6/j$a;->a:Lz6/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lz6/j$a;->a:Lz6/j;

    iget-object p0, p0, Lz6/j;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method
