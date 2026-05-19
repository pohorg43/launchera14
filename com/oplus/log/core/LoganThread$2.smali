.class Lcom/oplus/log/core/LoganThread$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;


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

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {v0}, Lcom/oplus/log/core/LoganThread;->access$100(Lcom/oplus/log/core/LoganThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {v1, p1}, Lcom/oplus/log/core/LoganThread;->access$202(Lcom/oplus/log/core/LoganThread;I)I

    const/16 v1, 0x2712

    if-ne p1, v1, :cond_2d

    iget-object p1, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {p1}, Lcom/oplus/log/core/LoganThread;->access$400(Lcom/oplus/log/core/LoganThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {v1}, Lcom/oplus/log/core/LoganThread;->access$300(Lcom/oplus/log/core/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {p1}, Lcom/oplus/log/core/LoganThread;->access$300(Lcom/oplus/log/core/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread$2;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->notifyRun()V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method
