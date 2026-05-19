.class public final Lw6/k$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/k;-><init>(Lu6/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
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
.field public final synthetic a:Lw6/k;


# direct methods
.method public constructor <init>(Lw6/k;)V
    .registers 2

    iput-object p1, p0, Lw6/k$e;->a:Lw6/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw6/k$e;->a:Lw6/k;

    invoke-virtual {v0}, Lw6/k;->n()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_20

    :cond_a
    iget-object v1, p0, Lw6/k$e;->a:Lw6/k;

    invoke-virtual {v1}, Lw6/k;->m()Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lw6/k$e;->a:Lw6/k;

    iget-object p0, p0, Lw6/k;->c:Lw6/k$a;

    invoke-interface {p0}, Lw6/k$a;->e()Ljava/util/Set;

    move-result-object p0

    invoke-static {v1, p0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :goto_20
    return-object p0
.end method
