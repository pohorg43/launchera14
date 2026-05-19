.class public final Lp7/b;
.super Lp7/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp7/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lo7/q<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lo7/q<",
            "-TT;>;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lp7/c;-><init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;)V

    iput-object p1, p0, Lp7/b;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;I)V
    .registers 7

    and-int/lit8 p2, p5, 0x2

    const/4 p4, 0x0

    if-eqz p2, :cond_8

    sget-object p2, Ll4/h;->a:Ll4/h;

    goto :goto_9

    :cond_8
    move-object p2, p4

    :goto_9
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_e

    const/4 p3, -0x2

    :cond_e
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_14

    sget-object p4, Lo7/a;->a:Lo7/a;

    :cond_14
    invoke-direct {p0, p1, p2, p3, p4}, Lp7/c;-><init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;)V

    iput-object p1, p0, Lp7/b;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public b(Lo7/q;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lp7/b$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/b$a;

    iget v1, v0, Lp7/b$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/b$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/b$a;

    invoke-direct {v0, p0, p2}, Lp7/b$a;-><init>(Lp7/b;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/b$a;->b:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/b$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    iget-object p0, v0, Lp7/b$a;->a:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lo7/q;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_49

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lp7/b$a;->a:Ljava/lang/Object;

    iput v3, v0, Lp7/b$a;->d:I

    iget-object p0, p0, Lp7/c;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_44

    goto :goto_46

    :cond_44
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_46
    if-ne p0, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    invoke-interface {p1}, Lo7/t;->B()Z

    move-result p0

    if-eqz p0, :cond_52

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ll4/f;ILo7/a;)Lq7/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lq7/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lp7/b;

    iget-object p0, p0, Lp7/b;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0, p1, p2, p3}, Lp7/b;-><init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;)V

    return-object v0
.end method
