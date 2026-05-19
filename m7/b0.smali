.class public final Lm7/b0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompletionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n+ 2 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,67:1\n61#2,2:68\n61#2,2:70\n*S KotlinDebug\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n*L\n21#1:68,2\n27#1:70,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p0, Lm7/x;

    if-eqz p1, :cond_c

    check-cast p0, Lm7/x;

    iget-object p0, p0, Lm7/x;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_16

    new-instance v0, Lm7/y;

    invoke-direct {v0, p0, p1}, Lm7/y;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_16

    :cond_f
    new-instance p0, Lm7/x;

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    :cond_16
    :goto_16
    return-object p0
.end method
