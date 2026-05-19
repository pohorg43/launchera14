.class public Lp/r;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lq/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/r;->a:Lq/c$a;

    return-void
.end method

.method public static a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq/c;",
            "Lcom/airbnb/lottie/d;",
            "F",
            "Lp/h0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ls/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->f:Lq/c$b;

    if-ne v1, v2, :cond_13

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lq/c;->b()V

    :goto_16
    invoke-virtual {p0}, Lq/c;->e()Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Lp/r;->a:Lq/c$a;

    invoke-virtual {p0, v1}, Lq/c;->m(Lq/c$a;)I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lq/c;->o()V

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->a:Lq/c$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_57

    invoke-virtual {p0}, Lq/c;->a()V

    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->g:Lq/c$b;

    if-ne v1, v2, :cond_44

    invoke-static {p0, p1, p2, p3, v3}, Lp/q;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;Z)Ls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_44
    :goto_44
    invoke-virtual {p0}, Lq/c;->e()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lp/q;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;Z)Ls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_53
    :goto_53
    invoke-virtual {p0}, Lq/c;->c()V

    goto :goto_16

    :cond_57
    invoke-static {p0, p1, p2, p3, v3}, Lp/q;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;Z)Ls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5f
    invoke-virtual {p0}, Lq/c;->d()V

    invoke-static {v0}, Lp/r;->b(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ls/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_33

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/a;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/a;

    iget v4, v3, Ls/a;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Ls/a;->f:Ljava/lang/Float;

    iget-object v4, v2, Ls/a;->c:Ljava/lang/Object;

    if-nez v4, :cond_5

    iget-object v3, v3, Ls/a;->b:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iput-object v3, v2, Ls/a;->c:Ljava/lang/Object;

    instance-of v3, v2, Li/h;

    if-eqz v3, :cond_5

    check-cast v2, Li/h;

    invoke-virtual {v2}, Li/h;->e()V

    goto :goto_5

    :cond_33
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v1, v0, Ls/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_41

    iget-object v1, v0, Ls/a;->c:Ljava/lang/Object;

    if-nez v1, :cond_4b

    :cond_41
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4b

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4b
    return-void
.end method
