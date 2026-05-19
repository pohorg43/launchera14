.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->resetStartingMultipleTasks()V

    :cond_d
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    return-void
.end method
