.class public final Lq7/k$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/k;->d(Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3"
    f = "Merge.kt"
    l = {
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lq7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/k<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq7/k;Lp7/e;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/k<",
            "TT;TR;>;",
            "Lp7/e<",
            "-TR;>;",
            "Ll4/d<",
            "-",
            "Lq7/k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/k$a;->c:Lq7/k;

    iput-object p2, p0, Lq7/k$a;->d:Lp7/e;

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

    new-instance v0, Lq7/k$a;

    iget-object v1, p0, Lq7/k$a;->c:Lq7/k;

    iget-object p0, p0, Lq7/k$a;->d:Lp7/e;

    invoke-direct {v0, v1, p0, p2}, Lq7/k$a;-><init>(Lq7/k;Lp7/e;Ll4/d;)V

    iput-object p1, v0, Lq7/k$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance v0, Lq7/k$a;

    iget-object v1, p0, Lq7/k$a;->c:Lq7/k;

    iget-object p0, p0, Lq7/k$a;->d:Lp7/e;

    invoke-direct {v0, v1, p0, p2}, Lq7/k$a;-><init>(Lq7/k;Lp7/e;Ll4/d;)V

    iput-object p1, v0, Lq7/k$a;->b:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lq7/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lq7/k$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_35

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq7/k$a;->b:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lq7/k$a;->c:Lq7/k;

    iget-object v4, v3, Lq7/i;->d:Lp7/d;

    new-instance v5, Lq7/k$a$a;

    iget-object v6, p0, Lq7/k$a;->d:Lp7/e;

    invoke-direct {v5, v1, p1, v3, v6}, Lq7/k$a$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lm7/j0;Lq7/k;Lp7/e;)V

    iput v2, p0, Lq7/k$a;->a:I

    invoke-interface {v4, v5, p0}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_35

    return-object v0

    :cond_35
    :goto_35
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
