.class public final Li4/q0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(II)V
    .registers 5

    if-lez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_26

    const-string v0, " must be greater than zero."

    if-eq p0, p1, :cond_16

    const-string v1, "Both size "

    const-string v2, " and step "

    invoke-static {v1, p0, v2, p1, v0}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_16
    const-string p1, "size "

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    return-void
.end method

.method public static final b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;IIZZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object p0, Li4/x;->a:Li4/x;

    return-object p0

    :cond_e
    new-instance v7, Li4/q0$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p0

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v6}, Li4/q0$a;-><init>(IILjava/util/Iterator;ZZLl4/d;)V

    const-string p0, "block"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lj7/i;

    invoke-direct {p0}, Lj7/i;-><init>()V

    invoke-static {v7, p0, p0}, Lm4/d;->f(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p1

    iput-object p1, p0, Lj7/i;->d:Ll4/d;

    return-object p0
.end method
