.class public abstract Lp7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lp7/a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/a$a;

    iget v1, v0, Lp7/a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/a$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/a$a;

    invoke-direct {v0, p0, p2}, Lp7/a$a;-><init>(Lp7/a;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/a$a;->b:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/a$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p0, v0, Lp7/a$a;->a:Ljava/lang/Object;

    check-cast p0, Lq7/u;

    :try_start_27
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_56

    :catchall_2b
    move-exception p1

    goto :goto_62

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p2, Lq7/u;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lq7/u;-><init>(Lp7/e;Ll4/f;)V

    :try_start_41
    iput-object p2, v0, Lp7/a$a;->a:Ljava/lang/Object;

    iput v3, v0, Lp7/a$a;->d:I
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_60

    :try_start_45
    check-cast p0, Lp7/n;

    iget-object p0, p0, Lp7/n;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_50

    goto :goto_52

    :cond_50
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_5e

    :goto_52
    if-ne p0, v1, :cond_55

    return-object v1

    :cond_55
    move-object p0, p2

    :goto_56
    invoke-virtual {p0}, Lq7/u;->releaseIntercepted()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :goto_5c
    move-object p1, p0

    goto :goto_61

    :catchall_5e
    move-exception p0

    goto :goto_5c

    :catchall_60
    move-exception p1

    :goto_61
    move-object p0, p2

    :goto_62
    invoke-virtual {p0}, Lq7/u;->releaseIntercepted()V

    throw p1
.end method
