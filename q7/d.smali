.class public final Lq7/d;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lq7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/e;Lq7/f;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lq7/f<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lq7/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/d;->c:Lp7/e;

    iput-object p2, p0, Lq7/d;->d:Lq7/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance v0, Lq7/d;

    iget-object v1, p0, Lq7/d;->c:Lp7/e;

    iget-object p0, p0, Lq7/d;->d:Lq7/f;

    invoke-direct {v0, v1, p0, p2}, Lq7/d;-><init>(Lp7/e;Lq7/f;Ll4/d;)V

    iput-object p1, v0, Lq7/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance v0, Lq7/d;

    iget-object v1, p0, Lq7/d;->c:Lp7/e;

    iget-object p0, p0, Lq7/d;->d:Lq7/f;

    invoke-direct {v0, v1, p0, p2}, Lq7/d;-><init>(Lp7/e;Lq7/f;Ll4/d;)V

    iput-object p1, v0, Lq7/d;->b:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lq7/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lq7/d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_44

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq7/d;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm7/j0;

    iget-object p1, p0, Lq7/d;->c:Lp7/e;

    iget-object v1, p0, Lq7/d;->d:Lq7/f;

    iget-object v4, v1, Lq7/f;->a:Ll4/f;

    iget v5, v1, Lq7/f;->b:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_29

    const/4 v5, -0x2

    :cond_29
    iget-object v6, v1, Lq7/f;->c:Lo7/a;

    const/4 v7, 0x3

    new-instance v9, Lq7/e;

    const/4 v8, 0x0

    invoke-direct {v9, v1, v8}, Lq7/e;-><init>(Lq7/f;Ll4/d;)V

    invoke-static/range {v3 .. v9}, Lo7/o;->b(Lm7/j0;Ll4/f;ILo7/a;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lo7/s;

    move-result-object v1

    iput v2, p0, Lq7/d;->a:I

    invoke-static {p1, v1, v2, p0}, Lp7/f;->a(Lp7/e;Lo7/s;ZLl4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_41
    if-ne p0, v0, :cond_44

    return-object v0

    :cond_44
    :goto_44
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
