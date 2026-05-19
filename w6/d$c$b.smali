.class public final Lw6/d$c$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d$c;-><init>(Lw6/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d$c;


# direct methods
.method public constructor <init>(Lw6/d$c;)V
    .registers 2

    iput-object p1, p0, Lw6/d$c$b;->a:Lw6/d$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object p0, p0, Lw6/d$c$b;->a:Lw6/d$c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lw6/d$c;->d:Lw6/d;

    iget-object v1, v1, Lw6/d;->n:Lw6/d$b;

    invoke-virtual {v1}, Ly6/j;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v3, v4}, Lr6/l$a;->a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/l;

    instance-of v4, v3, Li5/u0;

    if-nez v4, :cond_44

    instance-of v4, v3, Li5/o0;

    if-eqz v4, :cond_30

    :cond_44
    invoke-interface {v3}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_4c
    iget-object v1, p0, Lw6/d$c;->d:Lw6/d;

    iget-object v1, v1, Lw6/d;->e:Lc6/b;

    iget-object v1, v1, Lc6/b;->q:Ljava/util/List;

    const-string v2, "classProto.functionList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lw6/d$c;->d:Lw6/d;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/i;

    iget-object v4, v2, Lw6/d;->l:Lu6/m;

    iget-object v4, v4, Lu6/m;->b:Le6/c;

    iget v3, v3, Lc6/i;->f:I

    invoke-static {v4, v3}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_77
    iget-object v1, p0, Lw6/d$c;->d:Lw6/d;

    iget-object v1, v1, Lw6/d;->e:Lc6/b;

    iget-object v1, v1, Lc6/b;->r:Ljava/util/List;

    const-string v2, "classProto.propertyList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/d$c;->d:Lw6/d;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/n;

    iget-object v3, p0, Lw6/d;->l:Lu6/m;

    iget-object v3, v3, Lu6/m;->b:Le6/c;

    iget v2, v2, Lc6/n;->f:I

    invoke-static {v3, v2}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_a2
    invoke-static {v0, v0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
