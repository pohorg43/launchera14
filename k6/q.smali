.class public final Lk6/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/e;


# direct methods
.method public constructor <init>(Li5/e;)V
    .registers 2

    iput-object p1, p0, Lk6/q;->a:Li5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Li5/b;

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    invoke-static {v0}, Li5/s;->e(Li5/t;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object p0, p0, Lk6/q;->a:Li5/e;

    invoke-static {p1, p0, v1}, Li5/s;->f(Li5/p;Li5/l;Z)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
