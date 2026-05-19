.class public final Lw6/p$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/p;-><init>(Lu6/m;Lc6/s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lw6/p;


# direct methods
.method public constructor <init>(Lw6/p;)V
    .registers 2

    iput-object p1, p0, Lw6/p$a;->a:Lw6/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lw6/p$a;->a:Lw6/p;

    iget-object v0, p0, Lw6/p;->k:Lu6/m;

    iget-object v1, v0, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    iget-object p0, p0, Lw6/p;->l:Lc6/s;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    invoke-interface {v1, p0, v0}, Lu6/f;->g(Lc6/s;Le6/c;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
