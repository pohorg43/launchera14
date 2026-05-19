.class Landroidx/recyclerview/widget/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil$2;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object p0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object p0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_13
    iget v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_67

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_47

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2f

    const-string v1, "Unsupported message, what="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    const-string v2, "ThreadUtil"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_2f
    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_0

    :cond_3b
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    :cond_47
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v3, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v4, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    iget v5, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    iget v6, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    iget v7, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    :cond_67
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0
.end method
