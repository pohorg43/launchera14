.class public final Lm7/f;
.super Lm7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/a<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Thread;

.field public final e:Lm7/e1;


# direct methods
.method public constructor <init>(Ll4/f;Ljava/lang/Thread;Lm7/e1;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lm7/a;-><init>(Ll4/f;ZZ)V

    iput-object p2, p0, Lm7/f;->d:Ljava/lang/Thread;

    iput-object p3, p0, Lm7/f;->e:Lm7/e1;

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lm7/f;->d:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p0, p0, Lm7/f;->d:Ljava/lang/Thread;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_11
    return-void
.end method
