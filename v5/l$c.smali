.class public final Lv5/l$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Li5/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;


# direct methods
.method public constructor <init>(Lv5/l;)V
    .registers 2

    iput-object p1, p0, Lv5/l$c;->a:Lv5/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    iget-object p0, p0, Lv5/l$c;->a:Lv5/l;

    sget-object v0, Lr6/d;->m:Lr6/d;

    sget-object v1, Lr6/i;->a:Lr6/i$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr6/i$a;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "kindFilter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nameFilter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lq5/d;->m:Lq5/d;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v4, Lr6/d;->c:Lr6/d$a;

    sget v4, Lr6/d;->l:I

    invoke-virtual {v0, v4}, Lr6/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {p0, v0, v1}, Lv5/l;->h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh6/f;

    move-object v6, v1

    check-cast v6, Lr6/i$a$a;

    invoke-virtual {v6, v5}, Lr6/i$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v2}, Lr6/j;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v5

    invoke-static {v3, v5}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_31

    :cond_4b
    sget-object v4, Lr6/d;->c:Lr6/d$a;

    sget v4, Lr6/d;->i:I

    invoke-virtual {v0, v4}, Lr6/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, v0, Lr6/d;->a:Ljava/util/List;

    sget-object v5, Lr6/c$a;->a:Lr6/c$a;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {p0, v0, v1}, Lv5/l;->i(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh6/f;

    move-object v6, v1

    check-cast v6, Lr6/i$a$a;

    invoke-virtual {v6, v5}, Lr6/i$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v2}, Lv5/l;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_67

    :cond_81
    sget-object v4, Lr6/d;->c:Lr6/d$a;

    sget v4, Lr6/d;->j:I

    invoke-virtual {v0, v4}, Lr6/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_b7

    iget-object v4, v0, Lr6/d;->a:Ljava/util/List;

    sget-object v5, Lr6/c$a;->a:Lr6/c$a;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    invoke-virtual {p0, v0, v1}, Lv5/l;->o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/f;

    move-object v5, v1

    check-cast v5, Lr6/i$a$a;

    invoke-virtual {v5, v4}, Lr6/i$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lv5/l;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_9d

    :cond_b7
    invoke-static {v3}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
