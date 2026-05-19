.class public final Lu6/v$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/v;->i(Ljava/util/List;Li6/p;Lu6/b;)Ljava/util/List;
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

.field public final synthetic b:Lu6/b0;

.field public final synthetic c:Li6/p;

.field public final synthetic d:Lu6/b;

.field public final synthetic e:I

.field public final synthetic f:Lc6/u;


# direct methods
.method public constructor <init>(Lu6/v;Lu6/b0;Li6/p;Lu6/b;ILc6/u;)V
    .registers 7

    iput-object p1, p0, Lu6/v$e;->a:Lu6/v;

    iput-object p2, p0, Lu6/v$e;->b:Lu6/b0;

    iput-object p3, p0, Lu6/v$e;->c:Li6/p;

    iput-object p4, p0, Lu6/v$e;->d:Lu6/b;

    iput p5, p0, Lu6/v$e;->e:I

    iput-object p6, p0, Lu6/v$e;->f:Lc6/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lu6/v$e;->a:Lu6/v;

    iget-object v0, v0, Lu6/v;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v1, v0, Lu6/k;->e:Lu6/c;

    iget-object v2, p0, Lu6/v$e;->b:Lu6/b0;

    iget-object v3, p0, Lu6/v$e;->c:Li6/p;

    iget-object v4, p0, Lu6/v$e;->d:Lu6/b;

    iget v5, p0, Lu6/v$e;->e:I

    iget-object v6, p0, Lu6/v$e;->f:Lc6/u;

    invoke-interface/range {v1 .. v6}, Lu6/f;->f(Lu6/b0;Li6/p;Lu6/b;ILc6/u;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
