.class public final Lm7/s1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic b(Lm7/s1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lm7/a1;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    const/4 p2, 0x1

    :cond_a
    invoke-interface {p0, p1, p2, p3}, Lm7/s1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    move-result-object p0

    return-object p0
.end method
