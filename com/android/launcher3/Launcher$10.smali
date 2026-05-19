.class Lcom/android/launcher3/Launcher$10;
.super Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->finishRecentRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionFinish(Z)V
    .registers 4

    const-string/jumbo v0, "onTransitionFinish, isRecent = "

    const-string v1, "MultiAppLaunchInterrupt"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_21

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/Launcher;->access$202(Lcom/android/launcher3/Launcher;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mRecentFinishDeferredCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mRecentFinishDeferredCallback:Ljava/lang/Runnable;

    :cond_21
    return-void
.end method
