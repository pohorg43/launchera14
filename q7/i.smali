.class public abstract Lq7/i;
.super Lq7/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lq7/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lp7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/d<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/d;Ll4/f;ILo7/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/d<",
            "+TS;>;",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lq7/f;-><init>(Ll4/f;ILo7/a;)V

    iput-object p1, p0, Lq7/i;->d:Lp7/d;

    return-void
.end method


# virtual methods
.method public b(Lo7/q;Ll4/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lq7/x;

    invoke-direct {v0, p1}, Lq7/x;-><init>(Lo7/t;)V

    invoke-virtual {p0, v0, p2}, Lq7/i;->d(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_e

    goto :goto_10

    :cond_e
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_10
    return-object p0
.end method

.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 7
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

    iget v0, p0, Lq7/f;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_63

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    iget-object v1, p0, Lq7/f;->a:Ll4/f;

    invoke-interface {v0, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0, p1, p2}, Lq7/i;->d(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_1e

    goto :goto_6e

    :cond_1e
    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_6e

    :cond_21
    sget v2, Ll4/e;->J:I

    sget-object v2, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {v1, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v3

    invoke-interface {v0, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    instance-of v2, p1, Lq7/x;

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3d
    instance-of v2, p1, Lq7/s;

    :goto_3f
    if-eqz v2, :cond_42

    goto :goto_48

    :cond_42
    new-instance v2, Lq7/z;

    invoke-direct {v2, p1, v0}, Lq7/z;-><init>(Lp7/e;Ll4/f;)V

    move-object p1, v2

    :goto_48
    new-instance v0, Lq7/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lq7/h;-><init>(Lq7/i;Ll4/d;)V

    invoke-static {v1}, Lr7/h0;->b(Ll4/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0, v0, p2}, Lq7/g;->a(Ll4/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_5b

    goto :goto_5d

    :cond_5b
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_5d
    if-ne p0, p1, :cond_60

    goto :goto_6e

    :cond_60
    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_6e

    :cond_63
    invoke-super {p0, p1, p2}, Lq7/f;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_6c

    goto :goto_6e

    :cond_6c
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_6e
    return-object p0
.end method

.method public abstract d(Lp7/e;Ll4/d;)Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq7/i;->d:Lp7/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lq7/f;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
