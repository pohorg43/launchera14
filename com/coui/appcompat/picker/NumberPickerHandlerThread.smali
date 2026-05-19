.class Lcom/coui/appcompat/picker/NumberPickerHandlerThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public a:I

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->b:Landroid/os/Looper;

    if-nez v3, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_2b

    const-string v1, "numberThread"

    const-string v2, "numberPick Wait for looper timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_40

    goto :goto_33

    :cond_2b
    const-wide/16 v3, 0xa

    :try_start_2d
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    goto :goto_e

    :catch_31
    const/4 v0, 0x1

    goto :goto_e

    :cond_33
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_40

    if-eqz v0, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3d
    iget-object p0, p0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->b:Landroid/os/Looper;

    return-object p0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->b:Landroid/os/Looper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    iget p0, p0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->a:I

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
