.class public Lcom/oplus/log/log/LogProcessor$LogThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/log/LogProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogThread"
.end annotation


# instance fields
.field public blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oplus/log/log/LogBean;",
            ">;"
        }
    .end annotation
.end field

.field public exit:Z

.field public final synthetic this$0:Lcom/oplus/log/log/LogProcessor;


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/LogProcessor;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oplus/log/log/LogBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->exit:Z

    iput-object p2, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public Quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->exit:Z

    return-void
.end method

.method public run()V
    .registers 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->exit:Z

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v0}, Lcom/oplus/log/log/LogProcessor;->access$000(Lcom/oplus/log/log/LogProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v1}, Lcom/oplus/log/log/LogProcessor;->access$000(Lcom/oplus/log/log/LogProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_21} :catch_24
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    :catch_24
    :goto_24
    :try_start_24
    monitor-exit v0

    goto :goto_3

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_22

    throw p0

    :cond_28
    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v0}, Lcom/oplus/log/log/LogProcessor;->access$100(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/appender/ILogAppender;

    move-result-object v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v0}, Lcom/oplus/log/log/LogProcessor;->access$100(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/appender/ILogAppender;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/log/appender/ILogAppender;->getCacheQueueSize()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_8f

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v0}, Lcom/oplus/log/log/LogProcessor;->access$200(Lcom/oplus/log/log/LogProcessor;)I

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/log/log/LogProcessor;->access$302(Lcom/oplus/log/log/LogProcessor;J)J

    :cond_4f
    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v0}, Lcom/oplus/log/log/LogProcessor;->access$208(Lcom/oplus/log/log/LogProcessor;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v2}, Lcom/oplus/log/log/LogProcessor;->access$200(Lcom/oplus/log/log/LogProcessor;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_81

    iget-object v2, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v2}, Lcom/oplus/log/log/LogProcessor;->access$300(Lcom/oplus/log/log/LogProcessor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_81

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/log/log/LogProcessor;->access$202(Lcom/oplus/log/log/LogProcessor;I)I

    const-wide/16 v0, 0x64

    :try_start_76
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_81

    :catch_7a
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_81
    :goto_81
    const-wide/16 v0, 0x14

    :try_start_83
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_88

    goto/16 :goto_3

    :catch_88
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_8f
    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/log/log/LogBean;

    invoke-virtual {v0}, Lcom/oplus/log/log/LogBean;->getMark()I

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {v1, v0}, Lcom/oplus/log/log/LogProcessor;->writeLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto/16 :goto_3

    :cond_a4
    iget-object v1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v1}, Lcom/oplus/log/log/LogProcessor;->access$400(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/log/ICollectLog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/log/log/LogProcessor$LogThread;->this$0:Lcom/oplus/log/log/LogProcessor;

    invoke-static {v1}, Lcom/oplus/log/log/LogProcessor;->access$400(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/log/ICollectLog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/log/log/LogBean;->getEvent()Lcom/oplus/log/collect/LoggingEvent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/log/log/LogBean;->getLogType()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto/16 :goto_3

    :cond_bf
    const-string p0, "NearX-HLog_LogProcessor"

    const-string v0, "***********************************************"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NearX-HLog_LogProcessor"

    const-string v0, "*******************LogProcessor线程退出*****************"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NearX-HLog_LogProcessor"

    const-string v0, "***********************************************"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
