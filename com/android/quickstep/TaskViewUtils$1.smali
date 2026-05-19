.class Lcom/android/quickstep/TaskViewUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private firstFrame:Z

.field public final synthetic val$out:Lcom/android/launcher3/anim/PendingAnimation;

.field public final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic val$showAsGrid:Z

.field public final synthetic val$taskIndex:I

.field public final synthetic val$taskRectTranslationSecondary:I

.field public final synthetic val$tvsLocal:Lcom/android/quickstep/util/TaskViewSimulator;

.field public final synthetic val$v:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/util/TaskViewSimulator;IILcom/android/launcher3/anim/PendingAnimation;)V
    .registers 8

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$showAsGrid:Z

    iput-object p4, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$tvsLocal:Lcom/android/quickstep/util/TaskViewSimulator;

    iput p5, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$taskIndex:I

    iput p6, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$taskRectTranslationSecondary:I

    iput-object p7, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$out:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/TaskViewUtils$1;->firstFrame:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils$1;->lambda$run$0(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .registers 5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RecentsWindowAnimator end, resume the hidden TaskView:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "TaskViewUtils"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(ZLcom/android/quickstep/views/TaskView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->firstFrame:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->firstFrame:Z

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, v1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_e0

    :cond_16
    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_2d

    iget-object v1, v1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelGestureToRecentAnimation()V

    :cond_2d
    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    instance-of v1, v1, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v1, :cond_34

    return-void

    :cond_34
    iget-boolean v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$showAsGrid:Z

    const-string v2, "TaskViewUtils"

    const-string v3, "QuickStep"

    const/4 v4, 0x1

    if-nez v1, :cond_b5

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v5

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_b5

    :cond_54
    const-string v0, "createRecentsWindowAnimator when RV scaleY="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",TransX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",View="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v4, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(ZLcom/android/quickstep/views/TaskView;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$tvsLocal:Lcom/android/quickstep/util/TaskViewSimulator;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setMinimumScale(F)V

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$taskIndex:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$tvsLocal:Lcom/android/quickstep/util/TaskViewSimulator;

    sget-object v3, Lcom/android/launcher3/widget/custom/a;->b:Lcom/android/launcher3/widget/custom/a;

    float-to-int v1, v1

    iget v5, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$taskRectTranslationSecondary:I

    invoke-interface {v0, v2, v3, v1, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    goto :goto_cf

    :cond_b5
    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v5, v1, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v5, :cond_d0

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v0, "createRecentsWindowAnimator and RV scrolling, hide the TaskView"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v4, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(ZLcom/android/quickstep/views/TaskView;)V

    :goto_cf
    move v0, v4

    :cond_d0
    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$out:Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v2, Lcom/android/quickstep/j2;

    invoke-direct {v2, v1, p0}, Lcom/android/quickstep/j2;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_e0
    :goto_e0
    return-void
.end method
