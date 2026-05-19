.class public final La3/a$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La3/a;->b()V
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
    c = "com.pantanal.server.content.decision.cardsupport.shelf.ShelfDecisionCenter$query$1"
    f = "ShelfDecisionCenter.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "La3/a$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance p0, La3/a$b;

    invoke-direct {p0, p2}, La3/a$b;-><init>(Ll4/d;)V

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p0, La3/a$b;

    invoke-direct {p0, p2}, La3/a$b;-><init>(Ll4/d;)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, La3/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, La3/a$b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    if-ne v1, v3, :cond_e

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_29

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lm7/y0;->d:Lm7/f0;

    new-instance v1, La3/a$b$a;

    invoke-direct {v1, v2}, La3/a$b$a;-><init>(Ll4/d;)V

    iput v3, p0, La3/a$b;->a:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    check-cast p1, Ljava/util/List;

    sget-object p0, La3/a;->c:Lcom/pantanal/server/content/recommendlist/ListObserver;

    if-nez p0, :cond_30

    goto :goto_33

    :cond_30
    invoke-interface {p0, p1, v2}, Lcom/pantanal/server/content/recommendlist/ListObserver;->onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    :goto_33
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
