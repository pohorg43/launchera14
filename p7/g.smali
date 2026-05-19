.class public final Lp7/g;
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
    c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1"
    f = "Collect.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lp7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/d;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lp7/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/g;->b:Lp7/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lp7/g;

    iget-object p0, p0, Lp7/g;->b:Lp7/d;

    invoke-direct {p1, p0, p2}, Lp7/g;-><init>(Lp7/d;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lp7/g;

    iget-object p0, p0, Lp7/g;->b:Lp7/d;

    invoke-direct {p1, p0, p2}, Lp7/g;-><init>(Lp7/d;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lp7/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lp7/g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp7/g;->b:Lp7/d;

    iput v2, p0, Lp7/g;->a:I

    sget-object v1, Lq7/s;->a:Lq7/s;

    invoke-interface {p1, v1, p0}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_25

    goto :goto_27

    :cond_25
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_27
    if-ne p0, v0, :cond_2a

    return-object v0

    :cond_2a
    :goto_2a
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
