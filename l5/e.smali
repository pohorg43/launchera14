.class public final Ll5/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/f;


# direct methods
.method public constructor <init>(Ll5/f;)V
    .registers 2

    iput-object p1, p0, Ll5/e;->a:Ll5/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lz6/f;

    iget-object p0, p0, Ll5/e;->a:Ll5/f;

    invoke-virtual {p1, p0}, Lz6/f;->f(Li5/l;)Li5/h;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Li5/h;->m()Ly6/s0;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method
