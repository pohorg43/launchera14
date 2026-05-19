.class public final Lq7/k$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lm7/s1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lm7/j0;

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
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lm7/j0;Lq7/k;Lp7/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lm7/s1;",
            ">;",
            "Lm7/j0;",
            "Lq7/k<",
            "TT;TR;>;",
            "Lp7/e<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/k$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lq7/k$a$a;->b:Lm7/j0;

    iput-object p3, p0, Lq7/k$a$a;->c:Lq7/k;

    iput-object p4, p0, Lq7/k$a$a;->d:Lp7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lq7/k$a$a$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lq7/k$a$a$b;

    iget v1, v0, Lq7/k$a$a$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lq7/k$a$a$b;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lq7/k$a$a$b;

    invoke-direct {v0, p0, p2}, Lq7/k$a$a$b;-><init>(Lq7/k$a$a;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lq7/k$a$a$b;->d:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lq7/k$a$a$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lq7/k$a$a$b;->c:Ljava/lang/Object;

    check-cast p0, Lm7/s1;

    iget-object p1, v0, Lq7/k$a$a$b;->b:Ljava/lang/Object;

    iget-object p0, v0, Lq7/k$a$a$b;->a:Ljava/lang/Object;

    check-cast p0, Lq7/k$a$a;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lq7/k$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lm7/s1;

    if-eqz p2, :cond_5b

    new-instance v2, Lq7/l;

    invoke-direct {v2}, Lq7/l;-><init>()V

    invoke-interface {p2, v2}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, Lq7/k$a$a$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lq7/k$a$a$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lq7/k$a$a$b;->c:Ljava/lang/Object;

    iput v3, v0, Lq7/k$a$a$b;->f:I

    invoke-interface {p2, v0}, Lm7/s1;->w(Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5b

    return-object v1

    :cond_5b
    :goto_5b
    iget-object p2, p0, Lq7/k$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lq7/k$a$a;->b:Lm7/j0;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-instance v3, Lq7/k$a$a$a;

    iget-object v4, p0, Lq7/k$a$a;->c:Lq7/k;

    iget-object p0, p0, Lq7/k$a$a;->d:Lp7/e;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, p1, v5}, Lq7/k$a$a$a;-><init>(Lq7/k;Lp7/e;Ljava/lang/Object;Ll4/d;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
