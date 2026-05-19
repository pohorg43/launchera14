.class public Lcom/android/wm/shell/common/TransactionPool;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mDebugReleaseStack:Z


# instance fields
.field private mReleaseStackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/common/TransactionPool;->mDebugReleaseStack:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/TransactionPool;->mTransactionPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public acquire()Landroid/view/SurfaceControl$Transaction;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/common/TransactionPool;->mTransactionPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_10
    sget-boolean v1, Lcom/android/wm/shell/common/TransactionPool;->mDebugReleaseStack:Z

    if-eqz v1, :cond_34

    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_34

    iget-object p0, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v0
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_3a

    sget-boolean p2, Lcom/android/wm/shell/common/TransactionPool;->mDebugReleaseStack:Z

    if-eqz p2, :cond_3a

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already released from pool,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "TransactionPool"

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object p2, p0, Lcom/android/wm/shell/common/TransactionPool;->mTransactionPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p2, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_6c

    :cond_46
    sget-boolean p2, Lcom/android/wm/shell/common/TransactionPool;->mDebugReleaseStack:Z

    if-eqz p2, :cond_6c

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_6c

    iget-object p2, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_6c

    iget-object p0, p0, Lcom/android/wm/shell/common/TransactionPool;->mReleaseStackMap:Landroid/util/ArrayMap;

    iget-wide p1, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    return-void
.end method
