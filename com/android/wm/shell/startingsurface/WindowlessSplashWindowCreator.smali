.class Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;
.super Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;
    }
.end annotation


# instance fields
.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method


# virtual methods
.method public addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/view/SurfaceControl;)V
    .registers 15

    iget-object v0, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p1, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_7

    goto :goto_9

    :cond_7
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_9
    if-eqz v1, :cond_ac

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_11

    goto/16 :goto_ac

    :cond_11
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1c

    return-void

    :cond_1c
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_29

    return-void

    :cond_29
    new-instance v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v3, v4, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    const-string v4, "WindowlessSplashWindowCreator"

    invoke-direct {p2, v2, v1, v3, v4}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    const-string v1, "Windowless Splash "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    const/4 v10, -0x3

    new-instance v11, Landroid/os/Binder;

    invoke-direct {v11}, Landroid/os/Binder;-><init>()V

    move-object v6, v2

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_6c

    goto :goto_75

    :cond_6c
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :goto_75
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v7, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createViewContextWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v5, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v10

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-virtual {v1, v2, p1, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->makeSimpleSplashScreenContentView(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)Landroid/window/SplashScreenView;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;

    iget-object v9, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;I)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    iget-object p0, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    iget-object p1, p1, Landroid/window/StartingWindowInfo;->l:Landroid/window/IWindowlessStartingSurfaceCallback;

    if-eqz p1, :cond_ac

    :try_start_a9
    invoke-interface {p1, p0}, Landroid/window/IWindowlessStartingSurfaceCallback;->onSurfaceAdded(Landroid/view/SurfaceControl;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ac} :catch_ac

    :catch_ac
    :cond_ac
    :goto_ac
    return-void
.end method
