.class public final Lr7/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnUndeliveredElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnUndeliveredElement.kt\nkotlinx/coroutines/internal/OnUndeliveredElementKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,44:1\n75#2:45\n*S KotlinDebug\n*F\n+ 1 OnUndeliveredElement.kt\nkotlinx/coroutines/internal/OnUndeliveredElementKt\n*L\n22#1:45\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lh4/z;",
            ">;TE;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lr7/x;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;)Lr7/n0;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p2, p0}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;)Lr7/n0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lh4/z;",
            ">;TE;",
            "Lr7/n0;",
            ")",
            "Lr7/n0;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_11

    invoke-static {p2, p0}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_10
    return-object p2

    :cond_11
    new-instance p2, Lr7/n0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in undelivered element handler for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lr7/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;I)Lr7/n0;
    .registers 4

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lr7/x;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;)Lr7/n0;

    move-result-object p0

    return-object p0
.end method
