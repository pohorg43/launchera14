.class Lcom/android/quickstep/AbsSwipeUpHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    const-string/jumbo v0, "onActivityDestroyed(), mActivity="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v2, v2, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTaskAnimationManager != null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v2, v2, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz v2, :cond_2a

    move v2, v1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    const-string v3, "QuickStep"

    const-string v4, "AbsSwipeUpHandler"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v2, p1, :cond_39

    return-void

    :cond_39
    iget-object p1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz p1, :cond_47

    invoke-virtual {p1, v1, v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimation(ZZ)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_47
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object v0, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    :cond_5e
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleActivityDestroyed()V

    return-void
.end method
