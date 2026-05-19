.class public final Lm7/s0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n314#2,11:174\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n106#1:163,11\n127#1:174,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(JLl4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_9
    new-instance v0, Lm7/n;

    invoke-static {p2}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_28

    iget-object v1, v0, Lm7/n;->e:Ll4/f;

    invoke-static {v1}, Lm7/s0;->b(Ll4/f;)Lm7/r0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lm7/r0;->m(JLm7/l;)V

    :cond_28
    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_35

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_35
    if-ne p0, p1, :cond_38

    return-object p0

    :cond_38
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public static final b(Ll4/f;)Lm7/r0;
    .registers 2

    sget v0, Ll4/e;->J:I

    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    instance-of v0, p0, Lm7/r0;

    if-eqz v0, :cond_f

    check-cast p0, Lm7/r0;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    sget-object p0, Lm7/o0;->b:Lm7/r0;

    :cond_14
    return-object p0
.end method
