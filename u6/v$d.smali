.class public final Lu6/v$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/v;->g(Lc6/n;)Li5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lx6/j<",
        "+",
        "Lm6/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/v;

.field public final synthetic b:Lc6/n;

.field public final synthetic c:Lw6/m;


# direct methods
.method public constructor <init>(Lu6/v;Lc6/n;Lw6/m;)V
    .registers 4

    iput-object p1, p0, Lu6/v$d;->a:Lu6/v;

    iput-object p2, p0, Lu6/v$d;->b:Lc6/n;

    iput-object p3, p0, Lu6/v$d;->c:Lw6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lu6/v$d;->a:Lu6/v;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->a:Lx6/m;

    new-instance v2, Lu6/y;

    iget-object v3, p0, Lu6/v$d;->b:Lc6/n;

    iget-object p0, p0, Lu6/v$d;->c:Lw6/m;

    invoke-direct {v2, v0, v3, p0}, Lu6/y;-><init>(Lu6/v;Lc6/n;Lw6/m;)V

    invoke-interface {v1, v2}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object p0

    return-object p0
.end method
