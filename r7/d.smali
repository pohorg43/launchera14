.class public final Lr7/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,262:1\n45#1,8:277\n106#2,7:263\n106#2,7:270\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n73#1:277,8\n26#1:263,7\n84#1:270,7\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/d;->a:Lr7/f0;

    return-void
.end method

.method public static final a(Lr7/c0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lr7/c0<",
            "TS;>;>(TS;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-wide v0, p0, Lr7/c0;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_e

    invoke-virtual {p0}, Lr7/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p0

    :cond_e
    :goto_e
    sget-object v0, Lr7/e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr7/d;->a:Lr7/f0;

    if-ne v1, v2, :cond_19

    return-object v2

    :cond_19
    check-cast v1, Lr7/e;

    check-cast v1, Lr7/c0;

    if-eqz v1, :cond_21

    :cond_1f
    :goto_1f
    move-object p0, v1

    goto :goto_0

    :cond_21
    iget-wide v1, p0, Lr7/c0;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/c0;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr7/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lr7/e;->g()V

    goto :goto_1f
.end method
