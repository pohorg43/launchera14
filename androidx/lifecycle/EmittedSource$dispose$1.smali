.class final Landroidx/lifecycle/EmittedSource$dispose$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/EmittedSource;->dispose()V
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
    c = "androidx.lifecycle.EmittedSource$dispose$1"
    f = "CoroutineLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Landroidx/lifecycle/EmittedSource;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/EmittedSource;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/EmittedSource;",
            "Ll4/d<",
            "-",
            "Landroidx/lifecycle/EmittedSource$dispose$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/EmittedSource$dispose$1;->this$0:Landroidx/lifecycle/EmittedSource;

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

    new-instance p1, Landroidx/lifecycle/EmittedSource$dispose$1;

    iget-object p0, p0, Landroidx/lifecycle/EmittedSource$dispose$1;->this$0:Landroidx/lifecycle/EmittedSource;

    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/EmittedSource$dispose$1;-><init>(Landroidx/lifecycle/EmittedSource;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/EmittedSource$dispose$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/EmittedSource$dispose$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/EmittedSource$dispose$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/EmittedSource$dispose$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Landroidx/lifecycle/EmittedSource$dispose$1;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/EmittedSource$dispose$1;->this$0:Landroidx/lifecycle/EmittedSource;

    invoke-static {p0}, Landroidx/lifecycle/EmittedSource;->access$removeSource(Landroidx/lifecycle/EmittedSource;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
