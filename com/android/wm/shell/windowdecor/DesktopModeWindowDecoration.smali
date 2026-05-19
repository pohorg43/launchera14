.class public Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;,
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wm/shell/windowdecor/WindowDecoration<",
        "Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DesktopModeWindowDecoration"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/CharSequence;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

.field private mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field private mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field private mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field private mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

.field private final mHandler:Landroid/os/Handler;

.field private mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

.field private final mPositionInParent:Landroid/graphics/Point;

.field private mRelayoutBlock:I

.field private mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field private mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

.field private final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTransitionsPausingRelayout:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->loadAppInfo()V

    return-void
.end method

.method private checkEventInCaptionView(Landroid/view/MotionEvent;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_23

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private clickIfPointInView(Landroid/graphics/PointF;Landroid/view/View;)Z
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private closeDragResizeListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    return-void
.end method

.method private disposeResizeVeil()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    return-void
.end method

.method private getDesktopModeWindowDecorLayoutId(I)I
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result p0

    if-eqz p0, :cond_9

    sget p0, Lcom/android/wm/shell/R$layout;->desktop_mode_app_controls_window_decor:I

    return p0

    :cond_9
    const/4 p0, 0x5

    if-ne p1, p0, :cond_f

    sget p0, Lcom/android/wm/shell/R$layout;->desktop_mode_app_controls_window_decor:I

    goto :goto_11

    :cond_f
    sget p0, Lcom/android/wm/shell/R$layout;->desktop_mode_focused_window_decor:I

    :goto_11
    return p0
.end method

.method private loadAppInfo()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_12
    new-instance v2, Lcom/android/launcher3/icons/IconProvider;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3b} :catch_3c

    goto :goto_53

    :catch_3c
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopModeWindowDecoration"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    return-void
.end method

.method private offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->offset(FF)V

    iget p0, p1, Landroid/graphics/Point;->x:I

    neg-int p0, p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0
.end method


# virtual methods
.method public addTransitionPausingRelayout(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkClickEvent(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    sget v1, Lcom/android/wm/shell/R$id;->desktop_mode_caption:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->caption_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->clickIfPointInView(Landroid/graphics/PointF;Landroid/view/View;)Z

    goto :goto_35

    :cond_30
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->checkClickEvent(Landroid/view/MotionEvent;)V

    :goto_35
    return-void
.end method

.method public checkTouchEventInHandle(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget v0, Lcom/android/wm/shell/R$id;->caption_handle:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkEventInCaptionView(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public close()V
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeDragResizeListener()V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;->onTaskCornersRemoved(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->disposeResizeVeil()V

    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public closeHandleMenu()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    return-void
.end method

.method public closeHandleMenuIfNeeded(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    sget v1, Lcom/android/wm/shell/R$id;->open_menu_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->isValidMenuInput(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_2c

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    :cond_2c
    return-void
.end method

.method public createHandleMenu()V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setAppIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setAppName(Ljava/lang/CharSequence;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setLayoutId(I)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setCaptionPosition(II)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->setWindowingButtonsVisible(Z)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->build()Lcom/android/wm/shell/windowdecor/HandleMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->show()V

    return-void
.end method

.method public createResizeVeil()V
    .registers 9

    new-instance v7, Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/function/Supplier;Landroid/view/Display;Ljava/util/function/Supplier;)V

    iput-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    return-void
.end method

.method public getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .registers 3

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->isDesktopDensityOverrideSet()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput p0, p1, Landroid/content/res/Configuration;->densityDpi:I

    :cond_18
    return-object p1
.end method

.method public getGlobalCornersRegion()Landroid/graphics/Region;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->getCornersRegion()Landroid/graphics/Region;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->translate(II)V

    return-object v0
.end method

.method public hideResizeVeil()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->hideVeil()V

    return-void
.end method

.method public incrementRelayoutBlock()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    return-void
.end method

.method public isFocused()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    return p0
.end method

.method public isHandleMenuActive()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public mergeTransitionPausingRelayout(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public pointInView(Landroid/view/View;FF)Z
    .registers 4

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    if-lez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v1, :cond_b

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_decor_shadow_focused_thickness:I

    goto :goto_d

    :cond_b
    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_decor_shadow_unfocused_thickness:I

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v5

    :goto_19
    if-eqz v2, :cond_21

    iget-boolean v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v2, :cond_21

    move v8, v4

    goto :goto_22

    :cond_21
    move v8, v5

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/HandleMenu;->relayout(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_32

    :cond_30
    move-object/from16 v3, p2

    :goto_32
    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v9, v2

    check-cast v9, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->getDesktopModeWindowDecorLayoutId(I)I

    move-result v2

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput-object v0, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput v2, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    sget v0, Lcom/android/wm/shell/R$dimen;->freeform_decor_caption_height:I

    iput v0, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iput v1, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    move/from16 v0, p4

    iput-boolean v0, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    new-array v1, v4, [I

    const v2, 0x1010571

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->relayout(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_90

    return-void

    :cond_90
    if-eq v9, v0, :cond_c9

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    sget v2, Lcom/android/wm/shell/R$layout;->desktop_mode_focused_window_decor:I

    if-ne v1, v2, :cond_a6

    new-instance v1, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;

    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    goto :goto_c9

    :cond_a6
    sget v0, Lcom/android/wm/shell/R$layout;->desktop_mode_app_controls_window_decor:I

    if-ne v1, v0, :cond_c1

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v14, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v15, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    goto :goto_c9

    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected layout resource id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    :goto_c9
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_d9

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    :cond_d9
    if-nez v8, :cond_df

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeDragResizeListener()V

    return-void

    :cond_df
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v10, v0, :cond_e7

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_102

    :cond_e7
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeDragResizeListener()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v11, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    iget-object v14, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :cond_102
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_resize_handle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->freeform_resize_corner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(IIIII)Z

    move-result v0

    if-nez v0, :cond_153

    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_160

    :cond_153
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->getGlobalCornersRegion()Landroid/graphics/Region;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;->onTaskCornersChanged(ILandroid/graphics/Region;)V

    :cond_160
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget-object v1, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    return-void
.end method

.method public releaseViews()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    return-void
.end method

.method public removeTransitionPausingRelayout(Landroid/os/IBinder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    :cond_e
    return-void
.end method

.method public setCaptionListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setCornersListener(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

    return-void
.end method

.method public setDragDetector(Lcom/android/wm/shell/windowdecor/DragDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    return-void
.end method

.method public setDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    return-void
.end method

.method public showResizeVeil(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->showVeil(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateResizeVeil(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->updateResizeVeil(Landroid/graphics/Rect;)V

    return-void
.end method
