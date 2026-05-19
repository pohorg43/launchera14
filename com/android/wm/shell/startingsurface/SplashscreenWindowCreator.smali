.class Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;
.super Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;,
        Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;
    }
.end annotation


# static fields
.field private static final LIGHT_BARS_MASK:I = 0x18


# instance fields
.field private final mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControlViewHost;",
            ">;"
        }
    .end annotation
.end field

.field private mChoreographer:Landroid/view/Choreographer;

.field private mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

.field private final mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    new-instance p1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-direct {p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/startingsurface/q;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/startingsurface/q;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/content/Context;ILandroid/widget/FrameLayout;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->lambda$addSplashScreenStartingWindow$1(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->removeWindowInner(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->lambda$copySplashScreenView$3(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->lambda$copySplashScreenView$2(I)V

    return-void
.end method

.method private synthetic lambda$addSplashScreenStartingWindow$1(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/content/Context;ILandroid/widget/FrameLayout;)V
    .registers 13

    const-wide/16 v0, 0x20

    const-string v2, "addSplashScreenView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    move-result-object v2

    instance-of v3, v2, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    check-cast v2, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    goto :goto_1a

    :cond_19
    move-object v2, v4

    :goto_1a
    if-eqz v2, :cond_4a

    iget-object v3, p3, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_4a

    if-eqz p1, :cond_47

    :try_start_26
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-virtual {p0, p4, p1, p3, p5}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->handleSplashScreenView(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/window/StartingWindowInfo;I)V

    invoke-virtual {p6, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_47

    :catch_2f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed set content view to starting window at taskId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShellStartingWindow"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    :cond_47
    :goto_47
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->setSplashScreenView(Landroid/window/SplashScreenView;)V

    :cond_4a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private synthetic lambda$copySplashScreenView$2(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->onAppSplashScreenViewRemoved(IZ)V

    return-void
.end method

.method private synthetic lambda$copySplashScreenView$3(ILandroid/os/Bundle;)V
    .registers 4

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/startingsurface/b;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/startingsurface/b;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;I)V

    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private onAppSplashScreenViewRemoved(IZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz p0, :cond_33

    if-eqz p2, :cond_19

    const-string p0, "Server cleaned up"

    goto :goto_1b

    :cond_19
    const-string p0, "App removed"

    :goto_1b
    int-to-long p1, p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x784558a6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, p0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method

.method private removeWindowInner(Landroid/view/View;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->requestTopUi(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_12

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_30

    :catch_18
    move-exception p0

    const-string/jumbo p1, "removeWindowInner exception: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShellStartingWindow"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method private saveSplashScreenRecord(Landroid/os/IBinder;ILandroid/view/View;I)V
    .registers 6

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    return-void
.end method


# virtual methods
.method public addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;I)V
    .registers 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    iget-object v7, v10, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v10, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_f
    if-eqz v1, :cond_104

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_17

    goto/16 :goto_104

    :cond_17
    iget v2, v10, Landroid/window/StartingWindowInfo;->g:I

    invoke-virtual {v9, v2, v1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->getSplashScreenTheme(ILandroid/content/pm/ActivityInfo;)I

    move-result v2

    iget-object v3, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    iget-object v4, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v3, v10, v2, v0, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_28

    return-void

    :cond_28
    iget-object v2, v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-virtual {v2, v11, v10, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->adjustSuggestedWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)I

    move-result v0

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x4

    if-ne v0, v12, :cond_35

    const/4 v1, -0x1

    goto :goto_36

    :cond_35
    const/4 v1, -0x3

    :goto_36
    move v5, v1

    iget-object v6, v10, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    move-object v1, v11

    move-object/from16 v2, p1

    move v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v14, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->getDisplay(I)Landroid/view/Display;

    move-result-object v15

    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;

    const/4 v7, 0x0

    invoke-direct {v8, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v1, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-virtual {v1, v11}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createViewContextWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    new-instance v5, Lcom/android/wm/shell/startingsurface/r;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v8

    move v4, v14

    move-object v12, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move-object v6, v11

    move-object/from16 v17, v12

    move-object v12, v7

    move v7, v0

    move-object v12, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/startingsurface/r;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->requestTopUi(Z)V

    iget-object v1, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    new-instance v5, Lcom/android/wm/shell/startingsurface/s;

    invoke-direct {v5, v12}, Lcom/android/wm/shell/startingsurface/s;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;)V

    new-instance v6, Lcom/android/wm/shell/startingsurface/t;

    invoke-direct {v6, v12}, Lcom/android/wm/shell/startingsurface/t;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;)V

    move-object v2, v11

    move v3, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContentView(Landroid/content/Context;ILandroid/window/StartingWindowInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :try_start_8f
    iget-object v3, v10, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v4, v16

    move-object v5, v15

    move-object v6, v13

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object v1, v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x2

    move-object/from16 v3, v17

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v1, v14}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    if-eqz v1, :cond_104

    invoke-virtual {v1, v11}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->parseAppSystemBarColor(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object v2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c4

    iget-object v0, v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-virtual {v0, v11, v10}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->handleWindowBarIfNeeded(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result v0

    if-eqz v0, :cond_104

    :cond_c4
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;

    invoke-direct {v0, v9, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/window/SplashScreenView;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)V

    invoke-virtual {v2, v0}, Landroid/window/SplashScreenView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_104

    :cond_cd
    invoke-virtual {v12}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v1

    if-eqz v1, :cond_de

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    :cond_de
    iget-object v0, v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    iget-object v1, v10, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->onWindowRemoved(Landroid/os/IBinder;)V
    :try_end_e5
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_e5} :catch_e6

    goto :goto_104

    :catch_e6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed creating starting window at taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShellStartingWindow"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    iget-object v1, v10, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->onWindowRemoved(Landroid/os/IBinder;)V

    :cond_104
    :goto_104
    return-void
.end method

.method public addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    const-string/jumbo v11, "view not successfully added to wm, removing view"

    const-string v12, "ShellStartingWindow"

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v14, 0x20

    const/4 v9, 0x1

    :try_start_14
    const-string v4, "addRootView"

    invoke-static {v14, v15, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0
    :try_end_20
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_14 .. :try_end_20} :catch_47
    .catchall {:try_start_14 .. :try_end_20} :catchall_44

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move v13, v9

    move v9, v0

    :try_start_28
    invoke-virtual/range {v4 .. v9}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    :try_end_2b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_28 .. :try_end_2b} :catch_42
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7b

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3f

    :goto_34
    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, v10, v13}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    :cond_3c
    const/16 v16, 0x0

    goto :goto_6e

    :cond_3f
    move/from16 v16, v13

    goto :goto_6e

    :catch_42
    move-exception v0

    goto :goto_49

    :catchall_44
    move-exception v0

    move v13, v9

    goto :goto_7c

    :catch_47
    move-exception v0

    move v13, v9

    :goto_49
    :try_start_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already running, starting window not displayed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_7b

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3c

    goto :goto_34

    :goto_6e
    if-eqz v16, :cond_7a

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v0, v2, v13}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(IZ)V

    move/from16 v4, p6

    invoke-direct {v1, v3, v2, v10, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->saveSplashScreenRecord(Landroid/os/IBinder;ILandroid/view/View;I)V

    :cond_7a
    return v16

    :catchall_7b
    move-exception v0

    :goto_7c
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_8d

    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v1, v10, v13}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    :cond_8d
    throw v0
.end method

.method public copySplashScreenView(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    move-result-object v0

    instance-of v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v2

    :goto_17
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->isCopyable()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-direct {v1, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/window/SplashScreenView;)V

    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/wm/shell/startingsurface/p;

    invoke-direct {v4, p0, p1}, Lcom/android/wm/shell/startingsurface/p;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;I)V

    invoke-direct {v3, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v1, v3}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->setClientCallback(Landroid/os/RemoteCallback;)V

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->onCopied()V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3f

    :cond_3e
    move-object v1, v2

    :goto_3f
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz p0, :cond_64

    int-to-long v3, p1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_4a

    move v5, p0

    goto :goto_4b

    :cond_4a
    move v5, v0

    :goto_4b
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x5e6a209a

    const/16 v8, 0xd

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, p0

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_64
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/app/ActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    return-void
.end method

.method public estimateTaskBackgroundColor(Landroid/app/TaskInfo;)I
    .registers 10

    const-string v0, "ShellStartingWindow"

    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/app/TaskInfo;->userId:I

    :try_start_c
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_17} :catch_54

    :try_start_17
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2c

    :cond_2b
    move v3, v2

    :goto_2c
    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->getSplashScreenTheme(ILandroid/content/pm/ActivityInfo;)I

    move-result v1

    invoke-virtual {v5}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v1, v3, :cond_39

    invoke-virtual {v5, v1}, Landroid/content/Context;->setTheme(I)V

    :cond_39
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-virtual {p0, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->estimateTaskBackgroundColor(Landroid/content/Context;)I

    move-result p0
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_3f} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3f} :catch_40

    return p0

    :catch_40
    move-exception p0

    const-string v1, "failed get starting window background color at taskId: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_54
    move-exception p0

    const-string v1, "Failed creating package context with package name "

    const-string v4, " for user "

    invoke-static {v1, v3, v4}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->onAppSplashScreenViewRemoved(IZ)V

    return-void
.end method
