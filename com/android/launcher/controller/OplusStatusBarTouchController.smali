.class public Lcom/android/launcher/controller/OplusStatusBarTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusStatusBarTouchController"


# instance fields
.field private mDownEventPoint:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private isOneHandedModeActivating(Landroid/view/MotionEvent;)Z
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isOneHandedModeEnable()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_41

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->canTriggerOneHandedAction(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_41

    const-string p0, "OneHanded mode activated, skipping event is ("

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusStatusBarTouchController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_41
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusStatusBarTouchController"

    const/4 v3, 0x6

    if-eq v0, v3, :cond_12

    const-string p0, "canInterceptTouch: SlideDown type not NotificationCenter"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->isOnehandedModeActivating(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p0, "canInterceptTouch: in one-handed mode"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p0, "canInterceptTouch: Guide is Showing"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string p0, "canInterceptTouch: State is not in NORMAL"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4f
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7ffeff

    invoke-static {v0, v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_60

    const-string p0, "canInterceptTouch: has TopOpenView"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v3

    if-eqz v3, :cond_72

    const-string p0, "canInterceptTouch: workspace is in Transition"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string p0, "canInterceptTouch: scroll AppWidget"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_86
    invoke-direct {p0, p1}, Lcom/android/launcher/controller/OplusStatusBarTouchController;->isOneHandedModeActivating(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string p0, "canInterceptTouch: isOneHandedModeActivating"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_92
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_af

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_af

    sget-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v1, "TouchIntercept::OplusStatusBarTouchController"

    const-string v2, "canInterceptTouch: canInterceptTouch=true"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_af
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const-string/jumbo v3, "onControllerInterceptTouchEvent: !mCanIntercept"

    const-string v4, "OplusStatusBarTouchController"

    const/4 v5, 0x0

    if-nez v0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/launcher/controller/OplusStatusBarTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    if-nez v6, :cond_20

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/controller/OplusStatusBarTouchController;->mDownEventPoint:Landroid/view/MotionEvent;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_52

    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_52

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_52
    :goto_52
    iget-boolean v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    if-nez v6, :cond_5a

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_5a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_c5

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_77
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mTouchSlop:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_b9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b9

    iget-object p1, p0, Lcom/android/launcher/controller/OplusStatusBarTouchController;->mDownEventPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->setWindowSlippery(Z)V

    const-string/jumbo p0, "onControllerInterceptTouchEvent: dy > mTouchSlop && dy > Math.abs && ev.getPointerCount() == 1"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c5

    iput-boolean v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    :cond_c5
    return v5
.end method
