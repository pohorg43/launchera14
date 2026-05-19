.class public Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DOCK_HOME_ACTIVITY:Ljava/lang/String; = "com.heytap.quicksearchbox/com.heytap.docksearch.home.DockHomeActivity"

.field private static final SEACH_HOME_ACTIVITY:Ljava/lang/String; = "com.heytap.quicksearchbox/.ui.activity.SearchHomeActivity"

.field private static final SPLIT_SCREEN_SETTINGS:Ljava/lang/String; = "allow_resizeable_screen"

.field private static final TAG:Ljava/lang/String; = "OplusZoomPointerEventPretreatment"


# instance fields
.field private mAllowChangeToSplit:Z

.field private mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mImeVisible:Z

.field private mIsDragonflyDevice:Z

.field private mIsFoldDevice:Z

.field private mIsSupportPocketStudio:Z

.field private mIsTabletDevice:Z

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

.field private mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsFoldDevice:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsDragonflyDevice:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsTabletDevice:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mEnable:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsSupportPocketStudio:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mImeVisible:Z

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsFoldDevice:Z

    if-eqz p2, :cond_54

    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsDragonflyDevice:Z

    if-nez p2, :cond_54

    new-instance p2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p2, v0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    goto :goto_6f

    :cond_54
    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsTabletDevice:Z

    if-eqz p2, :cond_64

    new-instance p2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p2, v0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    goto :goto_6f

    :cond_64
    new-instance p2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p2, v0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    :goto_6f
    return-void
.end method

.method private isSearchOrDockHome(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.heytap.quicksearchbox/.ui.activity.SearchHomeActivity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "com.heytap.quicksearchbox/com.heytap.docksearch.home.DockHomeActivity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

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


# virtual methods
.method public getLastDragToSplit()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsSupportPocketStudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->getLastDrag()Z

    move-result p0

    return p0

    :cond_e
    return v1

    :cond_f
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getLastDragToSplit()Z

    move-result p0

    return p0

    :cond_1a
    return v1
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsSupportPocketStudio:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleEvent(Landroid/view/MotionEvent;)V

    goto :goto_15

    :cond_c
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->handleEvent(Landroid/view/MotionEvent;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public initDragInfo(II)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsSupportPocketStudio:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mImeVisible:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {v0, v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    :cond_1e
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleDown(II)V

    return-void

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLastMoveToSplit:Z

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mEnable:Z

    const-string v3, "OplusZoomPointerEventPretreatment"

    if-eqz v1, :cond_aa

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsFoldDevice:Z

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_aa

    :cond_43
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getBracketModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v1, :cond_57

    const-string p1, "BracketMode is visible, not allow drag animation"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    return-void

    :cond_57
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getHomeOrRecentsTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_85

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->isSearchOrDockHome(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "home or recents is visible, but quicksearchbox is visible, allow drag animation"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    goto :goto_8d

    :cond_85
    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    const-string p0, "home or recents visible, not allow drag animation"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v4, "allow_resizeable_screen"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a4

    const-string p1, "toggleSplitScreen switch is off, not allow drag animation"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    return-void

    :cond_a4
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDisplayInfo(II)V

    return-void

    :cond_aa
    :goto_aa
    const-string p1, "no color feature or not innerScreen, not allow drag animation"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    return-void
.end method

.method public needStopPhysicsAnimation()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mIsSupportPocketStudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->needStopPhysicsAnimation()Z

    move-result p0

    return p0

    :cond_e
    return v1

    :cond_f
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAllowChangeToSplit:Z

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mAnimationManager:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getLastDragToSplit()Z

    move-result p0

    return p0

    :cond_1a
    return v1
.end method

.method public saveImeStatus(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save imeStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusZoomPointerEventPretreatment"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomPointerEventPretreatment;->mImeVisible:Z

    return-void
.end method
