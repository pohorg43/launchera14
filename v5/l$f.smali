.class public final Lv5/l$f;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/l;-><init>(Lu5/g;Lv5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Ljava/util/Collection<",
        "+",
        "Li5/u0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;


# direct methods
.method public constructor <init>(Lv5/l;)V
    .registers 2

    iput-object p1, p0, Lv5/l$f;->a:Lv5/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lh6/f;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/l$f;->a:Lv5/l;

    iget-object v0, v0, Lv5/l;->c:Lv5/l;

    if-eqz v0, :cond_18

    iget-object p0, v0, Lv5/l;->f:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_60

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lv5/l$f;->a:Lv5/l;

    iget-object v1, v1, Lv5/l;->e:Lx6/i;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv5/b;

    invoke-interface {v1, p1}, Lv5/b;->c(Lh6/f;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/r;

    iget-object v3, p0, Lv5/l$f;->a:Lv5/l;

    invoke-virtual {v3, v2}, Lv5/l;->t(Ly5/r;)Lt5/e;

    move-result-object v2

    iget-object v3, p0, Lv5/l$f;->a:Lv5/l;

    invoke-virtual {v3, v2}, Lv5/l;->r(Lt5/e;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lv5/l$f;->a:Lv5/l;

    iget-object v3, v3, Lv5/l;->b:Lu5/g;

    iget-object v3, v3, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->g:Ls5/g;

    check-cast v3, Ls5/g$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_5a
    iget-object p0, p0, Lv5/l$f;->a:Lv5/l;

    invoke-virtual {p0, v0, p1}, Lv5/l;->j(Ljava/util/Collection;Lh6/f;)V

    move-object p0, v0

    :goto_60
    return-object p0
.end method
