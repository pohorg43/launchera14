.class public Ll5/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/b$a;


# direct methods
.method public constructor <init>(Ll5/b$a;)V
    .registers 2

    iput-object p1, p0, Ll5/a;->a:Ll5/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lz6/f;

    iget-object v0, p0, Ll5/a;->a:Ll5/b$a;

    iget-object v0, v0, Ll5/b$a;->a:Ll5/b;

    invoke-virtual {p1, v0}, Lz6/f;->f(Li5/l;)Li5/h;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object p0, p0, Ll5/a;->a:Ll5/b$a;

    iget-object p0, p0, Ll5/b$a;->a:Ll5/b;

    iget-object p0, p0, Ll5/b;->b:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    goto :goto_4c

    :cond_19
    instance-of v1, v0, Li5/z0;

    if-eqz v1, :cond_31

    move-object p0, v0

    check-cast p0, Li5/z0;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ly6/a2;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Ly6/m0;->b(Li5/z0;Ljava/util/List;)Ly6/s0;

    move-result-object p0

    goto :goto_4c

    :cond_31
    instance-of v1, v0, Ll5/v;

    if-eqz v1, :cond_48

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v1

    invoke-interface {v1, p1}, Ly6/j1;->a(Lz6/f;)Ly6/j1;

    move-result-object v1

    check-cast v0, Ll5/v;

    invoke-virtual {v0, p1}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p1

    invoke-static {v1, p1, p0}, Ly6/a2;->p(Ly6/j1;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    goto :goto_4c

    :cond_48
    invoke-interface {v0}, Li5/h;->m()Ly6/s0;

    move-result-object p0

    :goto_4c
    return-object p0
.end method
