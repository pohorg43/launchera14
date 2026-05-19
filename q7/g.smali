.class public final Lq7/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,245:1\n95#2,5:246\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n226#1:246,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ll4/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/f;",
            "TV;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p2}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_4
    new-instance v0, Lq7/y;

    invoke-direct {v0, p4, p0}, Lq7/y;-><init>(Ll4/d;Ll4/f;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_21

    invoke-static {p0, p2}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    sget-object p0, Lm4/a;->a:Lm4/a;

    if-ne p1, p0, :cond_20

    const-string p0, "frame"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    return-object p1

    :catchall_21
    move-exception p1

    invoke-static {p0, p2}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    throw p1
.end method
