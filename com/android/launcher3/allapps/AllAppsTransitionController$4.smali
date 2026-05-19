.class Lcom/android/launcher3/allapps/AllAppsTransitionController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_40

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_40

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object p1

    if-ne p1, v1, :cond_40

    const-string/jumbo p1, "onAnimationCancel, Progress = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AllAppsTransitionController"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    :cond_40
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result p1

    if-eqz p1, :cond_61

    sget-object p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_61
    return-void
.end method
