.class Lcom/oplus/log/core/LoganThread$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/core/LoganThread;->doSendLog2Net(Lcom/oplus/log/core/SendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/core/LoganThread;


# direct methods
.method public constructor <init>(Lcom/oplus/log/core/LoganThread;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread$3;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 8

    new-instance p0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "logan-thread-send-log"

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_27

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_27
    return-object p0
.end method
