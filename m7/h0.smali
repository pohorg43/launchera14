.class public final Lm7/h0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,110:1\n75#2:111\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n38#1:111\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ll4/f;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    sget v0, Lm7/g0;->K:I

    sget-object v0, Lm7/g0$a;->a:Lm7/g0$a;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    check-cast v0, Lm7/g0;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0, p1}, Lm7/g0;->handleException(Ll4/f;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    return-void

    :cond_10
    invoke-static {p0, p1}, Lv1/p;->d(Ll4/f;Ljava/lang/Throwable;)V

    return-void

    :catchall_14
    move-exception v0

    if-ne p1, v0, :cond_18

    goto :goto_23

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_23
    invoke-static {p0, p1}, Lv1/p;->d(Ll4/f;Ljava/lang/Throwable;)V

    return-void
.end method
