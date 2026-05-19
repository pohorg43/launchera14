.class public final Lio/branch/search/j5$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/j5$a;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/e<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lh4/z;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp7/e;


# direct methods
.method public constructor <init>(Lp7/e;Lio/branch/search/j5$a;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/j5$a$a;->a:Lp7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lio/branch/search/j5$a$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/branch/search/j5$a$a$a;

    iget v1, v0, Lio/branch/search/j5$a$a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/j5$a$a$a;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/branch/search/j5$a$a$a;

    invoke-direct {v0, p0, p2}, Lio/branch/search/j5$a$a$a;-><init>(Lio/branch/search/j5$a$a;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lio/branch/search/j5$a$a$a;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lio/branch/search/j5$a$a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    if-ne v2, v3, :cond_27

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_44

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/branch/search/j5$a$a;->a:Lp7/e;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lh4/z;->a:Lh4/z;

    iput v3, v0, Lio/branch/search/j5$a$a$a;->b:I

    invoke-interface {p0, p1, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_44

    return-object v1

    :cond_44
    :goto_44
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
