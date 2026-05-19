.class public final Lf5/i$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/i;-><init>(Li5/e0;Li5/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr6/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/e0;


# direct methods
.method public constructor <init>(Li5/e0;)V
    .registers 2

    iput-object p1, p0, Lf5/i$c;->a:Li5/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lf5/i$c;->a:Li5/e0;

    sget-object v0, Lf5/j;->h:Lh6/c;

    invoke-interface {p0, v0}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    invoke-interface {p0}, Li5/l0;->l()Lr6/i;

    move-result-object p0

    return-object p0
.end method
