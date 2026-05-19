.class public final Lu6/f0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/f0;->e(Lc6/q;Z)Ly6/s0;
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
.field public final synthetic a:Lu6/f0;

.field public final synthetic b:Lc6/q;


# direct methods
.method public constructor <init>(Lu6/f0;Lc6/q;)V
    .registers 3

    iput-object p1, p0, Lu6/f0$b;->a:Lu6/f0;

    iput-object p2, p0, Lu6/f0$b;->b:Lc6/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lu6/f0$b;->a:Lu6/f0;

    iget-object v0, v0, Lu6/f0;->a:Lu6/m;

    iget-object v1, v0, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    iget-object p0, p0, Lu6/f0$b;->b:Lc6/q;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    invoke-interface {v1, p0, v0}, Lu6/f;->b(Lc6/q;Le6/c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
