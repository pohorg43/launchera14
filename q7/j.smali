.class public final Lq7/j;
.super Lq7/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq7/i<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp7/d;Ll4/f;ILo7/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/d<",
            "+TT;>;",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lq7/i;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    return-void
.end method


# virtual methods
.method public c(Ll4/f;ILo7/a;)Lq7/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lq7/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lq7/j;

    iget-object p0, p0, Lq7/i;->d:Lp7/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lq7/j;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    return-object v0
.end method

.method public d(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lq7/i;->d:Lp7/d;

    invoke-interface {p0, p1, p2}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_b

    return-object p0

    :cond_b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
