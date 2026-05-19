.class public Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;
.super Lcom/android/wm/shell/splitscreen/StageCoordinator;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;


# instance fields
.field private final mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/SystemWindows;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ")V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;-><init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    move-object/from16 v2, p12

    move-object/from16 v3, p14

    invoke-direct {v0, p1, p0, v3, v2}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V

    iput-object v0, v13, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    return-void
.end method


# virtual methods
.method public exitStage(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitStage(I)V

    return-void
.end method

.method public grantFocusToStage(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->grantFocusToStage(I)V

    return-void
.end method

.method public onSplitScreenEnter()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->addSplitMenuViewToSystemWindows()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->registerBroadcastReceiver()V

    return-void
.end method

.method public onSplitScreenExit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->unregisterBroadcastReceiver()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->removeSplitMenuViewFromSystemWindows()V

    return-void
.end method

.method public swapStages()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onDoubleTappedDivider()V

    return-void
.end method
