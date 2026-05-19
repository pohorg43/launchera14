.class public Ll5/p$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/p$a;-><init>(Ll5/p;Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "Li5/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/p$a;


# direct methods
.method public constructor <init>(Ll5/p$a;Ll5/p;)V
    .registers 3

    iput-object p1, p0, Ll5/p$a$c;->a:Ll5/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object p0, p0, Ll5/p$a$c;->a:Ll5/p$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ll5/p$a;->e:Ll5/p;

    iget-object v1, v1, Ll5/p;->j:Lx6/i;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    iget-object v4, p0, Ll5/p$a;->b:Lx6/g;

    check-cast v4, Lx6/e$m;

    invoke-virtual {v4, v2}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_4b

    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Ll5/p$a;->c:Lx6/g;

    check-cast v4, Lx6/e$m;

    invoke-virtual {v4, v2}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_46

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    :cond_46
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v3

    :cond_4b
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v3

    :cond_50
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v3

    :cond_55
    return-object v0
.end method
