.class public final Lq7/p;
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
    c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1"
    f = "FlowCoroutine.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lm7/j0;",
            "Lp7/e<",
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
.end field

.field public final synthetic d:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lp7/e;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lm7/j0;",
            "-",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lq7/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/p;->c:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lq7/p;->d:Lp7/e;

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

    new-instance v0, Lq7/p;

    iget-object v1, p0, Lq7/p;->c:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Lq7/p;->d:Lp7/e;

    invoke-direct {v0, v1, p0, p2}, Lq7/p;-><init>(Lkotlin/jvm/functions/Function3;Lp7/e;Ll4/d;)V

    iput-object p1, v0, Lq7/p;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance v0, Lq7/p;

    iget-object v1, p0, Lq7/p;->c:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Lq7/p;->d:Lp7/e;

    invoke-direct {v0, v1, p0, p2}, Lq7/p;-><init>(Lkotlin/jvm/functions/Function3;Lp7/e;Ll4/d;)V

    iput-object p1, v0, Lq7/p;->b:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lq7/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lq7/p;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_29

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq7/p;->b:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    iget-object v1, p0, Lq7/p;->c:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lq7/p;->d:Lp7/e;

    iput v2, p0, Lq7/p;->a:I

    invoke-interface {v1, p1, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
