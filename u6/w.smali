.class public final Lu6/w;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lj5/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/v;

.field public final synthetic b:Li6/p;

.field public final synthetic c:Lu6/b;


# direct methods
.method public constructor <init>(Lu6/v;Li6/p;Lu6/b;)V
    .registers 4

    iput-object p1, p0, Lu6/w;->a:Lu6/v;

    iput-object p2, p0, Lu6/w;->b:Li6/p;

    iput-object p3, p0, Lu6/w;->c:Lu6/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lu6/w;->a:Lu6/v;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->c:Li5/l;

    invoke-virtual {v0, v1}, Lu6/v;->a(Li5/l;)Lu6/b0;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lu6/w;->a:Lu6/v;

    iget-object v2, p0, Lu6/w;->b:Li6/p;

    iget-object p0, p0, Lu6/w;->c:Lu6/b;

    iget-object v1, v1, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    invoke-interface {v1, v0, v2, p0}, Lu6/f;->a(Lu6/b0;Li6/p;Lu6/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-nez p0, :cond_22

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_22
    return-object p0
.end method
