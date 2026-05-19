.class Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source ""


# instance fields
.field private final mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/compatui/DialogAnimationController<",
            "Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field private final mDialogVerticalMargin:I

.field private final mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

.field private mEligibleForLetterboxEducation:Z

.field public mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mOnDismissCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/common/DockStateReader;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/android/wm/shell/compatui/DialogAnimationController;

    const-string v0, "LetterboxEduWindowManager"

    move-object v1, p1

    invoke-direct {v8, p1, v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/compatui/DialogAnimationController<",
            "Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;",
            ">;",
            "Lcom/android/wm/shell/common/DockStateReader;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p6, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget p1, p2, Landroid/app/TaskInfo;->userId:I

    iput p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/wm/shell/R$dimen;->letterbox_education_dialog_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    iput-object p9, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    iput-object p10, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-boolean p1, p2, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->startEnterAnimation()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->onDialogEnterAnimationEnded()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->lambda$onDismiss$0()V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->onDismiss()V

    return-void
.end method

.method private inflateLayout()Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$layout;->letterbox_education_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    return-object p0
.end method

.method private synthetic lambda$onDismiss$0()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getLastTaskInfo()Landroid/app/TaskInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskListener()Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private onDialogEnterAnimationEnded()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/android/wm/shell/compatui/t;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/t;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->getDialogTitle()Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->setSeenLetterboxEducation(I)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/q;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/q;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startEnterAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    new-instance v2, Lcom/android/wm/shell/compatui/s;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/s;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDialogMargins()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    add-int/2addr v4, p0

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createLayout()Landroid/view/View;
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateDialogMargins()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/wm/shell/compatui/r;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/r;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public eligibleToShowLayout()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->isTaskbarEduShowing()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->getHasSeenLetterboxEducation(I)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DockStateReader;->isDocked()Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public getLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getZOrder()I
    .registers 1

    const/16 p0, 0x2712

    return p0
.end method

.method public isTaskbarEduShowing()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->getHasSeenLetterboxEducation(I)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onParentBoundsChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateDialogMargins()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    return-void
.end method

.method public removeLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    return-void
.end method

.method public updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .registers 5

    iget-boolean v0, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p0

    return p0
.end method

.method public updateSurfacePosition()V
    .registers 1

    return-void
.end method
