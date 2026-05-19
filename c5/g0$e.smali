.class public final Lc5/g0$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/g0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/o0;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/g0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/g0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/g0$e;->a:Lc5/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 9

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    iget-object v0, p0, Lc5/g0$e;->a:Lc5/g0;

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-static {v0}, Lc5/t0;->c(Li5/o0;)Lc5/h;

    move-result-object v0

    instance-of v1, v0, Lc5/h$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_c0

    check-cast v0, Lc5/h$c;

    iget-object v1, v0, Lc5/h$c;->a:Li5/o0;

    sget-object v3, Lg6/h;->a:Lg6/h;

    iget-object v4, v0, Lc5/h$c;->b:Lc6/n;

    iget-object v5, v0, Lc5/h$c;->d:Le6/c;

    iget-object v6, v0, Lc5/h$c;->e:Le6/g;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lg6/h;->b(Lc6/n;Le6/c;Le6/g;Z)Lg6/d$a;

    move-result-object v3

    if-eqz v3, :cond_d2

    iget-object p0, p0, Lc5/g0$e;->a:Lc5/g0;

    const/4 v4, 0x0

    if-eqz v1, :cond_bc

    invoke-interface {v1}, Li5/b;->f()Li5/b$a;

    move-result-object v5

    sget-object v6, Li5/b$a;->b:Li5/b$a;

    if-ne v5, v6, :cond_32

    goto :goto_83

    :cond_32
    invoke-interface {v1}, Li5/d1;->b()Li5/l;

    move-result-object v5

    if-eqz v5, :cond_b8

    invoke-static {v5}, Lk6/i;->p(Li5/l;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Li5/l;->b()Li5/l;

    move-result-object v6

    invoke-static {v6}, Lk6/i;->o(Li5/l;)Z

    move-result v6

    if-eqz v6, :cond_54

    check-cast v5, Li5/e;

    sget-object v6, Lf5/c;->a:Lf5/c;

    invoke-static {v6, v5}, Lv1/e;->a(Lf5/c;Li5/e;)Z

    move-result v5

    if-nez v5, :cond_54

    move v5, v7

    goto :goto_55

    :cond_54
    move v5, v4

    :goto_55
    if-eqz v5, :cond_58

    goto :goto_84

    :cond_58
    invoke-interface {v1}, Li5/d1;->b()Li5/l;

    move-result-object v5

    invoke-static {v5}, Lk6/i;->p(Li5/l;)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v1}, Li5/o0;->p0()Li5/v;

    move-result-object v5

    if-eqz v5, :cond_76

    invoke-interface {v5}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    sget-object v6, Lr5/e0;->b:Lh6/c;

    invoke-interface {v5, v6}, Lj5/h;->g(Lh6/c;)Z

    move-result v5

    if-eqz v5, :cond_76

    move v5, v7

    goto :goto_80

    :cond_76
    invoke-interface {v1}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    sget-object v6, Lr5/e0;->b:Lh6/c;

    invoke-interface {v5, v6}, Lj5/h;->g(Lh6/c;)Z

    move-result v5

    :goto_80
    if-eqz v5, :cond_83

    goto :goto_84

    :cond_83
    :goto_83
    move v7, v4

    :goto_84
    if-nez v7, :cond_a5

    iget-object v0, v0, Lc5/h$c;->b:Lc6/n;

    invoke-static {v0}, Lg6/h;->d(Lc6/n;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_a5

    :cond_8f
    invoke-interface {v1}, Li5/d1;->b()Li5/l;

    move-result-object v0

    instance-of v1, v0, Li5/e;

    if-eqz v1, :cond_9e

    check-cast v0, Li5/e;

    invoke-static {v0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_af

    :cond_9e
    iget-object p0, p0, Lc5/g0;->f:Lc5/t;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_af

    :cond_a5
    :goto_a5
    iget-object p0, p0, Lc5/g0;->f:Lc5/t;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_af
    if-eqz p0, :cond_d2

    :try_start_b1
    iget-object v0, v3, Lg6/d$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b1 .. :try_end_b7} :catch_d2

    goto :goto_d2

    :cond_b8
    invoke-static {v7}, Lr5/n;->a(I)V

    throw v2

    :cond_bc
    invoke-static {v4}, Lr5/n;->a(I)V

    throw v2

    :cond_c0
    instance-of p0, v0, Lc5/h$a;

    if-eqz p0, :cond_c9

    check-cast v0, Lc5/h$a;

    iget-object v2, v0, Lc5/h$a;->a:Ljava/lang/reflect/Field;

    goto :goto_d2

    :cond_c9
    instance-of p0, v0, Lc5/h$b;

    if-eqz p0, :cond_ce

    goto :goto_d2

    :cond_ce
    instance-of p0, v0, Lc5/h$d;

    if-eqz p0, :cond_d3

    :catch_d2
    :cond_d2
    :goto_d2
    return-object v2

    :cond_d3
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
