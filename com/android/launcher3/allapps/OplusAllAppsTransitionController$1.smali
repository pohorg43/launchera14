.class Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

    iget v0, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_20

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_20

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p1}, Lcom/android/launcher/guide/DrawerGuideManager;->resumeAllAnim()V

    :cond_20
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS_PANEL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->val$context:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneEnd(Landroid/content/Context;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS_PANEL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->val$context:Landroid/content/Context;

    const/16 v2, 0xa

    const-string v3, "DRAG_ALL_APPS_PANEL"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneBegin(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/FolerUtils;->notifyORMSAnimation()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    instance-of p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p1, :cond_2f

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->onScrollUpStart()V

    :cond_2f
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method
