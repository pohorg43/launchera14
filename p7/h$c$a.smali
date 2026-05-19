.class public final Lp7/h$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Lo7/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h$c$a;->a:Lo7/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 7
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

    instance-of v0, p2, Lp7/h$c$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/h$c$a$a;

    iget v1, v0, Lp7/h$c$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/h$c$a$a;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/h$c$a$a;

    invoke-direct {v0, p0, p2}, Lp7/h$c$a$a;-><init>(Lp7/h$c$a;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/h$c$a$a;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/h$c$a$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    if-ne v2, v3, :cond_27

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_41

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lp7/h$c$a;->a:Lo7/q;

    if-nez p1, :cond_38

    sget-object p1, Lq7/t;->a:Lr7/f0;

    :cond_38
    iput v3, v0, Lp7/h$c$a$a;->c:I

    invoke-interface {p0, p1, v0}, Lo7/t;->A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_41

    return-object v1

    :cond_41
    :goto_41
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
