.class public Lp/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lq/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "k"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/a;->a:Lq/c$a;

    return-void
.end method

.method public static a(Lq/c;Lcom/airbnb/lottie/d;)Ll/e;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->a:Lq/c$b;

    if-ne v1, v2, :cond_3b

    invoke-virtual {p0}, Lq/c;->a()V

    :goto_10
    invoke-virtual {p0}, Lq/c;->e()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->c:Lq/c$b;

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-static {}, Lr/h;->c()F

    move-result v2

    sget-object v3, Lp/v;->a:Lp/v;

    invoke-static {p0, p1, v2, v3, v1}, Lp/q;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;Z)Ls/a;

    move-result-object v1

    new-instance v2, Li/h;

    invoke-direct {v2, p1, v1}, Li/h;-><init>(Lcom/airbnb/lottie/d;Ls/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_34
    invoke-virtual {p0}, Lq/c;->c()V

    invoke-static {v0}, Lp/r;->b(Ljava/util/List;)V

    goto :goto_4b

    :cond_3b
    new-instance p1, Ls/a;

    invoke-static {}, Lr/h;->c()F

    move-result v1

    invoke-static {p0, v1}, Lp/p;->b(Lq/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Ls/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    new-instance p0, Ll/e;

    invoke-direct {p0, v0}, Ll/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static b(Lq/c;Lcom/airbnb/lottie/d;)Ll/m;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq/c;",
            "Lcom/airbnb/lottie/d;",
            ")",
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lq/c$b;->f:Lq/c$b;

    invoke-virtual {p0}, Lq/c;->b()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_b
    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v6

    sget-object v7, Lq/c$b;->d:Lq/c$b;

    if-eq v6, v7, :cond_4b

    sget-object v6, Lp/a;->a:Lq/c$a;

    invoke-virtual {p0, v6}, Lq/c;->m(Lq/c$a;)I

    move-result v6

    if-eqz v6, :cond_46

    if-eq v6, v1, :cond_36

    const/4 v7, 0x2

    if-eq v6, v7, :cond_27

    invoke-virtual {p0}, Lq/c;->n()V

    invoke-virtual {p0}, Lq/c;->o()V

    goto :goto_b

    :cond_27
    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v6

    if-ne v6, v0, :cond_31

    invoke-virtual {p0}, Lq/c;->o()V

    goto :goto_3f

    :cond_31
    invoke-static {p0, p1}, Lp/d;->c(Lq/c;Lcom/airbnb/lottie/d;)Ll/b;

    move-result-object v4

    goto :goto_b

    :cond_36
    invoke-virtual {p0}, Lq/c;->k()Lq/c$b;

    move-result-object v6

    if-ne v6, v0, :cond_41

    invoke-virtual {p0}, Lq/c;->o()V

    :goto_3f
    move v5, v1

    goto :goto_b

    :cond_41
    invoke-static {p0, p1}, Lp/d;->c(Lq/c;Lcom/airbnb/lottie/d;)Ll/b;

    move-result-object v3

    goto :goto_b

    :cond_46
    invoke-static {p0, p1}, Lp/a;->a(Lq/c;Lcom/airbnb/lottie/d;)Ll/e;

    move-result-object v2

    goto :goto_b

    :cond_4b
    invoke-virtual {p0}, Lq/c;->d()V

    if-eqz v5, :cond_55

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :cond_55
    if-eqz v2, :cond_58

    return-object v2

    :cond_58
    new-instance p0, Ll/i;

    invoke-direct {p0, v3, v4}, Ll/i;-><init>(Ll/b;Ll/b;)V

    return-object p0
.end method
