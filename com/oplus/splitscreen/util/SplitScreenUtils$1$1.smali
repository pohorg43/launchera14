.class Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/IRemoteAnimationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/util/SplitScreenUtils$1;

.field public final synthetic val$animationFinishedCallback:Ljava/lang/Runnable;

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/util/SplitScreenUtils$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->this$0:Lcom/oplus/splitscreen/util/SplitScreenUtils$1;

    iput-object p2, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->val$animationFinishedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAnimationFinished()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->this$0:Lcom/oplus/splitscreen/util/SplitScreenUtils$1;

    iget-object v0, v0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->this$0:Lcom/oplus/splitscreen/util/SplitScreenUtils$1;

    iget-object v1, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    iget-object p0, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;->val$animationFinishedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method
