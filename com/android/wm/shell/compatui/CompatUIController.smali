.class public Lcom/android/wm/shell/compatui/CompatUIController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;,
        Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompatUIController"


# instance fields
.field private final mActiveCompatLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

.field private mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

.field private mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

.field private final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field private final mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

.field private final mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayContextCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mDisplaysWithIme:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

.field private mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

.field private final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mKeyguardShowing:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOnInsetsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/compatui/RestartDialogWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitionsLazy:Lz3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz3/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lz3/a;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lz3/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lcom/android/wm/shell/common/DockStateReader;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            "Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    move-object v1, p1

    iput-object v1, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    move-object v0, p3

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v4, p4

    iput-object v4, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v0, p5

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object v0, p6

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v5, p7

    iput-object v5, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v3, p8

    iput-object v3, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Lz3/a;

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-object/from16 v0, p12

    iput-object v0, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    new-instance v0, Lcom/android/wm/shell/compatui/z;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/z;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    move-object v2, p2

    invoke-virtual {p2, v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;-><init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v7, v6, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/CompatUIController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIController;->onInit()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/compatui/CompatUIController;)Lcom/android/wm/shell/common/DisplayInsetsController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->updateDisplayLayout(I)V

    return-void
.end method

.method private addOnInsetsChangedListener(I)V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->register()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$forAllLayoutsOnDisplay$4(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$updateDisplayLayout$1(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void
.end method

.method private createOrUpdateCompatLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    goto :goto_33

    :cond_1d
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p2

    if-nez p2, :cond_32

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_32
    return-void

    :cond_33
    :goto_33
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    move-result-object p2

    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_53
    return-void
.end method

.method private createOrUpdateLetterboxEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    goto :goto_26

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_25

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    :cond_25
    return-void

    :cond_26
    :goto_26
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    move-result-object p2

    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    :cond_46
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    :cond_48
    return-void
.end method

.method private createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    goto :goto_26

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_25

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_25
    return-void

    :cond_26
    :goto_26
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    move-result-object p2

    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    :cond_46
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_48
    return-void
.end method

.method private createOrUpdateRestartDialogLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v0, :cond_42

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    goto :goto_42

    :cond_1d
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->setRequestRestartDialog(Z)V

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p2

    if-nez p2, :cond_41

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_41
    return-void

    :cond_42
    :goto_42
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4b

    return-void

    :cond_4b
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->setRequestRestartDialog(Z)V

    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_71
    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/CompatUIController;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onLetterboxEduDismissed(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/compatui/CompatUIController;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onRestartDialogCallback(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/compatui/CompatUIController;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$onKeyguardVisibilityChanged$3(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void
.end method

.method private forAllLayouts(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/wm/shell/compatui/b;->a:Lcom/android/wm/shell/compatui/b;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v2, :cond_23

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz v1, :cond_35

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v1, :cond_56

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_59
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_68

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_68
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/m;-><init>(II)V

    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/List;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$onDisplayRemoved$0(Ljava/util/List;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void
.end method

.method private getOrCreateDisplayContext(I)Landroid/content/Context;
    .registers 5

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_16
    if-nez v0, :cond_4f

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4f

    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get context for display "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CompatUIController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public static synthetic h(Lcom/android/wm/shell/compatui/CompatUIController;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onRestartDialogDismissCallback(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$forAllLayouts$5(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z

    move-result p0

    return p0
.end method

.method private isImeShowingOnDisplay(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/android/wm/shell/compatui/CompatUIController;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onRestartButtonClicked(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/compatui/CompatUIController;ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->lambda$onImeVisibilityChanged$2(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void
.end method

.method private static synthetic lambda$forAllLayouts$5(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$forAllLayoutsOnDisplay$4(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$onDisplayRemoved$0(Ljava/util/List;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onImeVisibilityChanged$2(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$onKeyguardVisibilityChanged$3(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void
.end method

.method private static synthetic lambda$updateDisplayLayout$1(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private onInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->onInit()V

    return-void
.end method

.method private onLetterboxEduDismissed(Landroid/util/Pair;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private onRestartButtonClicked(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->isRestartDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->shouldShowRestartDialogAgain(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    goto :goto_3a

    :cond_2f
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/TaskInfo;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;->onSizeCompatRestartButtonClicked(I)V

    :goto_3a
    return-void
.end method

.method private onRestartDialogCallback(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/TaskInfo;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;->onSizeCompatRestartButtonClicked(I)V

    return-void
.end method

.method private onRestartDialogDismissCallback(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private removeLayouts(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskId()I

    move-result v0

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    :cond_24
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskId()I

    move-result v0

    if-ne v0, p1, :cond_50

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_50
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->removeLayouts(I)V

    return-void
.end method

.method private removeOnInsetsChangedListener(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->unregister()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private showOnDisplay(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->isImeShowingOnDisplay(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private updateDisplayLayout(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    new-instance v1, Lcom/android/common/a;

    invoke-direct {v1, v0}, Lcom/android/common/a;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v10, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    iget-object v8, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    new-instance v9, Lcom/android/wm/shell/compatui/a;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/android/wm/shell/compatui/a;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Ljava/util/function/Consumer;)V

    return-object v10
.end method

.method public createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v10, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Lz3/a;

    invoke-interface {v0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    new-instance v7, Lcom/android/launcher/guide/side/e;

    invoke-direct {v7, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    iget-object v8, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-object v10
.end method

.method public createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v8, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v8
.end method

.method public createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v10, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Lz3/a;

    invoke-interface {v0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    new-instance v7, Lcom/android/common/util/n;

    invoke-direct {v7, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    new-instance v8, Lcom/android/common/util/m;

    invoke-direct {v8, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-object v10
.end method

.method public getExtImpl()Lcom/android/wm/shell/compatui/CompatUIControllerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    return-object p0
.end method

.method public onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 5

    if-eqz p1, :cond_11

    iget-boolean v0, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_11
    if-nez p1, :cond_1c

    const-string p0, "CompatUIController"

    const-string/jumbo p1, "taskInfo == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_4d

    if-nez p2, :cond_23

    goto :goto_4d

    :cond_23
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->isInZoomMode(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    return-void

    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateCompatLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateLetterboxEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateRestartDialogLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->getHasSeenLetterboxEducation(I)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    :cond_47
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mExtImpl:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void

    :cond_4d
    :goto_4d
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->addOnInsetsChangedListener(I)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->updateDisplayLayout(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeOnInsetsChangedListener(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/launcher/h;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/h;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1c
    if-ltz p1, :cond_2e

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    :cond_2e
    return-void
.end method

.method public onImeVisibilityChanged(IZ)V
    .registers 4

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_c
    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_15
    new-instance p2, Lcom/android/quickstep/o1;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/o1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    new-instance p1, Lcom/android/wm/shell/compatui/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/compatui/a;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setCompatUICallback(Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    return-void
.end method
