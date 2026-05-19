.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/OplusDragScrollerPagedView;
.source ""

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Workspace$StateTransitionListener;,
        Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher3/Workspace$ReorderAlarmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/OplusDragScrollerPagedView<",
        "TT;>;",
        "Lcom/android/launcher3/DropTarget;",
        "Lcom/android/launcher3/DragSource;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/WorkspaceLayoutManager;",
        "Lcom/android/launcher3/util/LauncherBindableItemsContainer;"
    }
.end annotation


# static fields
.field public static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ALLOW_DROP_TRANSITION_PROGRESS:F = 0.25f

.field public static final ALLOW_EQUAL_VALUE_FOR_SCALE:F = 0.015f

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field public static final DEBUG_DRAW:Z = false

.field public static final DEBUG_ENABLE:Z = false

.field public static DEFAULT_PAGE:I = 0x0

.field private static final DEFAULT_SMARTSPACE_HEIGHT:I = 0x1

.field public static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field public static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field public static final DRAG_MODE_NONE:I = 0x0

.field public static final DRAG_MODE_REORDER:I = 0x3

.field public static final ENFORCE_DRAG_EVENT_ORDER:Z = false

.field private static final EXPANDED_SMARTSPACE_HEIGHT:I = 0x2

.field public static final FINISHED_SWITCHING_STATE_TRANSITION_PROGRESS:F = 0.5f

.field public static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field public static final REORDER_TIMEOUT:I = 0x28a

.field private static final SCALE_NUM_IN_TOGGLE_BAR:F = 0.89f

.field private static final SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE:F = 0.2f

.field public static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field public static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field public static final WORKSPACE_SIGNIFICANT_MOVE_THRESHOLD:F = 0.3f


# instance fields
.field public mAddToExistingFolderOnDrop:Z

.field public mChildrenLayersEnabled:Z

.field public mCreateUserFolderOnDrop:Z

.field public mCurrentScale:F

.field public mDeferRemoveExtraEmptyScreen:Z

.field public mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field public volatile mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field public mDragMode:I

.field public mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field public mDragOverX:I

.field public mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field public mDragScrollZone:I

.field public mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field public mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

.field public mDragViewVisualCenter:[F

.field public mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mExt:Lcom/android/launcher3/IWorkspaceExt;

.field public mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mForceDrawAdjacentPages:Z

.field private mInjector:Lcom/android/launcher/WorkspaceInjector;

.field public mIsEventOverQsb:Z

.field public mIsSwitchingState:Z

.field public mLastReorderX:I

.field public mLastReorderY:I

.field public final mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mOnOverlayHiddenCallback:Ljava/lang/Runnable;

.field public mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

.field public mOverlayShown:Z

.field public mOverlayTranslation:F

.field private mQsb:Landroid/view/View;

.field public final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Lcom/android/launcher3/util/IntArray;

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public final mScreenOrder:Lcom/android/launcher3/util/IntArray;

.field public mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

.field public mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mStripScreensOnPageStopMoving:Z

.field public mTargetCell:[I

.field public final mTempFXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field public final mTempXY:[I

.field public mToState:Lcom/android/launcher3/LauncherState;

.field public mTransitionProgress:F

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field public mWillToFolder:Z

.field public mWorkspaceFadeInAdjacentScreens:Z

.field public final mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field public mXDown:F

.field public mYDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusDragScrollerPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance p2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    new-array v2, p3, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    const-class v0, Lcom/android/launcher3/IWorkspaceExt;

    invoke-static {v0}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IWorkspaceExt;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mExt:Lcom/android/launcher3/IWorkspaceExt;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    new-instance p2, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-direct {p2, v0, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static synthetic A(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$4(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic B(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getWidgetForAppWidgetId$14(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->lambda$stripEmptyScreens$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$getFirstMatchAndChangePageIfNeeded$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$commitExtraEmptyScreens$6(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/Workspace;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method private checkDragObjectIsOverAllPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;
    .registers 7

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    if-ge v2, v1, :cond_14

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_1a

    :cond_14
    if-le v2, v1, :cond_22

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_22

    :cond_1a
    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_29

    :cond_22
    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_29
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_30

    return-object v3

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    aput v6, v4, v5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1f

    goto :goto_20

    :cond_1f
    move v3, v6

    :goto_20
    add-int/2addr v3, v2

    aput v3, v4, v6

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_41

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_47

    :cond_41
    if-le v4, v2, :cond_4f

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_4f

    :cond_47
    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_56

    :cond_4f
    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_56
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_2b

    return-object v4

    :cond_5d
    return-object v1
.end method

.method private cleanupAddToFolder()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    :cond_a
    return-void
.end method

.method private cleanupReorder(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_7
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    return-void
.end method

.method private commitExtraEmptyScreen(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "generate_new_screen_id"

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_27
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_32
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    instance-of p0, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_45

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusCellLayout;->setScreenId(I)V

    :cond_45
    return p1
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v1, v0, :cond_1d

    goto/16 :goto_94

    :cond_1d
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    sub-int v0, v2, v0

    :goto_2a
    if-ge v0, v2, :cond_54

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-eqz v4, :cond_53

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_53

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_53

    :cond_4d
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_53
    :goto_53
    return-void

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_94

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v4, -0xc9

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/16 v4, -0xc8

    :cond_7b
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusCellLayout;->setScreenId(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_94
    :goto_94
    return-void
.end method

.method private createSearchAppItemInfo(Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 8

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v3, ""

    if-nez v2, :cond_1f

    move-object v2, v3

    :cond_1f
    iput-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_3d

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3d
    const/high16 v4, -0x1000000

    if-eqz v2, :cond_49

    new-instance v5, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v5, v2, v4}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v5, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_54

    :cond_49
    new-instance v2, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_54
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_96

    :cond_8a
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    :goto_96
    return-object v0
.end method

.method private createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    aget v2, p0, v1

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x1

    aget v5, p0, v4

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    aget v5, p0, v1

    if-lez v5, :cond_44

    aget v5, p0, v4

    if-gtz v5, :cond_24

    goto :goto_44

    :cond_24
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    aget p1, p0, v1

    aget v2, p0, v4

    invoke-virtual {p2, v1, v1, p1, v2}, Landroid/view/View;->layout(IIII)V

    aget p1, p0, v1

    aget p0, p0, v4

    new-instance v1, Lcom/android/common/util/d;

    invoke-direct {v1, p2, v4}, Lcom/android/common/util/d;-><init>(Landroid/view/View;I)V

    invoke-static {p1, p0, v1}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_44
    :goto_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bitmap size error! widgetInfo = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Workspace"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private enableHwLayersOnVisiblePages()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisibleChildrenRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-boolean v5, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v5, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    :cond_2d
    if-ne v3, v1, :cond_3a

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_36
    if-lez v3, :cond_3a

    add-int/lit8 v3, v3, -0x1

    :cond_3a
    :goto_3a
    move v5, v2

    :goto_3b
    if-ge v5, v0, :cond_50

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    if-gt v3, v5, :cond_49

    if-gt v5, v1, :cond_49

    move v7, v4

    goto :goto_4a

    :cond_49
    move v7, v2

    :goto_4a
    invoke-virtual {v6, v7}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_50
    return-void
.end method

.method private enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .registers 6

    const p0, 0x7f0a0252

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_11
    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eq v0, p4, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Drag contract violated: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Workspace"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_21

    if-le v0, v2, :cond_21

    if-ne p1, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1206d5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    :cond_21
    if-nez v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1202cc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    div-int v3, v0, v1

    rem-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1206d6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private getWallpaperOffsetForPage(I)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result p0

    return p0
.end method

.method private isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addExtraEmptyScreenOnDrag$2(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$addExtraEmptyScreens$3(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$commitExtraEmptyScreens$6(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method private static synthetic lambda$getFirstMatchAndChangePageIfNeeded$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    const/4 p3, 0x0

    if-nez p2, :cond_4

    return p3

    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    return p3

    :cond_b
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getAlphabeticIndex()I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p3, 0x1

    :cond_23
    return p3
.end method

.method private static synthetic lambda$getHomescreenIconByItemId$13(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_8

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$getWidgetForAppWidgetId$14(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    instance-of p2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$onDrop$10(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$onDrop$11(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$4(ZLjava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$5(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    return-void
.end method

.method private synthetic lambda$removeWidget$12(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_14

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    const-string/jumbo v0, "widget is removed in response to widget remove broadcast"

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$runOnOverlayHidden$9(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$stripEmptyScreens$7()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->tryRegroup()V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$stripEmptyScreens$8(Landroid/view/View;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    const-string v1, "Launcher.Workspace"

    if-eqz v0, :cond_1b

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "stripEmptyScreens() shortcutAndWidgetContainer is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_15
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_21

    :cond_1b
    const-string/jumbo p0, "stripEmptyScreens() cellLaout is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private static synthetic lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .registers 5

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static synthetic lambda$updateNotificationDots$15(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private synthetic lambda$updateNotificationDots$16(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_15

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_15

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    const/4 p0, 0x1

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_6c

    :cond_15
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_6c

    instance-of v0, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_6c

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_5e

    new-instance p1, Lcom/android/launcher3/dot/OplusFolderDotInfo;

    invoke-direct {p1}, Lcom/android/launcher3/dot/OplusFolderDotInfo;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_36
    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_36

    :cond_58
    move-object p0, p3

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    :cond_5e
    move-object p0, p3

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p0

    if-eqz p0, :cond_6c

    check-cast p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateWorkspaceWidgetsSizes$1(I)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_44

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_1b
    if-ge v4, v3, :cond_41

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v6, :cond_3e

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_3e

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v5, v7, v8, v6}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_44
    return-void
.end method

.method public static synthetic o(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$runOnOverlayHidden$9(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 30

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    iget-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    iput-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_27

    :cond_19
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    if-eqz v1, :cond_27

    check-cast v0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    invoke-direct {v8, v0}, Lcom/android/launcher3/Workspace;->createSearchAppItemInfo(Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    iput-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_27
    :goto_27
    iget-object v14, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_39

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :cond_39
    move/from16 v16, v0

    move/from16 v17, v1

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, -0x65

    goto :goto_4a

    :cond_48
    const/16 v0, -0x64

    :goto_4a
    move/from16 v20, v0

    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v13

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7f

    iget v0, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v13, v0, :cond_7f

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_7f
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/16 v21, 0x0

    aget v0, v0, v21

    float-to-int v0, v0

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    move v10, v1

    goto :goto_9f

    :cond_9e
    move v10, v0

    :goto_9f
    instance-of v0, v14, Lcom/android/launcher3/PendingAddItemInfo;

    const-string/jumbo v22, "onDropExternal -- mTargetCell = "

    const-string v12, "Drag"

    const/4 v1, 0x6

    const/4 v2, 0x5

    const-string v11, "Launcher.Workspace"

    const/4 v9, 0x1

    if-eqz v0, :cond_231

    move-object v6, v14

    check-cast v6, Lcom/android/launcher3/PendingAddItemInfo;

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_bc

    const/16 v1, 0x65

    if-ne v0, v1, :cond_b9

    goto :goto_bc

    :cond_b9
    move-object/from16 v23, v6

    goto :goto_fa

    :cond_bc
    :goto_bc
    aget v1, p1, v21

    aget v2, p1, v9

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move-object/from16 v23, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    int-to-float v1, v10

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v9

    invoke-virtual {v7, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    iget-object v1, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v7, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto :goto_fc

    :cond_fa
    :goto_fa
    move v0, v9

    goto :goto_fe

    :cond_fc
    :goto_fc
    move/from16 v0, v21

    :goto_fe
    move-object/from16 v6, v23

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_10b

    move-object v1, v6

    check-cast v1, Lcom/android/launcher3/card/PendingAddCardInfo;

    iput-boolean v9, v1, Lcom/android/launcher3/card/PendingAddCardInfo;->mFromDrop:Z

    :cond_10b
    iget-object v5, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_163

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_11d

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_11d

    move v0, v2

    move v1, v3

    :cond_11d
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v9

    float-to-int v3, v3

    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v16, 0x0

    iget-object v7, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x3

    move-object/from16 v23, v6

    move v6, v9

    move-object/from16 v9, p2

    move-object/from16 v24, v11

    move v11, v3

    move-object v3, v12

    move v12, v0

    move v0, v13

    move v13, v1

    move-object v1, v14

    move v14, v4

    move-object/from16 v4, p3

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v7

    iput-object v7, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v7, v2, v21

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v7, v9, :cond_159

    aget v7, v2, v6

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v7, v9, :cond_156

    goto :goto_159

    :cond_156
    move/from16 v9, v21

    goto :goto_15a

    :cond_159
    :goto_159
    move v9, v6

    :goto_15a
    aget v7, v2, v21

    iput v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v2, v2, v6

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_16e

    :cond_163
    move-object/from16 v23, v6

    move v6, v9

    move-object/from16 v24, v11

    move-object v3, v12

    move v0, v13

    move-object v1, v14

    move-object v4, v15

    move/from16 v9, v21

    :goto_16e
    invoke-static/range {v22 .. v22}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pendingInfo.itemType = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v23

    iget v7, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v24

    invoke-static {v3, v15, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/Workspace$5;

    move v13, v0

    move-object v0, v7

    move-object v11, v1

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, v20

    move-object v12, v4

    move v4, v13

    move-object v10, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;)V

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1ad

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1aa

    goto :goto_1ad

    :cond_1aa
    move/from16 v0, v21

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    move v0, v6

    :goto_1ae
    if-eqz v0, :cond_1b6

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_1b7

    :cond_1b6
    const/4 v1, 0x0

    :goto_1b7
    move-object v13, v1

    if-eqz v13, :cond_1c5

    if-eqz v9, :cond_1c5

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v13, v1, v2, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_1c5
    if-eqz v0, :cond_1da

    move-object v0, v14

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_1da

    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-eqz v0, :cond_1da

    move v5, v6

    goto :goto_1dc

    :cond_1da
    move/from16 v5, v21

    :goto_1dc
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_21f

    move-object v0, v14

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    new-instance v7, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v7

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    move-object/from16 v9, p2

    iput-object v9, v7, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v7, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mTargetCell:[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v21

    aput v2, v0, v21

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    goto/16 :goto_517

    :cond_21f
    move-object/from16 v9, p2

    iget-object v3, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v4, v7

    move-object v6, v13

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_517

    :cond_231
    move v6, v9

    move-object v3, v12

    move-object v12, v15

    move-object v9, v7

    move-object v15, v11

    move-object v11, v14

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_2d6

    if-eq v0, v6, :cond_2d6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2c9

    const/4 v4, 0x4

    if-eq v0, v2, :cond_2ac

    if-eq v0, v1, :cond_2d6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2d6

    packed-switch v0, :pswitch_data_518

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_297

    const-string/jumbo v0, "onDropExternal -- d.dragSource = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", d.dragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDragInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_297

    :pswitch_279  #0x64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDropExternal: cardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_310

    :cond_297
    :goto_297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown item type: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2ac
    :pswitch_2ac  #0x63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDropExternal: widgetInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_310

    :cond_2c9
    const v0, 0x7f0d0129

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v14, v11

    check-cast v14, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0, v1, v9, v14}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    goto :goto_310

    :cond_2d6
    :pswitch_2d6  #0x65
    instance-of v0, v11, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v0, :cond_2e6

    move-object v14, v11

    check-cast v14, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-interface {v14, v0}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v14

    iput-object v14, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_2e7

    :cond_2e6
    move-object v14, v11

    :goto_2e7
    instance-of v0, v14, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2fb

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_2fb

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast v14, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iput-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v14, v0

    :cond_2fb
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v8, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    iget-object v2, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/statistics/LauncherStatistics;->statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V

    move-object v11, v14

    :goto_310
    move-object v14, v0

    if-eqz p1, :cond_35f

    aget v1, p1, v21

    aget v2, p1, v6

    iget-object v7, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v5, v3

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v25, v5

    move-object/from16 v5, p2

    move-object/from16 v24, v15

    move v15, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    int-to-float v1, v10

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v15

    invoke-virtual {v9, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v18

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v20

    move-object/from16 v3, p2

    move/from16 v5, v18

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_34c

    return-void

    :cond_34c
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, v18

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_364

    return-void

    :cond_35f
    move-object/from16 v25, v3

    move-object/from16 v24, v15

    move v15, v6

    :cond_364
    if-eqz p1, :cond_39d

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    instance-of v1, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_373

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v12, v1}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChildIfNeeded(Lcom/android/launcher3/DropTarget$DragObject;Ljava/lang/Object;)Z

    :cond_373
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v0, v0

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object v7, v9

    move-object/from16 v9, p2

    move-object v6, v11

    move v11, v0

    move-object v0, v12

    move/from16 v12, v16

    move v5, v13

    move/from16 v13, v17

    move-object v4, v14

    move/from16 v14, v16

    move v0, v15

    move-object/from16 v3, v24

    move/from16 v15, v17

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    goto :goto_3a9

    :cond_39d
    move-object v7, v9

    move-object v6, v11

    move v5, v13

    move-object v4, v14

    move v0, v15

    move-object/from16 v3, v24

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v1, v0, v0}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    :goto_3a9
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3bb

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3bb

    move v9, v0

    goto :goto_3bd

    :cond_3bb
    move/from16 v9, v21

    :goto_3bd
    instance-of v10, v4, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v10, :cond_3d7

    if-eqz v9, :cond_3d7

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v21

    if-gez v1, :cond_3d7

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v8, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v6, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    move/from16 v11, v21

    goto :goto_3d8

    :cond_3d7
    move v11, v0

    :goto_3d8
    if-eqz v11, :cond_410

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v12, v2, v21

    aget v13, v2, v0

    move-object v2, v6

    move-object v14, v3

    move/from16 v3, v20

    move-object v15, v4

    move v4, v5

    move/from16 p1, v5

    move v5, v12

    move-object v12, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v21

    aget v5, v1, v0

    iget v6, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v3, p3

    move v2, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v16, v10

    move v10, v2

    move/from16 v2, v20

    move/from16 v3, p1

    move v7, v13

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    goto :goto_418

    :cond_410
    move-object v14, v3

    move-object v15, v4

    move/from16 p1, v5

    move-object v12, v6

    move/from16 v16, v10

    move v10, v0

    :goto_418
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_44f

    invoke-static/range {v22 .. v22}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needAddInScreen = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasParent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-static {v2, v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_451

    :cond_44f
    move/from16 v1, p1

    :goto_451
    if-eqz v9, :cond_47b

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v0, v21

    if-ltz v2, :cond_47b

    aget v0, v0, v10

    if-ltz v0, :cond_47b

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v21

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v2, v2, v10

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_47b
    move-object/from16 v6, p2

    invoke-virtual {v6, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", to Workspace, screenId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    iget-object v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDrop"

    invoke-static {v1, v12, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-object v5, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v5, :cond_517

    if-eqz v16, :cond_506

    new-instance v9, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    move-object v0, v9

    move-object v2, v15

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    instance-of v0, v15, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_4da

    iget-object v1, v9, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mTargetCell:[I

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v21

    aput v3, v1, v21

    aget v2, v2, v10

    aput v2, v1, v10

    :cond_4da
    iput-object v6, v9, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getDragCardInfo()Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v1

    if-eqz v1, :cond_4fa

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4fa

    if-eqz v0, :cond_517

    :cond_4fa
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    goto :goto_517

    :cond_506
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v15, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    :cond_517
    :goto_517
    return-void

    :pswitch_data_518
    .packed-switch 0x63
        :pswitch_2ac  #00000063
        :pswitch_279  #00000064
        :pswitch_2d6  #00000065
    .end packed-switch
.end method

.method private onEndStateTransition()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    :cond_32
    return-void
.end method

.method private onStartStateTransition()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object v0

    check-cast v0, Lcom/android/overlay/OplusLauncherOverlay;

    invoke-virtual {v0}, Lcom/android/overlay/OplusLauncherOverlay;->exitOverlayScroll()V

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public static synthetic p(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$removeWidget$12(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/android/launcher3/Workspace;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$onDrop$10(I)V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$5(Ljava/lang/Integer;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .registers 7

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000  # 0.5f

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v3, v5, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private shouldConsumeTouch(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static synthetic t(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getHomescreenIconByItemId$13(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private tryRunOverlayCallback()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1a

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    return v1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic u(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreenOnDrag$2(Ljava/lang/Integer;)V

    return-void
.end method

.method private updateCellLayoutPadding()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v1, Lcom/android/launcher3/g;

    invoke-direct {v1, v0}, Lcom/android/launcher3/g;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updatePageScrollValues()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_21

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setScrollProgress(F)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private updateWorkspaceWidgetsSizes()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    sget-object v1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher3/g3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/launcher3/g3;-><init>(Lcom/android/launcher3/Workspace;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreens$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$15(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private workspaceInScrollableState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static synthetic x(Lcom/android/launcher3/Workspace;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$updateWorkspaceWidgetsSizes$1(I)V

    return-void
.end method

.method public static synthetic y(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$16(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/Workspace;->lambda$stripEmptyScreens$7()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_133

    const/16 v21, 0x0

    if-nez v15, :cond_11

    return v21

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_18

    return v21

    :cond_18
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_2e

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_34

    :cond_2e
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_34
    move/from16 v16, v0

    move v14, v1

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_49

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move v13, v0

    move v12, v1

    goto :goto_4c

    :cond_49
    move v12, v14

    move/from16 v13, v16

    :goto_4c
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v21

    float-to-int v0, v0

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    move v10, v1

    goto :goto_6a

    :cond_69
    move v10, v0

    :goto_6a
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v1, v10

    move v3, v12

    move v4, v13

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    int-to-float v1, v10

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v20

    invoke-virtual {v15, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_9a

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_9a

    return v20

    :cond_9a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "Launcher.Workspace"

    const-string v2, "Drag"

    if-eqz v0, :cond_c7

    const-string v0, "acceptDrop -- mTargetCell = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCreateUserFolderOnDrop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAddToExistingFolderOnDrop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    invoke-static {v0, v3, v2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_c7
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_d6

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v3, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_d6

    return v20

    :cond_d6
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    instance-of v3, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_e3

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v8, v3}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChildIfNeeded(Lcom/android/launcher3/DropTarget$DragObject;Ljava/lang/Object;)Z

    :cond_e3
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v20

    float-to-int v11, v3

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x4

    move-object v9, v15

    move-object v5, v15

    move/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v0, v21

    if-ltz v3, :cond_10b

    aget v0, v0, v20

    if-ltz v0, :cond_10b

    move/from16 v0, v20

    goto :goto_10d

    :cond_10b
    move/from16 v0, v21

    :goto_10d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_129

    const-string v3, "acceptDrop -- after performReorder, mTargetCell = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_129
    if-nez v0, :cond_134

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return v21

    :cond_133
    move-object v5, v15

    :cond_134
    invoke-virtual {v7, v5}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_143
    return v20
.end method

.method public addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_3a

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3a

    :cond_32
    const-string v3, "Launcher.Workspace"

    const-string/jumbo v4, "pagePair is null."

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_48

    add-int/lit8 v0, v0, 0x1

    :cond_48
    if-ne v0, v2, :cond_4c

    move p1, v2

    goto :goto_4d

    :cond_4c
    move p1, v1

    :goto_4d
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v3

    if-ne v0, v3, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    move v1, p1

    goto :goto_6d

    :cond_6c
    move v2, v1

    :goto_6d
    if-eqz v1, :cond_72

    if-eqz v2, :cond_72

    return-void

    :cond_72
    new-instance p1, Lcom/android/common/util/n;

    invoke-direct {p1, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addExtraEmptyScreens()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/side/e;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/WorkspaceInjector;->getMaxDistanceForFolderCreation()F

    move-result p1

    cmpl-float p1, p4, p1

    const/4 p4, 0x0

    if-lez p1, :cond_e

    return p4

    :cond_e
    aget p1, p3, p4

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1c

    return p4

    :cond_1c
    iput-boolean p4, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_43

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-virtual {p1, p5, p4}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    if-nez p6, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_42
    return v0

    :cond_43
    return p4
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .registers 24

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v13, 0x2

    new-array v14, v13, [I

    new-array v15, v13, [F

    instance-of v0, v9, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v8, 0x1

    xor-int/lit8 v7, v0, 0x1

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v8, v0, -0xc8

    iget v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move v1, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v1, 0x1

    :goto_40
    instance-of v3, v9, Lcom/android/launcher3/card/PendingAddCardInfo;

    if-nez v3, :cond_51

    const/16 v3, 0x64

    if-ne v0, v3, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    move v0, v2

    :goto_4b
    or-int/2addr v0, v1

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    or-int/2addr v1, v0

    :cond_51
    if-eq v11, v13, :cond_55

    if-eqz p7, :cond_6d

    :cond_55
    if-eqz v12, :cond_6d

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eq v0, v12, :cond_6d

    invoke-direct {v10, v9, v12}, Lcom/android/launcher3/Workspace;->createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    int-to-float v1, v8

    const v3, 0x3f4ccccd  # 0.8f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move-object/from16 v3, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->crossFadeContent(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_81

    :cond_6d
    move-object/from16 v3, p3

    if-eqz v1, :cond_81

    if-eqz p7, :cond_81

    aget v0, v15, v2

    const/4 v1, 0x1

    aget v4, v15, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v1

    aput v0, v15, v2

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v1, 0x1

    :goto_82
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v4, 0x4

    if-ne v11, v4, :cond_a6

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v4, 0x0

    const v5, 0x3dcccccd  # 0.1f

    const v6, 0x3dcccccd  # 0.1f

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object v2, v14

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_c9

    :cond_a6
    if-ne v11, v1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v13, v2

    :goto_aa
    new-instance v7, Lcom/android/launcher3/Workspace$6;

    move-object/from16 v4, p4

    invoke-direct {v7, v10, v12, v4}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    aget v4, v14, v2

    aget v5, v14, v1

    const/high16 v6, 0x3f800000  # 1.0f

    aget v9, v15, v2

    aget v11, v15, v1

    move-object/from16 v1, p3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v9

    move v6, v11

    move v9, v8

    move v8, v13

    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/OplusDragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :goto_c9
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v11, p6

    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v3, :cond_18

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    iget-object v5, v5, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v5}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->getPressAnimationCurrentValue()F

    move-result v5

    goto :goto_19

    :cond_18
    move v5, v4

    :goto_19
    instance-of v6, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v7, 0x0

    if-eqz v6, :cond_2f

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    goto :goto_2f

    :cond_2b
    invoke-virtual {v6}, Lcom/android/launcher3/folder/OplusFolderIcon;->getPressAnimationCurrentValue()F

    move-result v5

    :cond_2f
    :goto_2f
    if-eqz v3, :cond_47

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v6, :cond_47

    iget-object v5, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v5}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->getPressAnimationCurrentValue()F

    move-result v5

    iget-object v3, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    :cond_47
    instance-of v3, v1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_76

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_76

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_67

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v5}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v5

    div-float/2addr v3, v5

    :cond_67
    move v5, v3

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_76

    const v3, 0x3f63d70a  # 0.89f

    mul-float/2addr v5, v3

    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v6, 0x0

    if-eqz v3, :cond_db

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    instance-of v8, v3, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v8, :cond_d8

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_d8

    iget-object v8, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v8

    if-nez v8, :cond_d8

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v8, :cond_ce

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v8, :cond_b1

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_b2

    :cond_b1
    move-object v8, v6

    :goto_b2
    if-eqz v8, :cond_c2

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v8

    if-eqz v8, :cond_c2

    const-string v8, "Launcher.Workspace"

    const-string v9, "FancyDrawable don\'t apply colorFilter when icon is disable"

    invoke-static {v8, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d8

    :cond_c2
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v9, 0xff

    invoke-interface {v8, v9, v6}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_d8

    :cond_ce
    move-object v8, v3

    check-cast v8, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_d8
    :goto_d8
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    :cond_db
    if-nez p2, :cond_e5

    instance-of v3, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v3, :cond_e5

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_e7

    :cond_e5
    move-object/from16 v3, p2

    :goto_e7
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_f8

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v10

    goto :goto_ff

    :cond_f8
    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v10

    move-object v9, v6

    :goto_ff
    iget v2, v2, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v2, v2, 0x2

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v7, v12, v7

    const/4 v13, 0x1

    aget v12, v12, v13

    instance-of v13, v1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v13, :cond_10f

    move v10, v4

    :cond_10f
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v3, :cond_14c

    instance-of v6, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v6, :cond_140

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/folder/FolderIcon;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v6

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v13, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v6, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-eqz v6, :cond_146

    iget-boolean v6, v11, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v6, :cond_146

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v13, 0x45

    const-wide/16 v14, 0x32

    invoke-static {v6, v13, v14, v15}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    goto :goto_146

    :cond_140
    invoke-interface {v3, v4}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v6

    :cond_146
    :goto_146
    new-instance v6, Landroid/graphics/Point;

    neg-int v13, v2

    invoke-direct {v6, v13, v2}, Landroid/graphics/Point;-><init>(II)V

    :cond_14c
    move-object v13, v4

    move v4, v12

    move-object v12, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_15f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :cond_15f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v2

    move-object/from16 v6, p4

    invoke-virtual {v2, v1, v6, v11}, Lcom/android/launcher/WorkspaceInjector;->beginDragSharedInject(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    instance-of v1, v8, Landroid/view/View;

    if-eqz v1, :cond_190

    instance-of v1, v8, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_17c

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v2, v9}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_17c
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v9, v10, v5

    move-object v1, v8

    move-object v2, v3

    move v3, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    goto :goto_1b4

    :cond_190
    instance-of v1, v3, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_1a0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/card/LauncherCardViewDragListener;

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v2, v8}, Lcom/android/launcher3/card/LauncherCardViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_1a0
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v14, v10, v5

    move-object v1, v9

    move-object v2, v3

    move v3, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object v8, v13

    move v9, v14

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    :goto_1b4
    return-object v0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 13

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->setTextAlphaEntryPoint(F)V

    goto :goto_44

    :cond_23
    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->resetPressAnimStateForLongClick(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(ZZ)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    goto :goto_44

    :cond_36
    instance-of v0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_44

    instance-of v0, p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_44

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->resetPressAnimStateForLongClick()V

    :cond_44
    :goto_44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_5d

    const/4 v4, 0x0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v7, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v7, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    return-void

    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindAndInitFirstWorkspaceScreen()V
    .registers 1

    return-void
.end method

.method public canAnnouncePageDescription()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public cleanupFolderCreation()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    :cond_7
    return-void
.end method

.method public clearDropTargets()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/Workspace$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0

    :cond_e
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher/model/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public computeScroll()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/WorkspaceInjector;->getMaxDistanceForFolderCreation()F

    move-result v1

    cmpl-float v1, p5, v1

    const/4 v9, 0x0

    if-lez v1, :cond_12

    return v9

    :cond_12
    aget v1, p4, v9

    const/4 v10, 0x1

    aget v2, p4, v10

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v4, p4, v9

    if-ne v2, v4, :cond_3b

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v4, p4, v10

    if-ne v2, v4, :cond_3b

    if-ne v1, v3, :cond_3b

    move v1, v10

    goto :goto_3c

    :cond_3b
    move v1, v9

    :goto_3c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_4a

    instance-of v1, v3, Lcom/android/launcher3/OplusHotseat;

    if-nez v1, :cond_4a

    move v1, v10

    goto :goto_4b

    :cond_4a
    move v1, v9

    :cond_4b
    :goto_4b
    if-eqz v13, :cond_11d

    if-nez v1, :cond_11d

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_55

    goto/16 :goto_11d

    :cond_55
    iput-boolean v9, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_11d

    if-eqz v2, :cond_11d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez p6, :cond_8e

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_8e

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_8e
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    :cond_a6
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, v13, v15}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v17

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    :cond_c1
    invoke-virtual {v3, v13}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v13

    move-object v7, v14

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher/WorkspaceInjector;->createUserFolderIfNecessaryInject(ILcom/android/launcher3/CellLayout;[ILandroid/view/View;ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eqz p7, :cond_e1

    move v9, v10

    :cond_e1
    if-eqz v9, :cond_f9

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    new-instance v2, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {v2}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    move-object v11, v1

    move-object v2, v15

    move-object/from16 v15, p7

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/folder/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    goto :goto_102

    :cond_f9
    invoke-virtual {v1, v13}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v12}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v1, v14}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :goto_102
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/folder/OplusFolderUtil;->updateFolderCreateType(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;)V

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return v10

    :cond_11d
    :goto_11d
    return v9
.end method

.method public deferRemoveExtraEmptyScreen()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    if-eqz v0, :cond_b

    goto :goto_64

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_29

    return-void

    :cond_29
    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_3d

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_40

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_40
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_48

    return-void

    :cond_48
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_61

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x40800000  # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_64

    :cond_61
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public disableLayoutTransitions()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public enableLayoutTransitions()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public enforceDragParity(Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .registers 12

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object p0
.end method

.method public estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .registers 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_56

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/CellLayout;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v1, :cond_39

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v4, p0}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v4

    :cond_39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    aput p0, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v0, v2

    if-eqz v1, :cond_55

    aget p0, v0, v3

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v3

    aget p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v2

    :cond_55
    return-object v0

    :cond_56
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .registers 13

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p0

    return-object p0
.end method

.method public forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 p0, -0xc9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher3/CellLayout;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getCurrentDropLayoutIndex()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_7
    return v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public getDescendantFocusability()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, 0x60000

    return p0

    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object p0
.end method

.method public getDragOverCell()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpectedHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    goto :goto_18

    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_18
    return p0
.end method

.method public getExpectedWidth()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    goto :goto_18

    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_18
    return p0
.end method

.method public getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V
    .registers 24

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v11, 0x0

    aget v2, p6, v11

    const/4 v12, 0x1

    aget v3, p6, v12

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_29

    const/16 v2, 0x64

    if-eq v1, v2, :cond_29

    invoke-static/range {p5 .. p5}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_171

    :cond_29
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v2

    if-eqz v2, :cond_60

    instance-of v2, v10, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v2, :cond_60

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_60
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    instance-of v2, v9, Lcom/android/launcher3/card/PendingAddCardInfo;

    if-eqz v2, :cond_98

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    iget-object v3, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3, v2}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v2

    aget v2, v2, v12

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v2, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    sub-int/2addr v5, v2

    invoke-virtual {v0, v4, v9, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_171

    :cond_98
    instance-of v1, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_105

    iget v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v1, v12, :cond_171

    iget v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    if-eq v1, v2, :cond_171

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v1

    aget v1, v1, v12

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v1, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v9

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v9

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_171

    :cond_105
    instance-of v1, v9, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_158

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v1, :cond_133

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    aget v3, v1, v11

    aget v1, v1, v12

    move-object v4, v8

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    :cond_133
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_171

    :cond_158
    instance-of v1, v9, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_171

    instance-of v1, v10, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_171

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    instance-of v2, v10, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v2, :cond_168

    goto :goto_171

    :cond_168
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_171
    :goto_171
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v1, v11

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v1, v12

    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-virtual {v1, v8, v2, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v1

    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {v2, v7}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p7, :cond_1f1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    aget v3, v7, v11

    int-to-double v9, v3

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v13, v1, v3, v2}, Le/a;->a(FFFF)F

    move-result v3

    float-to-double v13, v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v13, v2

    sub-double/2addr v9, v13

    double-to-int v2, v9

    aput v2, v7, v11

    aget v2, v7, v12

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v0, v2

    aput v0, v7, v12

    mul-float/2addr v4, v1

    aput v4, p2, v11

    mul-float/2addr v5, v1

    aput v5, p2, v12

    goto :goto_23a

    :cond_1f1
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v0

    mul-float/2addr v0, v1

    aget v2, v7, v11

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v3, v0, v3

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v4, v3, v5, v2}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v7, v11

    aget v2, v7, v12

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v7, v12

    aput v0, p2, v12

    aput v0, p2, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_23a

    aget v2, v7, v11

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v7, v11

    aget v2, v7, v12

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    aput v0, v7, v12

    :cond_23a
    :goto_23a
    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFinalPositionForDropAnimation, currentWpScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Workspace"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v1, p2, v11

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c75c28f  # 0.015f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_274

    aput v0, p2, v11

    :cond_274
    aget v1, p2, v11

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_283

    aput v3, p2, v11

    :cond_283
    aget v1, p2, v12

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_290

    aput v0, p2, v12

    :cond_290
    aget v0, p2, v12

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_29f

    aput v1, p2, v12

    :cond_29f
    return-void
.end method

.method public getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/Workspace$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getFirstMatchAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/o2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/o2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_17

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    :goto_2b
    if-ge p2, v1, :cond_48

    if-ne p2, p1, :cond_30

    goto :goto_36

    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_39

    :goto_36
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    :cond_39
    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    new-instance p1, Landroid/util/Pair;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getHomescreenIconByItemId(I)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/android/launcher3/f3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/f3;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    return-object p0
.end method

.method public getIdForScreen(Lcom/android/launcher3/CellLayout;)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_10
    return v0
.end method

.method public getNumPagesForWallpaperParallax()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result p0

    return p0
.end method

.method public getOffsetXForRotation(FII)F
    .registers 4

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    move v3, v1

    :goto_e
    add-int v4, v1, v2

    if-ge v3, v4, :cond_33

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-nez v4, :cond_1b

    goto :goto_33

    :cond_1b
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_33
    :goto_33
    return-object v0
.end method

.method public getPageIndexForScreenId(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPanelCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    goto :goto_c

    :cond_8
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    :goto_c
    return p0
.end method

.method public getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenIdForPageIndex(I)I
    .registers 4

    const/4 v0, -0x1

    if-ltz p1, :cond_1e

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    const-string p1, "getScreenIdForPageIndex -- e: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "Launcher.Workspace"

    invoke-static {p0, p1, v1}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1e
    return v0
.end method

.method public getScreenOrder()Lcom/android/launcher3/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    return-object p0
.end method

.method public getScreenPair(I)I
    .registers 3

    const/16 p0, -0xc8

    const/16 v0, -0xc9

    if-ne p1, v0, :cond_7

    return p0

    :cond_7
    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    rem-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_11

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_11
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object p0
.end method

.method public getWallpaperOffsetForCenterPage()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForPage(I)F

    move-result p0

    return p0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .registers 4

    new-instance v0, Lcom/android/launcher3/f3;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/f3;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object p0
.end method

.method public getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    if-eqz v1, :cond_19

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1b

    :cond_19
    new-array v1, v0, [Lcom/android/launcher3/CellLayout;

    :goto_1b
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_29

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    return-object v1
.end method

.method public getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mInjector:Lcom/android/launcher/WorkspaceInjector;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/launcher/WorkspaceInjector;

    invoke-direct {v0}, Lcom/android/launcher/WorkspaceInjector;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mInjector:Lcom/android/launcher/WorkspaceInjector;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher/WorkspaceInjector;->init(Lcom/android/launcher/Launcher;)V

    :cond_10
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mInjector:Lcom/android/launcher/WorkspaceInjector;

    return-object p0
.end method

.method public hasExtraEmptyScreens()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    if-le v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v0, -0xc8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public hasOverlay()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public initWorkspace()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isSupportSimpleModeSpeedDialWidget()Z

    move-result v0

    sput v0, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method public injectSetStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V
    .registers 4

    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusCellLayout;->setScreenId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, p2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_67

    sget-object p2, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_67

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mNeedUpdateCurrentPageScroll:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_67

    const-string p1, "Launcher.Workspace"

    const-string p2, "insertNewWorkspaceScreen ,NeedUpdateCurrentPageScroll"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    return-object v0

    :cond_6e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Screen id "

    const-string v0, " already exists!"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertNewWorkspaceScreen(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    :cond_10
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p1, :cond_17

    instance-of p1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez p1, :cond_17

    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez p1, :cond_17

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isDropEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isFinishedSwitchingState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_f

    iget p0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isOverlayShown()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    return p0
.end method

.method public isScrollAllowed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSignificantMove(FIZ)Z
    .registers 7

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p3, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_12

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p3

    if-eqz p3, :cond_20

    :cond_12
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p3

    if-eqz p3, :cond_2c

    iget p3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v2

    if-gt p3, v2, :cond_2c

    :cond_20
    int-to-float p0, p2

    const p2, 0x3e99999a  # 0.3f

    mul-float/2addr p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float p0, p0

    const p2, 0x3e4ccccd  # 0.2f

    mul-float/2addr p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0
.end method

.method public isSwitchingState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return p0
.end method

.method public isTwoPanelEnabled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return p0
.end method

.method public isWillToFolder()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mWillToFolder:Z

    return p0
.end method

.method public lockWallpaperToDefaultPage()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    return-void
.end method

.method public manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_19

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_15

    if-ne p1, v1, :cond_18

    :cond_15
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_18
    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v3, v2

    aget v3, v3, v1

    invoke-virtual {p1, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setWillToFolder(Z)V

    iget-object v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v4

    iget-object v5, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    if-ne p1, v5, :cond_33

    return-void

    :cond_33
    iget v5, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v5, :cond_6b

    if-eqz v4, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/WorkspaceInjector;->manageFolderFeedbackInject(Landroid/view/View;)Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-boolean v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v4, v2

    aget v4, v4, v1

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->startFolderFeedBackAnimation(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_6a
    return-void

    :cond_6b
    instance-of v5, p2, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz v5, :cond_7f

    move-object v6, p2

    check-cast v6, Lcom/android/launcher/batchdrag/BatchDragObject;

    invoke-virtual {v6}, Lcom/android/launcher/batchdrag/BatchDragObject;->getDragViewCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v7

    invoke-virtual {v7, v3, p1, v6}, Lcom/android/launcher/WorkspaceInjector;->willAddBatchIconToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;I)Z

    move-result v7

    goto :goto_84

    :cond_7f
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v7

    move v6, v1

    :goto_84
    if-eqz v7, :cond_bc

    iget v8, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v8, :cond_bc

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_9f

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_9b

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1, v3, v6}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_a2

    :cond_9b
    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_a2

    :cond_9f
    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_a2
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_a9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p2, :cond_bb

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_bb
    return-void

    :cond_bc
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne p1, v0, :cond_c5

    if-nez v7, :cond_c5

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_c5
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne p1, v1, :cond_ce

    if-nez v4, :cond_ce

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_ce
    return-void
.end method

.method public mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p2, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    return-object v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-object p0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    return-void

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :goto_1f
    return-void
.end method

.method public mapPointFromSelfToChild(Landroid/view/View;[F)V
    .registers 5

    const/4 p0, 0x0

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, p0

    const/4 p0, 0x1

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, p2, p0

    return-void
.end method

.method public moveToDefaultScreen()V
    .registers 3

    sget v0, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    if-eq v1, v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1a
    return-void
.end method

.method public notifyPageSwitchListener(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, p0, :cond_e

    if-ge p1, p0, :cond_c

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_e

    :cond_c
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :cond_e
    :goto_e
    return-void
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-wide v2, 0x41dfffffffc00000L  # 2.147483647E9

    const/4 v4, 0x0

    move-object v5, v1

    :goto_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_55

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget v10, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    cmpg-double v9, v7, v2

    if-gez v9, :cond_52

    move-object v5, v6

    move-wide v2, v7

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_55
    iput-object v5, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    :cond_57
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5f

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_64

    :cond_5f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_64

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    :cond_64
    :goto_64
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->getSnapFromPage()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_86

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->snapToNextPagePending()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_86
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setSnapFromPage(I)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancel()V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v8, :cond_10

    return-void

    :cond_10
    iget v0, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v0, :cond_173

    iget v0, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_173

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2a

    :cond_26
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_2a
    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/16 v17, 0x0

    aget v1, v0, v17

    const/4 v15, 0x1

    aget v0, v0, v15

    invoke-virtual {v9, v7, v1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_50

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_50

    :cond_48
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_55

    :cond_50
    :goto_50
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancel()V

    :cond_55
    :goto_55
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_172

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget v0, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_6f

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_6f

    move/from16 v22, v2

    move/from16 v23, v3

    goto :goto_73

    :cond_6f
    move/from16 v22, v0

    move/from16 v23, v1

    :goto_73
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v17

    float-to-int v0, v0

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    move v14, v1

    goto :goto_91

    :cond_90
    move v14, v0

    :goto_91
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v2, v0

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v17

    aget v2, v0, v15

    aget v3, v0, v17

    aget v0, v0, v15

    invoke-virtual {v9, v3, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    int-to-float v3, v14

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v15

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v0

    invoke-virtual {v9, v0, v7}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v15

    float-to-int v12, v3

    iget v13, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v11, v14

    move v5, v14

    move v14, v3

    move v6, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v4

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v24

    const/4 v15, 0x2

    if-nez v24, :cond_f7

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v17

    aget v3, v1, v6

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    :cond_f3
    move v11, v6

    move v12, v15

    goto/16 :goto_163

    :cond_f7
    iget v3, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v3, :cond_fe

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f3

    :cond_fe
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_f3

    iget v3, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v3, v1, :cond_10e

    iget v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v1, v2, :cond_f3

    :cond_10e
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->getReorderRadius([I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f3

    new-array v0, v15, [I

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v6

    float-to-int v12, v1

    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    move v11, v5

    move/from16 v13, v22

    move/from16 v14, v23

    move v5, v15

    move v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v21

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    new-instance v10, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move v12, v5

    move v5, v11

    move v11, v6

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :goto_163
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v11, :cond_16b

    if-eq v0, v12, :cond_16b

    if-nez v24, :cond_172

    :cond_16b
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_172

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    :cond_172
    return-void

    :cond_173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 7

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mExt:Lcom/android/launcher3/IWorkspaceExt;

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-interface {p2, v0, p1}, Lcom/android/launcher3/IWorkspaceExt;->markDragViewUnoccupied(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2f

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_2f

    :cond_2d
    move p2, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    move p2, v1

    :goto_30
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_44
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v0

    :goto_4e
    or-int/2addr p2, v1

    if-eqz p2, :cond_88

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_88

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_88

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p2

    if-nez p2, :cond_88

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p2

    :goto_6d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p2, v0, :cond_88

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_88

    :cond_85
    add-int/lit8 p2, p2, 0x1

    goto :goto_6d

    :cond_88
    :goto_88
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v15, :cond_13

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    :cond_13
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getOriginalView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/card/IAreaWidget;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->isDraggingInLauncher()Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v10

    goto :goto_32

    :cond_31
    move v1, v11

    :goto_32
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-boolean v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->removed:Z

    if-eqz v2, :cond_4b

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v4, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2, v4, v10}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void

    :cond_4b
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v11

    float-to-int v2, v2

    invoke-static {v15}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    move v12, v3

    goto :goto_67

    :cond_66
    move v12, v2

    :goto_67
    instance-of v2, v9, Lcom/android/launcher/batchdrag/BatchDragObject;

    const/4 v3, 0x2

    if-eqz v2, :cond_7d

    new-array v1, v3, [I

    aput v12, v1, v11

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v10

    float-to-int v2, v2

    aput v2, v1, v10

    invoke-virtual {v0, v1, v15, v9}, Lcom/android/launcher3/Workspace;->onDropBatchIcons([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    move v3, v11

    goto/16 :goto_581

    :cond_7d
    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const-string v14, "Launcher.Workspace"

    if-ne v2, v0, :cond_56e

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_56e

    if-eqz v1, :cond_8d

    move-object v10, v14

    move-object v2, v15

    goto/16 :goto_571

    :cond_8d
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v13, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v21, -0x1

    if-eqz v15, :cond_44b

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eq v1, v15, :cond_9e

    move/from16 v22, v10

    goto :goto_a0

    :cond_9e
    move/from16 v22, v11

    :goto_a0
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v23

    const/16 v1, -0x65

    if-eqz v23, :cond_ab

    goto :goto_ad

    :cond_ab
    const/16 v1, -0x64

    :goto_ad
    move v8, v1

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    if-gez v1, :cond_b9

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    goto :goto_bd

    :cond_b9
    invoke-virtual {v0, v15}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    :goto_bd
    move v7, v1

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_c8

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    move v6, v1

    goto :goto_c9

    :cond_c8
    move v6, v10

    :goto_c9
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_d3

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move v5, v1

    goto :goto_d4

    :cond_d3
    move v5, v10

    :goto_d4
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v10

    float-to-int v3, v1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v16, v4

    move v4, v6

    move/from16 v17, v5

    move/from16 v32, v6

    move-object v6, v15

    move v11, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    int-to-float v7, v12

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v10

    invoke-virtual {v15, v7, v2, v1}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v16

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v6, "Drag"

    if-eqz v1, :cond_11f

    const-string/jumbo v1, "onDrop -- mTargetCell = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v8

    move-object v4, v15

    move-object/from16 v33, v6

    move/from16 v6, v16

    move/from16 v34, v7

    move/from16 v7, v19

    move v10, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_44a

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v15

    move/from16 v5, v16

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_14c

    goto/16 :goto_44a

    :cond_14c
    iget-object v8, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v3, :cond_15c

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v4, :cond_15c

    move v1, v3

    move v2, v4

    :cond_15c
    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v3, v11, :cond_177

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v10, :cond_177

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    if-ne v3, v6, :cond_177

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_177

    const/16 v35, 0x1

    goto :goto_179

    :cond_177
    const/16 v35, 0x0

    :goto_179
    if-eqz v35, :cond_182

    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v3, :cond_182

    const/16 v36, 0x1

    goto :goto_184

    :cond_182
    const/16 v36, 0x0

    :goto_184
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v3

    if-nez v3, :cond_19f

    if-nez v36, :cond_19f

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    move/from16 v6, v17

    move/from16 v7, v32

    invoke-virtual {v15, v5, v3, v7, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_1a3

    goto :goto_1a4

    :cond_19f
    move/from16 v6, v17

    move/from16 v7, v32

    :cond_1a3
    const/4 v4, 0x0

    :goto_1a4
    const/4 v3, 0x2

    new-array v3, v3, [I

    if-nez v4, :cond_21f

    iget-object v5, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move/from16 v16, v10

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    move/from16 v17, v11

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v11

    invoke-static {v5, v10, v11}, Lcom/android/launcher3/hotseat/HotseatDragController;->isHotseatShouldAcceptOnDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/OplusHotseat;)Z

    move-result v5

    if-nez v5, :cond_1cb

    const/4 v1, 0x1

    const/4 v11, 0x0

    move v6, v1

    move/from16 v27, v4

    move-object v5, v13

    move-object v1, v14

    move-object v2, v15

    move/from16 v26, v16

    move/from16 v4, v17

    goto/16 :goto_229

    :cond_1cb
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    instance-of v10, v5, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v10, :cond_1d8

    check-cast v5, Lcom/android/launcher3/OplusCellLayout;

    iget-object v10, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v9, v10}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChildIfNeeded(Lcom/android/launcher3/DropTarget$DragObject;Ljava/lang/Object;)Z

    :cond_1d8
    move/from16 v5, v34

    invoke-static {v5, v15}, Lcom/android/launcher3/hotseat/HotseatDragController;->abnormalAreaShouldNotReorderAlarm(FLcom/android/launcher3/CellLayout;)Z

    move-result v5

    if-nez v5, :cond_20f

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/16 v24, 0x1

    aget v5, v5, v24

    float-to-int v5, v5

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x2

    const/16 v25, 0x0

    move/from16 v26, v16

    move-object v10, v15

    move/from16 v27, v4

    move-object/from16 v18, v11

    move/from16 v4, v17

    move v11, v12

    move v12, v5

    move-object v5, v13

    move v13, v1

    move-object v1, v14

    move v14, v2

    move-object v2, v15

    move v15, v7

    move/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v6, v24

    move/from16 v11, v25

    goto :goto_22f

    :cond_20f
    move/from16 v27, v4

    move-object v5, v13

    move-object v1, v14

    move-object v2, v15

    move/from16 v26, v16

    move/from16 v4, v17

    const/16 v24, 0x1

    const/4 v6, 0x0

    move v11, v6

    move/from16 v6, v24

    goto :goto_22f

    :cond_21f
    move/from16 v27, v4

    move/from16 v26, v10

    move v4, v11

    move-object v5, v13

    move-object v1, v14

    move-object v2, v15

    const/4 v6, 0x1

    const/4 v11, 0x0

    :goto_229
    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aput v21, v7, v6

    aput v21, v7, v11

    :goto_22f
    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v10, v7, v11

    if-ltz v10, :cond_23b

    aget v7, v7, v6

    if-ltz v7, :cond_23b

    move v7, v6

    goto :goto_23c

    :cond_23b
    move v7, v11

    :goto_23c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_25b

    const-string/jumbo v10, "onDrop -- after reorder, mTargetCell = "

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v33

    invoke-static {v12, v1, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25b
    if-eqz v7, :cond_283

    instance-of v10, v5, Landroid/appwidget/AppWidgetHostView;

    if-eqz v10, :cond_283

    aget v10, v3, v11

    iget v12, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v10, v12, :cond_26d

    aget v10, v3, v6

    iget v12, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v10, v12, :cond_283

    :cond_26d
    aget v10, v3, v11

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v10, v3, v6

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v13, v5

    check-cast v13, Landroid/appwidget/AppWidgetHostView;

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    aget v12, v3, v11

    aget v3, v3, v6

    invoke-static {v13, v10, v12, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    move v10, v6

    goto :goto_284

    :cond_283
    move v10, v11

    :goto_284
    if-eqz v7, :cond_3c4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v2

    iget v3, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v2, v3, :cond_2c8

    if-nez v23, :cond_2c8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2c3

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_2b4

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_2c3

    :cond_2b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v3

    if-nez v3, :cond_2c3

    new-instance v3, Lcom/android/launcher3/g3;

    invoke-direct {v3, v0, v2, v11}, Lcom/android/launcher3/g3;-><init>(Lcom/android/launcher3/Workspace;II)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_2c6

    :cond_2c3
    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :goto_2c6
    move v12, v6

    goto :goto_2c9

    :cond_2c8
    move v12, v11

    :goto_2c9
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v22, :cond_31d

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    instance-of v3, v5, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_2e0

    move-object v3, v5

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v3}, Lcom/oplus/card/manager/domain/ICardView;->markKeepResumedStateOnDetach()V

    :cond_2e0
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    instance-of v7, v3, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v7, :cond_2eb

    check-cast v3, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/dragndrop/OplusDragView;->setHasMovedParent(Z)V

    :cond_2eb
    if-eqz v2, :cond_2f1

    invoke-virtual {v2, v5}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_2fe

    :cond_2f1
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_2fe

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_2fe
    :goto_2fe
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v7, v2, v11

    aget v6, v2, v6

    iget v14, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v15, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, v1

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v16, v10

    move-object v10, v3

    move/from16 v3, v26

    move/from16 v17, v4

    move-object/from16 v19, v5

    move v5, v7

    move v7, v14

    move-object v14, v8

    move v8, v15

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    goto :goto_325

    :cond_31d
    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object v14, v8

    move/from16 v16, v10

    move-object v10, v1

    :goto_325
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v11

    iput v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_367

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_367

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_367

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v11

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_367
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v11

    iput v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput-boolean v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/16 v2, -0x65

    move/from16 v3, v26

    move-object/from16 v15, v19

    if-eq v3, v2, :cond_3a3

    instance-of v2, v15, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_3a3

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_3a3

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_3a3

    move-object/from16 v2, p2

    iget-boolean v2, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    :cond_3a3
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v24

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v25, v13

    move/from16 v26, v3

    move/from16 v27, v17

    move/from16 v28, v2

    move/from16 v29, v1

    move/from16 v30, v4

    move/from16 v31, v5

    invoke-virtual/range {v24 .. v31}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto/16 :goto_432

    :cond_3c4
    move-object v15, v5

    move-object v14, v8

    move/from16 v16, v10

    move-object v10, v1

    if-nez v27, :cond_3d2

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    :cond_3d2
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v1

    if-eqz v1, :cond_3e1

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    const/4 v4, 0x1

    invoke-static {v1, v3, v9, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragWhenDrop(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    goto :goto_3e2

    :cond_3e1
    const/4 v4, 0x1

    :goto_3e2
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-static {v1}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3f1

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_3f1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v5, v3, v11

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v1, v3, v4

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_431

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_431

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    instance-of v3, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_427

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    :cond_427
    instance-of v1, v2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_431

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    :cond_431
    move v12, v11

    :goto_432
    const-string v1, "Source="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDrop"

    invoke-static {v2, v14, v1}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    move/from16 v18, v35

    goto :goto_465

    :cond_44a
    :goto_44a
    return-void

    :cond_44b
    move-object v15, v13

    move-object v10, v14

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-static {v1}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_45d

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_45d
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v36, 0x0

    :goto_465
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_560

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_560

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v1

    if-eqz v1, :cond_558

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_495

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_495

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_496

    :cond_495
    const/4 v1, 0x0

    :goto_496
    move-object v2, v1

    if-eqz v2, :cond_4ae

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4ac

    const/16 v3, 0x63

    if-eq v1, v3, :cond_4ac

    const/16 v3, 0x64

    if-eq v1, v3, :cond_4ac

    invoke-static {v2}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_4ae

    :cond_4ac
    const/4 v1, 0x1

    goto :goto_4af

    :cond_4ae
    move v1, v11

    :goto_4af
    if-eqz v36, :cond_522

    new-instance v2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    if-eqz v1, :cond_4cc

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_4e3

    :cond_4cc
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/b3;

    invoke-direct {v3, v2}, Lcom/android/launcher3/b3;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v1, v3, v15, v2}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    :goto_4e3
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    invoke-virtual {v13, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_521

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_521

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_521

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_521

    const-string/jumbo v1, "onDrop clear folder animate"

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_521
    return-void

    :cond_522
    if-eqz v1, :cond_536

    if-eqz v16, :cond_529

    const/4 v1, 0x2

    move v6, v1

    goto :goto_52a

    :cond_529
    move v6, v11

    :goto_52a
    iget-object v4, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_55d

    :cond_536
    if-eqz v12, :cond_53a

    const/16 v21, 0x12c

    :cond_53a
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_54a

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-interface {v2, v1, v11}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v21

    :cond_54a
    move/from16 v1, v21

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2, v3, v15, v1, v0}, Lcom/android/launcher3/OplusDragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    goto :goto_55d

    :cond_558
    iput-boolean v11, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v15, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_55d
    invoke-virtual {v13, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_560
    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/statistics/LauncherStatistics;->statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V

    move/from16 v11, v18

    goto :goto_582

    :cond_56e
    move-object v10, v14

    move-object v2, v15

    const/4 v3, 0x2

    :goto_571
    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v12, v1, v3

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    aput v4, v1, v5

    :try_start_57e
    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    :try_end_581
    .catch Ljava/lang/IllegalStateException; {:try_start_57e .. :try_end_581} :catch_592

    :goto_581
    move v11, v3

    :goto_582
    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_58e

    if-nez v11, :cond_58e

    const v2, 0x7f1202f7

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_58e
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    return-void

    :catch_592
    move-exception v0

    move-object v1, v0

    const-string/jumbo v0, "onDrop ,faile on"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDropBatchIcons([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 5

    if-eqz p3, :cond_10

    if-eq p1, p0, :cond_3b

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_3b

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_24
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_3b
    :goto_3b
    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz p2, :cond_4d

    if-eqz p1, :cond_4d

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    :cond_24
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    return-void
.end method

.method public onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .registers 7
    .param p3  # Lcom/android/launcher3/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ge v0, v1, :cond_2d

    return-void

    :cond_2d
    const v0, 0x7f12046a

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_42

    const p1, 0x7f120609

    goto :goto_45

    :cond_42
    const p1, 0x7f1202d8

    :goto_45
    move v0, p1

    :cond_46
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p3, :cond_64

    invoke-interface {p0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    :cond_64
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v2, "Launcher.Workspace"

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v1, :cond_5a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    const-string/jumbo v1, "onOverlayScrollChanged set mOverlayShown true"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    goto :goto_5a

    :cond_1e
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_5a

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v1, :cond_29

    goto :goto_34

    :cond_29
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    :cond_34
    :goto_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    const-string/jumbo v1, "onOverlayScrollChanged set mOverlayShown false"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/guide/GuidePageManager;->onOverlayHidden()V

    :cond_57
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    :cond_5a
    :goto_5a
    sub-float/2addr p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr p1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe8000000000000L  # 0.75

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_82

    neg-float v0, v0

    :cond_82
    iput v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    return-void
.end method

.method public onPageBeginTransition()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public onPageEndTransition()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->onPageEndTransition()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_19
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    :cond_23
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onPageEndTransition()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object p4, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-eq p1, p4, :cond_19

    move p1, p2

    goto :goto_1a

    :cond_19
    move p1, p3

    :goto_1a
    if-nez p1, :cond_2e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move p2, p3

    :cond_2e
    :goto_2e
    if-nez p2, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldConsumeTouch(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWallpaperTap(Landroid/view/MotionEvent;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    :try_start_1f
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_2e

    const-string p0, "android.wallpaper.tap"

    goto :goto_30

    :cond_2e
    const-string p0, "android.wallpaper.secondaryTap"

    :goto_30
    move-object v7, p0

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3a} :catch_3b

    goto :goto_48

    :catch_3b
    move-exception p0

    const-string/jumbo p1, "onWallpaperTap -- e: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Launcher.Workspace"

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .registers 1

    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    return-void
.end method

.method public removeExtraEmptyScreen(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-lez p1, :cond_15

    new-instance v0, Lcom/android/launcher3/z0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_69

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_43

    if-eqz p2, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    goto :goto_55

    :cond_43
    new-instance p1, Landroidx/core/location/a;

    invoke-direct {p1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_55
    :goto_55
    if-eqz p2, :cond_64

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-nez p1, :cond_64

    :cond_61
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    :cond_64
    if-eqz p3, :cond_69

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_69
    :goto_69
    return-void
.end method

.method public removeFolderListeners()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/Workspace$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_15
    if-ltz v6, :cond_80

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1e

    goto :goto_7d

    :cond_1e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_3f

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-nez v9, :cond_7d

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_3f

    goto :goto_7d

    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    instance-of v8, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v8, :cond_7d

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v7, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_7d

    :cond_5a
    instance-of v7, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v7, :cond_7d

    check-cast v8, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v7, v8, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7d

    invoke-virtual {v8, v7, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    :cond_7d
    :goto_7d
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_83
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    return-void
.end method

.method public removeWidget(I)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/m2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/m2;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_9
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_14
    return-void
.end method

.method public resetTransitionTransform()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_10
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget p1, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_10
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_16
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public runOnOverlayHidden(Ljava/lang/Runnable;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    goto :goto_e

    :cond_7
    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher/widget/b;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    :goto_e
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public scrollLeft()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1b
    return v0
.end method

.method public scrollRight()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1b
    return v0
.end method

.method public setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_8
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_10
    return-void
.end method

.method public setCurrentDropLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/CellLayout;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_c
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_12

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    :cond_12
    if-eqz p1, :cond_17

    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_17
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    return-void
.end method

.method public setCurrentDropOverCell(II)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_10

    :cond_8
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_10
    return-void
.end method

.method public setDragMode(I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_2e

    :cond_11
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1c

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_2e

    :cond_1c
    if-ne p1, v1, :cond_25

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_2e

    :cond_25
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2e

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    :cond_2e
    :goto_2e
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    :cond_30
    return-void
.end method

.method public setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .registers 9

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p3

    if-eqz p3, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p3

    if-nez p3, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p3

    if-eqz p3, :cond_25

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p3

    if-nez p3, :cond_25

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    goto :goto_5f

    :cond_25
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p3

    if-nez p3, :cond_5e

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;

    move-result-object p3

    if-nez p3, :cond_55

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v2, v2

    invoke-virtual {p0, p3, v1, v2}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object p3

    if-eqz p3, :cond_39

    :cond_55
    if-nez p3, :cond_5c

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->checkDragObjectIsOverAllPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    goto :goto_5f

    :cond_5c
    move-object p2, p3

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p3}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->getSnapFromPage()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_ae

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_ae

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    aput v3, v0, v2

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v3, v3

    aput v3, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/Workspace;->verifySpecifiedPage(I[F)Z

    move-result v3

    if-nez v3, :cond_9c

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    if-eqz v4, :cond_9c

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    aput v4, v0, v2

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, v0, v1

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/Workspace;->verifySpecifiedPage(I[F)Z

    move-result v0

    or-int/2addr v3, v0

    :cond_9c
    if-eqz v3, :cond_ae

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->snapToNextPagePending()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancelSnapNextPage()V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_ae
    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq p2, p3, :cond_b9

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    return v1

    :cond_b9
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p3

    if-eqz p3, :cond_e0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-ne p2, p3, :cond_f9

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_d7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result p3

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    sub-int/2addr p3, v0

    if-lt p2, p3, :cond_f9

    goto :goto_fa

    :cond_d7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    iget p3, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    if-gt p2, p3, :cond_f9

    goto :goto_fa

    :cond_e0
    if-eqz p2, :cond_f9

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-ne p2, p3, :cond_f9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, v1

    if-ne p3, p2, :cond_f9

    goto :goto_fa

    :cond_f9
    move v1, v2

    :goto_fa
    if-eqz v1, :cond_123

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p2, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    if-ge p1, p2, :cond_106

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_118

    :cond_106
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_11e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_11e

    :cond_118
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setSnapToAssistant()V

    goto :goto_123

    :cond_11e
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancelSnapToAssistant()V

    :cond_123
    :goto_123
    return v2
.end method

.method public setFinalTransitionTransform()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1e
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1e
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const-string v3, " paddingBottom = "

    const-string v4, "Launcher.Workspace"

    const-string v5, "BottomSearchManager"

    invoke-static {v3, v2, v4, v5}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v3, :cond_32

    sget-object v3, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_32
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_4a

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    goto :goto_7f

    :cond_4a
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_74

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    goto :goto_7f

    :cond_74
    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    :goto_7f
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateWorkspaceWidgetsSizes()V

    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_d

    :cond_4
    new-instance v0, Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    :goto_d
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-nez p1, :cond_1a

    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    :cond_1a
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_21

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    goto :goto_23

    :cond_21
    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    :goto_23
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setPivotToScaleWithSelf(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setState(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 6

    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$1;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    sget p2, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p2

    if-eqz p2, :cond_16

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_2e

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/launcher3/Workspace;->injectSetStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setWallpaperDimension()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/Workspace$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWillToFolder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mWillToFolder:Z

    return-void
.end method

.method setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public shouldFlingForVelocity(I)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    :goto_9
    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_17

    move p1, v1

    goto :goto_18

    :cond_17
    move p1, v0

    :goto_18
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mExt:Lcom/android/launcher3/IWorkspaceExt;

    iget v3, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v2, v3, p1, v4}, Lcom/android/launcher3/IWorkspaceExt;->onInterceptShouldFlingForVelocity(FZLcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_37

    if-eqz p1, :cond_37

    move v0, v1

    :cond_37
    return v0
.end method

.method public shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method public showPageIndicatorAtCurrentScroll()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    :cond_11
    return-void
.end method

.method public snapToDestination()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    goto :goto_12

    :cond_f
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :goto_12
    return-void
.end method

.method public snapToPageForDrag(I)V
    .registers 2

    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/Workspace$4;

    sget-object v2, Lcom/android/launcher3/j3;->b:Lcom/android/launcher3/j3;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_1a
    invoke-virtual {p0, p1, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method public startFolderFeedBackAnimation(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public stripEmptyScreens()V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const-string v1, "Launcher.Workspace"

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_16

    const-string/jumbo p0, "stripEmptyScreens: Workspace is loading, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string/jumbo p0, "stripEmptyScreens: isPageInTransition, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    new-instance v3, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3e
    if-ge v6, v4, :cond_9c

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    if-nez v8, :cond_51

    goto :goto_99

    :cond_51
    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isContainerHasAppWidget: isCurrentPageOnlyHasWidget = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v10, v9, Ljava/lang/Boolean;

    if-eqz v10, :cond_7e

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7e

    goto :goto_99

    :cond_7e
    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_99

    invoke-virtual {v3, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/mode/LauncherModeManager;->isSupportSimpleModeSpeedDialWidget()Z

    move-result v8

    if-eqz v8, :cond_99

    if-nez v7, :cond_99

    sput v5, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    :cond_99
    :goto_99
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_9c
    move v4, v5

    move v6, v4

    :goto_9e
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_f1

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->remove(I)V

    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    sget-object v9, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v9

    if-nez v9, :cond_c3

    move v4, v2

    :cond_c3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-le v9, v2, :cond_d5

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v0, :cond_d1

    add-int/lit8 v6, v6, 0x1

    :cond_d1
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_ee

    :cond_d5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v9

    if-eqz v9, :cond_e2

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v2, :cond_e2

    const/16 v7, -0xc8

    goto :goto_e4

    :cond_e2
    const/16 v7, -0xc9

    :goto_e4
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :goto_ee
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    :cond_f1
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_113

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_113

    if-eqz v4, :cond_113

    sget-object v2, Lcom/android/launcher3/h3;->b:Lcom/android/launcher3/h3;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_113
    if-ltz v6, :cond_136

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stripEmptyScreens,currentPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pageShift="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_136
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v1, :cond_142

    if-eqz v0, :cond_151

    :cond_142
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_151

    sget-object v0, Lcom/android/launcher3/i3;->a:Lcom/android/launcher3/i3;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_151
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000  # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_e
    return-void
.end method

.method public updateAccessibilityFlags()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x4

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    :goto_28
    if-ge v1, v2, :cond_36

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_39
    return-void
.end method

.method public updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V
    .registers 3

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public updateChildrenLayersEnabled()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    move v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_2e

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_2e

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_2e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2e
    :goto_2e
    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v1, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, p1, v2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {p1, p0, v1}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v1, v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_71

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v1, v1, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_71

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v1, v1, v2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_71

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v1, v1, v2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_71

    move v0, v2

    :cond_71
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    goto :goto_76

    :cond_74
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    :goto_76
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher3/k3;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/k3;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    new-instance p1, Lcom/android/launcher/w;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_1e
    return-void
.end method

.method public updatePageAlphaValues()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_56

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_53

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v4, :cond_44

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_53

    :cond_44
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4f

    move v4, v0

    goto :goto_50

    :cond_4f
    const/4 v4, 0x4

    :goto_50
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_56
    return-void
.end method

.method public updateVelocityValues()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07113d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    const v1, 0x7f0707e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    const v1, 0x7f070ac5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    const v1, 0x7f070ac6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    return-void
.end method

.method public verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;
    .registers 5

    if-ltz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_33

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_33

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifySpecifiedPage(I[F)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    goto :goto_37

    :cond_31
    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    :goto_37
    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    goto :goto_45

    :cond_3d
    new-instance v0, Lcom/android/launcher3/Workspace$10;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1a

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_19

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_51

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    return v2

    :cond_28
    instance-of v1, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_35

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    :cond_35
    instance-of v1, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_51

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq v1, p1, :cond_51

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->isNotOverMaxItems(I)Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const p1, 0x7f12026a

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_51
    return v0
.end method

.method public willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/WorkspaceInjector;->getMaxDistanceForFolderCreation()F

    move-result v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_e

    return v0

    :cond_e
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1a

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_19

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz p2, :cond_60

    if-nez v1, :cond_60

    if-eqz p3, :cond_33

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p0, :cond_33

    goto :goto_60

    :cond_33
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p0, :cond_49

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p2, -0x67

    if-eq p0, p2, :cond_49

    move p0, v2

    goto :goto_4a

    :cond_49
    move p0, v0

    :goto_4a
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p1, :cond_5a

    const/4 p2, 0x6

    if-eq p1, p2, :cond_5a

    if-eq p1, v2, :cond_5a

    const/16 p2, 0x65

    if-ne p1, p2, :cond_58

    goto :goto_5a

    :cond_58
    move p1, v0

    goto :goto_5b

    :cond_5a
    :goto_5a
    move p1, v2

    :goto_5b
    if-eqz p0, :cond_60

    if-eqz p1, :cond_60

    move v0, v2

    :cond_60
    :goto_60
    return v0
.end method

.method public willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/WorkspaceInjector;->getMaxDistanceForFolderCreation()F

    move-result v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_e

    return v0

    :cond_e
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public workspaceIconsCanBeDragged()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherState;

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public workspaceInModalState()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
