.class public final Lu6/v$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/v;->d(Lc6/n;Z)Lj5/h;
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
.field public final synthetic a:Lu6/v;

.field public final synthetic b:Z

.field public final synthetic c:Lc6/n;


# direct methods
.method public constructor <init>(Lu6/v;ZLc6/n;)V
    .registers 4

    iput-object p1, p0, Lu6/v$b;->a:Lu6/v;

    iput-boolean p2, p0, Lu6/v$b;->b:Z

    iput-object p3, p0, Lu6/v$b;->c:Lc6/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lu6/v$b;->a:Lu6/v;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->c:Li5/l;

    invoke-virtual {v0, v1}, Lu6/v;->a(Li5/l;)Lu6/b0;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lu6/v$b;->b:Z

    iget-object v2, p0, Lu6/v$b;->a:Lu6/v;

    iget-object p0, p0, Lu6/v$b;->c:Lc6/n;

    if-eqz v1, :cond_23

    iget-object v1, v2, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    invoke-interface {v1, v0, p0}, Lu6/f;->c(Lu6/b0;Lc6/n;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    :cond_23
    iget-object v1, v2, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    invoke-interface {v1, v0, p0}, Lu6/f;->i(Lu6/b0;Lc6/n;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    if-nez p0, :cond_37

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_37
    return-object p0
.end method
