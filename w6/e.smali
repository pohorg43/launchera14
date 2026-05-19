.class public final Lw6/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lj5/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;

.field public final synthetic b:Lc6/g;


# direct methods
.method public constructor <init>(Lw6/d;Lc6/g;)V
    .registers 3

    iput-object p1, p0, Lw6/e;->a:Lw6/d;

    iput-object p2, p0, Lw6/e;->b:Lc6/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw6/e;->a:Lw6/d;

    iget-object v1, v0, Lw6/d;->l:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    iget-object v0, v0, Lw6/d;->w:Lu6/b0$a;

    iget-object p0, p0, Lw6/e;->b:Lc6/g;

    invoke-interface {v1, v0, p0}, Lu6/f;->e(Lu6/b0;Lc6/g;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
