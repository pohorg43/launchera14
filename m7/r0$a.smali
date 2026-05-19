.class public final Lm7/r0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n30#1:163,11\n*E\n"
    }
.end annotation


# direct methods
.method public static a(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 5

    sget-object v0, Lm7/o0;->b:Lm7/r0;

    invoke-interface {v0, p0, p1, p2, p3}, Lm7/r0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object p0

    return-object p0
.end method
