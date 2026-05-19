.class public final Lq7/e;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lo7/q<",
        "Ljava/lang/Object;",
        ">;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1"
    f = "ChannelFlow.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lq7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq7/f;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/f<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lq7/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/e;->c:Lq7/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq7/e;

    iget-object p0, p0, Lq7/e;->c:Lq7/f;

    invoke-direct {v0, p0, p2}, Lq7/e;-><init>(Lq7/f;Ll4/d;)V

    iput-object p1, v0, Lq7/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lo7/q;

    check-cast p2, Ll4/d;

    new-instance v0, Lq7/e;

    iget-object p0, p0, Lq7/e;->c:Lq7/f;

    invoke-direct {v0, p0, p2}, Lq7/e;-><init>(Lq7/f;Ll4/d;)V

    iput-object p1, v0, Lq7/e;->b:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lq7/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lq7/e;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_27

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq7/e;->b:Ljava/lang/Object;

    check-cast p1, Lo7/q;

    iget-object v1, p0, Lq7/e;->c:Lq7/f;

    iput v2, p0, Lq7/e;->a:I

    invoke-virtual {v1, p1, p0}, Lq7/f;->b(Lo7/q;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
