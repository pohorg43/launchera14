.class Lcom/android/launcher3/OplusWorkspace$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->doUnlockAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mStartTime:J

.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public final synthetic val$stateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/statemanager/StateManager$StateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object p3, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$stateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->mStartTime:J

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusWorkspace"

    const-string v0, "doUnlockAnim onAnimationCancel"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$13;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusWorkspace$13;->mStartTime:J

    sub-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUnlockAnim onAnimationEnd cost="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusWorkspace"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$stateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->setHardwareLayer(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p1, v0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->setMultiNodeEnable(Landroid/view/ViewGroup;Z)V

    invoke-static {}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->clearCardLayerTypes()V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$13;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->showFolderScrollGuide()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "OplusWorkspace"

    const-string v0, "doUnlockAnim onAnimationStart"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->getHotseatDelay()I

    move-result v0

    invoke-static {}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->getHotseatAnimationDuration()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/OplusWorkspace$13;->mStartTime:J

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->setMultiNodeEnable(Landroid/view/ViewGroup;Z)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$13;->val$shortcutAndWidgetContainer:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p0, v0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->setHardwareLayer(Landroid/view/ViewGroup;Z)V

    return-void
.end method
