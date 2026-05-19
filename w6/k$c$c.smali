.class public final Lw6/k$c$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/k$c;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.field public final synthetic a:Lw6/k$c;


# direct methods
.method public constructor <init>(Lw6/k$c;)V
    .registers 2

    iput-object p1, p0, Lw6/k$c$c;->a:Lw6/k$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p1, Lh6/f;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k$c$c;->a:Lw6/k$c;

    iget-object v1, p0, Lw6/k$c;->a:Ljava/util/Map;

    sget-object v2, Lc6/i;->v:Li6/r;

    const-string v3, "PARSER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lw6/k$c;->i:Lw6/k;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_42

    iget-object p0, p0, Lw6/k$c;->i:Lw6/k;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lw6/k$c$a;

    invoke-direct {v1, v2, v4, p0}, Lw6/k$c$a;-><init>(Li6/r;Ljava/io/ByteArrayInputStream;Lw6/k;)V

    const-string p0, "nextFunction"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lj7/g;

    new-instance v2, Lj7/n;

    invoke-direct {v2, v1}, Lj7/n;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v1, v2}, Lj7/g;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lj7/l;->g(Lj7/h;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_42

    goto :goto_44

    :cond_42
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_44
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_51
    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/i;

    iget-object v4, v3, Lw6/k;->b:Lu6/m;

    iget-object v4, v4, Lu6/m;->i:Lu6/v;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lu6/v;->f(Lc6/i;)Li5/u0;

    move-result-object v2

    invoke-virtual {v3, v2}, Lw6/k;->r(Li5/u0;)Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    if-eqz v2, :cond_51

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_76
    invoke-virtual {v3, p1, v1}, Lw6/k;->j(Lh6/f;Ljava/util/List;)V

    invoke-static {v1}, Li7/a;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
