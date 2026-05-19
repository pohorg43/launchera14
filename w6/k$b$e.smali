.class public final Lw6/k$b$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/k$b;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Li5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/k$b;


# direct methods
.method public constructor <init>(Lw6/k$b;)V
    .registers 2

    iput-object p1, p0, Lw6/k$b$e;->a:Lw6/k$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Lw6/k$b$e;->a:Lw6/k$b;

    iget-object v0, p0, Lw6/k$b;->b:Ljava/util/List;

    iget-object p0, p0, Lw6/k$b;->n:Lw6/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    iget-object v3, p0, Lw6/k;->b:Lu6/m;

    iget-object v3, v3, Lu6/m;->i:Lu6/v;

    check-cast v2, Lc6/n;

    invoke-virtual {v3, v2}, Lu6/v;->g(Lc6/n;)Li5/o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    return-object v1
.end method
