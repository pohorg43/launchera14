.class public final synthetic Lm7/n2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm7/n2;->a:I

    iput-object p2, p0, Lm7/n2;->b:Ljava/lang/String;

    iput-object p3, p0, Lm7/n2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    iget v0, p0, Lm7/n2;->a:I

    iget-object v1, p0, Lm7/n2;->b:Ljava/lang/String;

    iget-object p0, p0, Lm7/n2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    goto :goto_24

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24
    invoke-direct {v2, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v2
.end method
