.class public final Lw5/d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw5/e;

.field public final synthetic b:Li5/a1;

.field public final synthetic c:Lw5/a;

.field public final synthetic d:Ly6/j1;

.field public final synthetic e:Ly5/j;


# direct methods
.method public constructor <init>(Lw5/e;Li5/a1;Lw5/a;Ly6/j1;Ly5/j;)V
    .registers 6

    iput-object p1, p0, Lw5/d;->a:Lw5/e;

    iput-object p2, p0, Lw5/d;->b:Li5/a1;

    iput-object p3, p0, Lw5/d;->c:Lw5/a;

    iput-object p4, p0, Lw5/d;->d:Ly6/j1;

    iput-object p5, p0, Lw5/d;->e:Ly5/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lw5/d;->a:Lw5/e;

    iget-object v0, v0, Lw5/e;->d:Ly6/n1;

    iget-object v1, p0, Lw5/d;->b:Li5/a1;

    iget-object v2, p0, Lw5/d;->c:Lw5/a;

    iget-object v3, p0, Lw5/d;->d:Ly6/j1;

    invoke-interface {v3}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v3}, Li5/h;->m()Ly6/s0;

    move-result-object v3

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move-object v8, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1f

    invoke-static/range {v2 .. v9}, Lw5/a;->e(Lw5/a;Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)Lw5/a;

    move-result-object v2

    iget-object p0, p0, Lw5/d;->e:Ly5/j;

    invoke-interface {p0}, Ly5/j;->p()Z

    move-result p0

    invoke-virtual {v2, p0}, Lw5/a;->f(Z)Lw5/a;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ly6/n1;->b(Li5/a1;Ly6/c0;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
