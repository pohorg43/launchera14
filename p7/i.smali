.class public final Lp7/i;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function3<",
        "Lp7/e<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd9,
        0xd9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lp7/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/i;->d:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lp7/e;

    check-cast p3, Ll4/d;

    new-instance v0, Lp7/i;

    iget-object p0, p0, Lp7/i;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0, p3}, Lp7/i;-><init>(Lkotlin/jvm/functions/Function2;Ll4/d;)V

    iput-object p1, v0, Lp7/i;->b:Ljava/lang/Object;

    iput-object p2, v0, Lp7/i;->c:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lp7/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lp7/i;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_43

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object v1, p0, Lp7/i;->b:Ljava/lang/Object;

    check-cast v1, Lp7/e;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_37

    :cond_20
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp7/i;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lp7/e;

    iget-object p1, p0, Lp7/i;->c:Ljava/lang/Object;

    iget-object v4, p0, Lp7/i;->d:Lkotlin/jvm/functions/Function2;

    iput-object v1, p0, Lp7/i;->b:Ljava/lang/Object;

    iput v3, p0, Lp7/i;->a:I

    invoke-interface {v4, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    return-object v0

    :cond_37
    :goto_37
    const/4 v3, 0x0

    iput-object v3, p0, Lp7/i;->b:Ljava/lang/Object;

    iput v2, p0, Lp7/i;->a:I

    invoke-interface {v1, p1, p0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_43

    return-object v0

    :cond_43
    :goto_43
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
