.class public final Lc5/x$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/x;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/x;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/x;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/x;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc5/x;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lc5/x$c;->a:Lc5/x;

    iput-object p2, p0, Lc5/x$c;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lc5/x$c;->a:Lc5/x;

    iget-object v1, v0, Lc5/x;->f:Lc5/t;

    iget-object p0, p0, Lc5/x$c;->b:Ljava/lang/String;

    iget-object v0, v0, Lc5/x;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "signature"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<init>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lc5/t;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_33

    :cond_26
    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    const-string v3, "identifier(name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/t;->g(Lh6/f;)Ljava/util/Collection;

    move-result-object v2

    :goto_33
    move-object v3, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Li5/x;

    sget-object v7, Lc5/t0;->a:Lc5/t0;

    invoke-static {v6}, Lc5/t0;->d(Li5/x;)Lc5/g;

    move-result-object v6

    invoke-virtual {v6}, Lc5/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v11, 0x1

    if-eq v4, v11, :cond_b0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lc5/u;->a:Lc5/u;

    const/16 v10, 0x1e

    const-string v4, "\n"

    invoke-static/range {v3 .. v10}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc5/n0;

    const-string v4, "Function \'"

    const-string v5, "\' (JVM signature: "

    const-string v6, ") not resolved in "

    invoke-static {v4, p0, v5, v0, v6}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v11, 0x0

    :goto_8f
    if-eqz v11, :cond_94

    const-string v0, " no members found"

    goto :goto_a5

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b0
    invoke-static {v2}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/x;

    return-object p0
.end method
