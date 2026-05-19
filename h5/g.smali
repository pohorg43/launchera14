.class public final Lh5/g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ll5/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/f;

.field public final synthetic b:Lx6/m;


# direct methods
.method public constructor <init>(Lh5/f;Lx6/m;)V
    .registers 3

    iput-object p1, p0, Lh5/g;->a:Lh5/f;

    iput-object p2, p0, Lh5/g;->b:Lx6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 11

    new-instance v9, Ll5/k;

    iget-object v0, p0, Lh5/g;->a:Lh5/f;

    iget-object v1, v0, Lh5/f;->b:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lh5/f;->a:Li5/e0;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li5/l;

    sget-object v2, Lh5/f;->g:Lh6/f;

    sget-object v3, Li5/d0;->d:Li5/d0;

    sget-object v4, Li5/f;->b:Li5/f;

    iget-object v0, p0, Lh5/g;->a:Lh5/f;

    iget-object v0, v0, Lh5/f;->a:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    invoke-virtual {v0}, Lf5/g;->f()Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Li5/v0;->a:Li5/v0;

    const/4 v7, 0x0

    iget-object v8, p0, Lh5/g;->b:Lx6/m;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ll5/k;-><init>(Li5/l;Lh6/f;Li5/d0;Li5/f;Ljava/util/Collection;Li5/v0;ZLx6/m;)V

    iget-object p0, p0, Lh5/g;->b:Lx6/m;

    new-instance v0, Lh5/a;

    invoke-direct {v0, p0, v9}, Lh5/a;-><init>(Lx6/m;Li5/e;)V

    sget-object p0, Li4/a0;->a:Li4/a0;

    const/4 v1, 0x0

    invoke-virtual {v9, v0, p0, v1}, Ll5/k;->D0(Lr6/i;Ljava/util/Set;Li5/d;)V

    return-object v9
.end method
