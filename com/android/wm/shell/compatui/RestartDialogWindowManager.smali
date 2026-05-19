.class Lcom/android/wm/shell/compatui/RestartDialogWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source ""


# instance fields
.field private final mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/compatui/DialogAnimationController<",
            "Lcom/android/wm/shell/compatui/RestartDialogLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field private final mDialogVerticalMargin:I

.field public mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;
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

.field private final mOnRestartCallback:Ljava/util/function/Consumer;
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

.field private mRequestRestartDialog:Z

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
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
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    new-instance v9, Lcom/android/wm/shell/compatui/DialogAnimationController;

    const-string v0, "RestartDialogWindowManager"

    move-object v1, p1

    invoke-direct {v9, p1, v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
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
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/compatui/DialogAnimationController<",
            "Lcom/android/wm/shell/compatui/RestartDialogLayout;",
            ">;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p6, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnRestartCallback:Ljava/util/function/Consumer;

    iput-object p9, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->letterbox_restart_dialog_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mDialogVerticalMargin:I

    iput-object p10, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->startEnterAnimation()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->onDismiss()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->lambda$onDialogEnterAnimationEnded$0()V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->lambda$onDialogEnterAnimationEnded$1(Landroid/app/TaskInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->lambda$onDismiss$2()V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->onDialogEnterAnimationEnded()V

    return-void
.end method

.method private inflateLayout()Lcom/android/wm/shell/compatui/RestartDialogLayout;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$layout;->letterbox_restart_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-object p0
.end method

.method private synthetic lambda$onDialogEnterAnimationEnded$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    return-void
.end method

.method private synthetic lambda$onDialogEnterAnimationEnded$1(Landroid/app/TaskInfo;Ljava/lang/Boolean;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/q;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/q;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->setDontShowRestartDialogAgain(Landroid/app/TaskInfo;)V

    :cond_1f
    iget-object p2, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnRestartCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskListener()Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onDismiss$2()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

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
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getLastTaskInfo()Landroid/app/TaskInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/b0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/b0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/c0;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/compatui/c0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setRestartOnClickListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->getDialogTitle()Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/r;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/r;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startEnterAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    new-instance v2, Lcom/android/wm/shell/compatui/z;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/compatui/z;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDialogMargins()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mDialogVerticalMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

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

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/RestartDialogLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->updateDialogMargins()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/wm/shell/compatui/s;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/s;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-object p0
.end method

.method public eligibleToShowLayout()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->isTaskbarEduShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getLastTaskInfo()Landroid/app/TaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->shouldShowRestartDialogAgain(Landroid/app/TaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public getLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

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

.method public onParentBoundsChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->updateDialogMargins()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    return-void
.end method

.method public removeLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-void
.end method

.method public setRequestRestartDialog(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    return-void
.end method

.method public updateSurfacePosition()V
    .registers 1

    return-void
.end method
