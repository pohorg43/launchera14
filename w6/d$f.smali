.class public final Lw6/d$f;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d;-><init>(Lu6/m;Lc6/b;Le6/c;Le6/a;Li5/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Li5/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 2

    iput-object p1, p0, Lw6/d$f;->a:Lw6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 7

    iget-object p0, p0, Lw6/d$f;->a:Lw6/d;

    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->p:Ljava/util/List;

    const-string v1, "classProto.constructorList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lc6/d;

    sget-object v4, Le6/b;->m:Le6/b$b;

    iget v3, v3, Lc6/d;->d:I

    const-string v5, "IS_SECONDARY.get(it.flags)"

    invoke-static {v4, v3, v5}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/d;

    iget-object v3, p0, Lw6/d;->l:Lu6/m;

    iget-object v3, v3, Lu6/m;->i:Lu6/v;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lu6/v;->e(Lc6/d;Z)Li5/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5e
    invoke-virtual {p0}, Lw6/d;->A()Li5/d;

    move-result-object v1

    invoke-static {v1}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lw6/d;->l:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->n:Lk5/a;

    invoke-interface {v1, p0}, Lk5/a;->d(Li5/e;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
