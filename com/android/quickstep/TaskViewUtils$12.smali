.class Lcom/android/quickstep/TaskViewUtils$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$pa:Lcom/android/launcher3/anim/PendingAnimation;

.field public final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$pa:Lcom/android/launcher3/anim/PendingAnimation;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TaskViewUtils$12;->lambda$onAnimationEnd$0(Lcom/android/launcher3/statemanager/StateManager;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$pa:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$12;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v0, Lcom/android/quickstep/x0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/x0;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method
