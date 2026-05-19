.class public Lcom/android/launcher3/dragndrop/OplusDragController;
.super Lcom/android/launcher3/dragndrop/LauncherDragController;
.source ""


# static fields
.field private static final DELAY_CHECK_DRAG_IN_EDIT:J = 0x96L

.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OplusDragController"

.field private static final TRANSPARENT_TIME:I = 0xc8


# instance fields
.field private mActivePointerId:I

.field private mActivityLandscape:Z

.field private mAlphaMax:F

.field private mAlphaMiddle:F

.field private mAlphaMin:F

.field private mAlphaProcess:F

.field private mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

.field private mDragScrollerTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dragndrop/DragScroller;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

.field private mIsLayoutLocked:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScale:F

.field private final mScrollerRect:Landroid/graphics/Rect;

.field private mSecondPointerId:I

.field private mShouldNotDragOut:Z

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher/Launcher;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    const v0, 0x3f99999a  # 1.2f

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMax:F

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMiddle:F

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaProcess:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMin:F

    new-instance v0, Lcom/android/launcher3/dragndrop/OplusFlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/OplusFlingToDeleteHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/dragndrop/OplusDragController;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->lambda$onStartDrag$1(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->lambda$endDrag$0(Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private cancelDragAndDrop()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const-string v1, "cancelDragAndDrop, mDragging = "

    const-string v2, ", mLastDropTarget = "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    const-string v3, "OplusDragController"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v4, 0x1

    if-eqz v1, :cond_33

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_33

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_33

    iput-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/AbstractFloatingView;

    const/4 v5, 0x0

    if-eqz v1, :cond_5c

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floating view is opened."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :goto_60
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-nez v0, :cond_70

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ab

    :cond_70
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v2, v0, v5

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    aget v0, v0, v4

    iput v0, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iput-boolean v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iput-boolean v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_ab

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_ac

    :cond_ab
    move v4, v5

    :goto_ac
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2, v0, v4}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBatchDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    instance-of v1, v1, Lcom/android/launcher/batchdrag/BatchDragObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DropTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, "Cancel Drag"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_e3
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->endDrag()V

    return-void
.end method

.method private static synthetic lambda$endDrag$0(Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher/Launcher;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p1

    if-nez p1, :cond_18

    :cond_a
    const-string p1, "OplusDragController"

    const-string/jumbo v0, "no more need screenShot draw on view"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setDrawPicForDrag(Z)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$onStartDrag$1(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeWithCertainView(Landroid/view/View;ZIZLcom/android/launcher/Launcher;)V

    :cond_16
    return-void
.end method

.method private pageIsFull()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2b

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_42

    if-eqz p0, :cond_3d

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p0

    if-nez p0, :cond_42

    :cond_3d
    const/4 p0, -0x1

    aput p0, v2, v1

    aput p0, v2, v3

    :cond_42
    aget p0, v2, v1

    if-ltz p0, :cond_4c

    aget p0, v2, v3

    if-ltz p0, :cond_4c

    move p0, v3

    goto :goto_4d

    :cond_4c
    move p0, v1

    :goto_4d
    if-nez p0, :cond_50

    return v3

    :cond_50
    return v1
.end method


# virtual methods
.method public addDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addDropTarget(ILcom/android/launcher3/DropTarget;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addShowOriginalIconOpsForPop(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-nez p0, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->addShowOriginalIconOps(Ljava/lang/Runnable;)V

    :goto_b
    return-void
.end method

.method public callOnDragEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragHotseatExpandOrSubscribeItem(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v0

    if-ne v0, v1, :cond_2c

    :cond_1d
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_2c

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const-string v0, "Hotseat"

    const-string v1, "OplusDragController"

    const-string v2, "drag hotseat expand item callOnDragEnd ensure mIsInPreDrag true"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    return-void
.end method

.method public callOnDragStart()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mIsLayoutLocked:Z

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->disableLongClickIconFlag()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hidePopClickTip()V

    return-void
.end method

.method public cancelDrag()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDragAndDrop()V

    return-void
.end method

.method public cancelDragBeforeHotseatExpandAnim()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-nez v0, :cond_b

    goto :goto_40

    :cond_b
    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v1, "OplusDragController"

    const-string v2, "Hotseat_expand"

    if-eqz v0, :cond_22

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v0, v3, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const-string p0, "cancelDragBeforeHotseatExpandAnim for drag out hotseat"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const-string p0, "cancelDragBeforeHotseatExpandAnim for drag in hotseat"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public cancelGlobalDragIfNeed()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsGlobalDragging:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_53

    const-string v0, "Drag"

    const-string v1, "cancelGlobalDragIfNeed,animateSurfaceToHide"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v2, v1, v3, v4}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;J)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getOriginalView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_53

    const-string v1, "OplusDragController"

    const-string v2, "cancelGlobalDragIfNeed,cancelDragAndDrop dragView"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelDragAndDrop()V

    :cond_53
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragView;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScale:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScale:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c4

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    const-string/jumbo v2, "pageIsFull:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->pageIsFull()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->isWillToFolder()Z

    move-result v3

    if-nez v3, :cond_63

    move v3, v4

    goto :goto_64

    :cond_63
    move v3, v5

    :goto_64
    const-string v6, "OplusDragController"

    invoke-static {v2, v3, v6}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->pageIsFull()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isWillToFolder()Z

    move-result v2

    if-nez v2, :cond_ab

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [F

    iget v6, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMax:F

    aput v6, v3, v5

    iget v5, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMiddle:F

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaProcess:F

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mAlphaMin:F

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v3, Lcom/android/launcher3/dragndrop/OplusDragController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/dragndrop/OplusDragController$1;-><init>(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c4

    :cond_ab
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setVisibility(Z)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_c4
    :goto_c4
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dropTraceLayoutInject(ZLcom/android/launcher3/DropTarget;)V
    .registers 4

    if-nez p1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dropTarget = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can not Drop"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public endDrag()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    if-eqz v1, :cond_20

    move v1, v4

    goto :goto_21

    :cond_20
    move v1, v5

    :goto_21
    if-nez v1, :cond_26

    invoke-static {v4, v5, v5, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    if-gtz v1, :cond_5a

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_5a

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v1, :cond_5a

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_5a
    if-eqz v3, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isCardStorePanelExpand()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->supportIconSelected()Z

    move-result v4

    :cond_74
    invoke-static {v4, v5, v5, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_77
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->endDrag()V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_99

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v1, :cond_99

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_99

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v2}, Lcom/android/launcher3/card/LauncherCardView;->shouldShowCard()Z

    move-result v2

    if-eqz v2, :cond_99

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/widget/b;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher/Launcher;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_99
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_a8

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eqz v1, :cond_a8

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->notifyEndDrag()V

    :cond_a8
    invoke-virtual {p0, v5}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    return-void
.end method

.method public findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->findDropTarget(II[IZ)Lcom/android/launcher3/DropTarget;

    move-result-object p0

    return-object p0
.end method

.method public findDropTarget(II[IZ)Lcom/android/launcher3/DropTarget;
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iput p2, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    const/4 v5, 0x1

    if-ge v4, v2, :cond_83

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget;

    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_26

    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6d

    :cond_26
    invoke-interface {v6}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_6d

    :cond_2d
    invoke-interface {v6, v0}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_70

    instance-of v7, v6, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v7, :cond_44

    move-object v8, v6

    check-cast v8, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/OplusFolder;->isExternalDragInProgress()Z

    move-result v8

    if-eqz v8, :cond_44

    goto :goto_70

    :cond_44
    if-eqz v7, :cond_6d

    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v8, v6, :cond_6d

    iget-object v7, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v8, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_6d

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v7}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v7

    if-eqz v7, :cond_6d

    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    move-object p1, v6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    return-object v6

    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_70
    :goto_70
    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    move-object p1, v6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    return-object v6

    :cond_83
    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    iget-object p3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    if-nez p4, :cond_ac

    iget-object p4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p4}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p4

    if-nez p4, :cond_be

    :cond_ac
    invoke-virtual {p2, v0}, Lcom/android/launcher3/Workspace;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    iget-boolean p4, p3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p4, :cond_be

    iget-boolean p4, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz p4, :cond_be

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr p4, v1

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_be
    iget-object p4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p4, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-eqz p4, :cond_e9

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    const/high16 p4, 0x3f800000  # 1.0f

    div-float/2addr p4, p0

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, p4, p0}, Lcom/android/common/util/PointUtils;->offsetRectAboutPoint(Landroid/graphics/Rect;FLandroid/graphics/PointF;)V

    :cond_e9
    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_100

    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_fb

    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, p0, :cond_100

    return-object p3

    :cond_fb
    iget p0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p0, :cond_100

    return-object p3

    :cond_100
    return-object p2
.end method

.method public getDeferredRemoveCallback()Lcom/android/launcher3/popup/DeferredRemoveForPopup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    return-object p0
.end method

.method public getDragObject()Lcom/android/launcher3/DropTarget$DragObject;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v3}, Lcom/android/launcher3/dragndrop/DragScroller;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_25

    :cond_18
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_25

    return-object v3

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleNotDrawnDragView()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotDrawnDragView, popupView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    const-string v3, "OplusDragController"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_3b

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_4c

    :cond_43
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->stopAnimation()V

    :goto_4c
    return-void
.end method

.method public isDragCancelled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_12

    const-string p0, "OplusDragController"

    const-string/jumbo p1, "onControllerInterceptTouchEvent: mOptions.isAccessibleDrag"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    if-eqz v0, :cond_7b

    const/4 v2, -0x1

    if-eq v0, v4, :cond_78

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_38

    goto :goto_8c

    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v2}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_56

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8c

    :cond_56
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8c

    :cond_5c
    iput v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8c

    :cond_72
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8c

    :cond_78
    iput v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_8c

    :cond_7b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Point;->set(II)V

    :goto_8c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v2, :cond_a0

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move v2, v4

    goto :goto_a1

    :cond_a0
    move v2, v1

    :goto_a1
    if-nez v2, :cond_ab

    if-eqz v0, :cond_ac

    invoke-virtual {v0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_ab
    move v1, v4

    :cond_ac
    if-eqz v1, :cond_d9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_d9

    sget-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string/jumbo v3, "onControllerInterceptTouchEvent had intercepted event and isDragDriverHandled: "

    const-string v4, " and drag mDragDriver is "

    invoke-static {v3, v2, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    invoke-static {p0}, Lcom/android/common/util/FunctionsKt;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TouchIntercept::OplusDragController"

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d9
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    const-string v2, "OplusDragController"

    if-eqz v0, :cond_1c5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_1c5

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_11

    goto/16 :goto_1c5

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_4a

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->abnormalItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x105

    if-ne p1, v0, :cond_43

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    :cond_43
    const-string/jumbo p0, "onControllerTouchEvent: isDragging && (ev.getPointerCount() >= 2) && isLauncherLayoutLocked || HotseatDragController.abnormalItemShouldNotDragOutAndToast"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4a
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_69

    const-string/jumbo p0, "onControllerTouchEvent:  isDragging && (ev.getPointerCount() >= 2) && mActivity.getDeviceProfile().isLandscape"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_69
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v4, ", ev.getRawY() = "

    const-string v5, "Drag"

    if-eqz v0, :cond_173

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_14f

    if-eq v0, v3, :cond_f4

    const/4 v4, 0x3

    const/4 v7, 0x0

    if-eq v0, v4, :cond_dc

    const/4 v4, 0x5

    if-eq v0, v4, :cond_b0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_8a

    goto/16 :goto_1bc

    :cond_8a
    const-string/jumbo v0, "onTouchEvent -- ACTION_POINTER_UP "

    invoke-static {v5, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_a9

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v3, :cond_1bc

    iput-object v7, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_a9
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_b0
    const-string/jumbo v0, "onTouchEvent -- ACTION_POINTER_DOWN "

    invoke-static {v5, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v2}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_d5

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_d5
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_dc
    const-string/jumbo v0, "onTouchEvent -- CANCEL -- cancelDragAndDrop "

    invoke-static {v5, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_1bc

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    iput-object v7, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    goto/16 :goto_1bc

    :cond_f4
    :try_start_f4
    iget v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v0, v5, :cond_128

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent -- pointerIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ ev.getPointerCount() = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_128
    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_1bc

    if-ltz v4, :cond_142

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_13b

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_13b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1bc

    :cond_142
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_147} :catch_148

    goto :goto_1bc

    :catch_148
    move-exception v0

    const-string v3, " onTouchEvent "

    invoke-static {v3, v0, v2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1bc

    :cond_14f
    const-string/jumbo v0, "onTouchEvent -- ACTION_UP  ev.getRawX() = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iput v6, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_1bc

    :cond_173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v3, v6, Landroid/graphics/Point;->x:I

    iput v0, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string/jumbo v0, "onTouchEvent -- ACTION_DOWN  ev.getRawX() = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",ev="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bc
    :goto_1bc
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusDragDriver;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/dragndrop/OplusDragDriver;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_1c5
    :goto_1c5
    const-string/jumbo p0, "onControllerTouchEvent: mOptions.isAccessibleDrag or mDragDriver || mOptions = null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeferredEndDrag, popView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDragController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    invoke-direct {v0, p1}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    goto :goto_2a

    :cond_27
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    :goto_2a
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->callOnDragEnd()V

    goto :goto_57

    :cond_3a
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->getListeners()Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    invoke-interface {p1}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    goto :goto_47

    :cond_57
    :goto_57
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public onDriverDragEndPre(FF)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->finishAnimation()V

    :cond_19
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "OplusDragController"

    const-string v4, "Drag"

    if-eqz v2, :cond_46

    const-string/jumbo v2, "onSecondaryPointerUp , ev.getActionMasked() = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getPointerCount = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pointerIndex = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pointerId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mActivePointerId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-static {v2, v5, v4, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_46
    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    if-ne v1, v2, :cond_93

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v2, v5, Landroid/graphics/Point;->x:I

    iput v1, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSecondaryPointerUp mMotionDownX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMotionDownY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_9a

    :cond_93
    iget p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    if-ne v1, p1, :cond_9a

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    :cond_9a
    :goto_9a
    return-void
.end method

.method public onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 8
    .param p1  # Lcom/android/launcher3/dragndrop/DragView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivityLandscape:Z

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mIsLayoutLocked:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->abnormalItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mShouldNotDragOut:Z

    goto :goto_28

    :cond_26
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mShouldNotDragOut:Z

    :goto_28
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v3, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v3, :cond_50

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animCardAlpha(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getLongPressObserver()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_ab

    :cond_68
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_78

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    :cond_78
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_95

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/android/launcher/widget/a;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9c

    :cond_95
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-static {v0, v1, v1, v1, p1}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeWithCertainView(Landroid/view/View;ZIZLcom/android/launcher/Launcher;)V

    :goto_9c
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    :cond_ab
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->reloadCategoryMapIfNeeded()V

    return-void
.end method

.method public removeDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public runDeferredRemoveCallback()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    :cond_c
    return-void
.end method

.method public setDragScroller(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    return-void
.end method

.method public shouldDispatchDragViewMoveEvent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivityLandscape:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mIsLayoutLocked:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mShouldNotDragOut:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public showOriginalIconOpsAhead()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->runShowOriginalIconOps()V

    :cond_7
    return-void
.end method

.method public startBatchDrag(Lcom/android/launcher/batchdrag/BatchDragView;Ljava/util/List;Landroid/graphics/Rect;IIIILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Landroid/graphics/Rect;",
            "IIII",
            "Lcom/android/launcher3/DragSource;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/dragndrop/DragOptions;",
            ")V"
        }
    .end annotation

    iput-object p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 p10, 0x0

    iput-boolean p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    new-instance v0, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragObject;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/batchdrag/BatchDragObject;

    iput-object p2, v1, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    iput-boolean p10, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, p2

    iput p6, v0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p7, p2

    iput p7, v0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    invoke-static {p1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/common/util/n;

    invoke-direct {p3, p2}, Lcom/android/common/util/n;-><init>(Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;)V

    invoke-static {p0, p1, p3}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p8, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object p9, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p2}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p9}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput p4, p1, Landroid/graphics/Point;->x:I

    iput p5, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->callOnDragStart()V

    iput p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p3, p2, Landroid/graphics/Point;->y:I

    iput p3, p1, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsBatchDrag()V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p10, p10, p10, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    return-void
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 27

    move-object v12, p0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const-string/jumbo v0, "startDrag -- dragInfo = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "OplusDragController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_41

    iget-boolean v0, v12, Lcom/android/launcher3/dragndrop/DragController;->mIsGlobalDragging:Z

    if-nez v0, :cond_41

    iget-object v0, v12, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, v12, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v8, p8

    move v3, v0

    move v4, v1

    goto :goto_52

    :cond_41
    instance-of v0, v13, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    goto :goto_52

    :cond_4c
    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p8

    :goto_52
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-super/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_70

    instance-of v2, v13, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    if-nez v2, :cond_78

    :cond_70
    const/16 v2, 0x64

    if-ne v1, v2, :cond_80

    instance-of v1, v13, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v1, :cond_80

    :cond_78
    iget-object v1, v12, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    :cond_80
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    return-object v0
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 12

    invoke-super/range {p0 .. p11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    return-object p1
.end method

.method public tryMarkIsInPreDrag()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    return-void
.end method
