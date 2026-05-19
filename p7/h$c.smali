.class public final Lp7/h$c;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lo7/q<",
        "-",
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1"
    f = "Delay.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lp7/d;
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
            "Lp7/h$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h$c;->c:Lp7/d;

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

    new-instance v0, Lp7/h$c;

    iget-object p0, p0, Lp7/h$c;->c:Lp7/d;

    invoke-direct {v0, p0, p2}, Lp7/h$c;-><init>(Lp7/d;Ll4/d;)V

    iput-object p1, v0, Lp7/h$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lo7/q;

    check-cast p2, Ll4/d;

    new-instance v0, Lp7/h$c;

    iget-object p0, p0, Lp7/h$c;->c:Lp7/d;

    invoke-direct {v0, p0, p2}, Lp7/h$c;-><init>(Lp7/d;Ll4/d;)V

    iput-object p1, v0, Lp7/h$c;->b:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lp7/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lp7/h$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp7/h$c;->b:Ljava/lang/Object;

    check-cast p1, Lo7/q;

    iget-object v1, p0, Lp7/h$c;->c:Lp7/d;

    new-instance v3, Lp7/h$c$a;

    invoke-direct {v3, p1}, Lp7/h$c$a;-><init>(Lo7/q;)V

    iput v2, p0, Lp7/h$c;->a:I

    invoke-interface {v1, v3, p0}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2c

    return-object v0

    :cond_2c
    :goto_2c
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
