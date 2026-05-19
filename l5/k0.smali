.class public Ll5/k0;
.super Lr6/j;
.source ""


# instance fields
.field public final b:Li5/e0;

.field public final c:Lh6/c;


# direct methods
.method public constructor <init>(Li5/e0;Lh6/c;)V
    .registers 4

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr6/j;-><init>()V

    iput-object p1, p0, Ll5/k0;->b:Li5/e0;

    iput-object p2, p0, Ll5/k0;->c:Lh6/c;

    return-void
.end method


# virtual methods
.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->h:I

    invoke-virtual {p1, v0}, Lr6/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    iget-object v0, p0, Ll5/k0;->c:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object p1, p1, Lr6/d;->a:Ljava/util/List;

    sget-object v0, Lr6/c$b;->a:Lr6/c$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_2c
    iget-object p1, p0, Ll5/k0;->b:Li5/e0;

    iget-object v0, p0, Ll5/k0;->c:Lh6/c;

    invoke-interface {p1, v0, p2}, Li5/e0;->j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/c;

    invoke-virtual {v1}, Lh6/c;->g()Lh6/f;

    move-result-object v1

    const-string v2, "subFqName.shortName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Lh6/f;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6d

    goto :goto_86

    :cond_6d
    iget-object v2, p0, Ll5/k0;->b:Li5/e0;

    iget-object v4, p0, Ll5/k0;->c:Lh6/c;

    invoke-virtual {v4, v1}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v1

    const-string v4, "fqName.child(name)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object v1

    invoke-interface {v1}, Li5/l0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_85

    goto :goto_86

    :cond_85
    move-object v3, v1

    :goto_86
    invoke-static {v0, v3}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_41

    :cond_8a
    return-object v0
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "subpackages of "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll5/k0;->c:Lh6/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll5/k0;->b:Li5/e0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
