.class public Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;
    }
.end annotation


# static fields
.field private static final ENLARGE_FOREGROUND_ICON_THRESHOLD:F = 0.44444445f

.field public static final MAX_ANIMATION_DURATION:J = 0x1f4L

.field public static final MINIMAL_ANIMATION_DURATION:J = 0x190L

.field private static final NO_BACKGROUND_SCALE:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "ShellStartingWindow"

.field public static final TIME_WINDOW_DURATION:J = 0x64L

.field private static mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;


# instance fields
.field private mBrandingImageHeight:I

.field private mBrandingImageWidth:I

.field public final mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultIconSize:I

.field private final mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

.field private mIconSize:I

.field private mLastPackageContextConfigHash:I

.field private mMainWindowShiftLength:I

.field private final mSplashscreenWorkerHandler:Landroid/os/Handler;

.field private final mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;-><init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    new-instance p2, Landroid/os/HandlerThread;

    const-string/jumbo p3, "wmshell.splashworker"

    const/16 v0, -0xa

    invoke-direct {p2, p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    invoke-direct {p3, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    return-void
.end method

.method public static synthetic a(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$getWindowAttrs$5(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    return p0
.end method

.method public static synthetic access$1100()Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    return p0
.end method

.method public static synthetic access$800(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->isRgbSimilarInHsv(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    return p0
.end method

.method public static synthetic b(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$getWindowAttrs$6(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$applyExitAnimation$8(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V

    return-void
.end method

.method public static createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;
    .registers 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    iget-object v2, v0, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_d
    move-object v3, v0

    if-eqz v3, :cond_12f

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_16

    goto/16 :goto_12f

    :cond_16
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_51

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v10, v5

    move/from16 v12, p3

    int-to-long v12, v12

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v0, v15, v9

    aput-object v6, v15, v8

    const/4 v0, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v0

    const/4 v0, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v0

    const v0, 0x2f4fb13a

    const/16 v6, 0x50

    const/4 v10, 0x0

    invoke-static {v14, v0, v6, v10, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    :goto_52
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_5b

    return-object v10

    :cond_5b
    if-nez v4, :cond_60

    move-object/from16 v0, p0

    goto :goto_66

    :cond_60
    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_66
    if-nez v0, :cond_69

    return-object v10

    :cond_69
    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    const-string v6, "ShellStartingWindow"

    if-eq v1, v4, :cond_ad

    :try_start_71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_7e

    const-string v0, "Failed setTheme due to resources is null"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_7e
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v10, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v0, v4, v7, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_8d} :catch_8e

    goto :goto_ad

    :catch_8e
    move-exception v0

    const-string v1, "Failed creating package context with package name "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_129

    :cond_ad
    :goto_ad
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_12e

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v3, :cond_d5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x7982a749

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v9

    const/4 v3, 0x0

    invoke-static {v4, v7, v9, v3, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d6

    :cond_d5
    const/4 v3, 0x0

    :goto_d6
    invoke-virtual {v0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-nez v7, :cond_e6

    const-string v0, "Failed setTheme due to resources is null by overrideContext"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_e6
    invoke-virtual {v4, v1}, Landroid/content/Context;->setTheme(I)V

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/android/internal/R$styleable;->Window_windowBackground:I

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_12b

    :try_start_f7
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_12b

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_112

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x24eb32c0  # 1.0200098E-16f

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    const/4 v0, 0x0

    invoke-static {v2, v3, v9, v0, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_112
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f7 .. :try_end_112} :catch_114

    :cond_112
    move-object v0, v4

    goto :goto_12b

    :catch_114
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed creating starting window for overrideConfig at taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_129
    const/4 v0, 0x0

    return-object v0

    :cond_12b
    :goto_12b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12e
    return-object v0

    :cond_12f
    :goto_12f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 11

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object p4, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p0, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p4

    sget v2, Lcom/android/internal/R$styleable;->Window_windowShowWallpaper:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_21

    const v2, 0x1110100

    goto :goto_24

    :cond_21
    const v2, 0x1010100

    :goto_24
    const/4 v3, 0x4

    const/high16 v4, -0x80000000

    if-ne p2, v3, :cond_41

    sget p2, Lcom/android/internal/R$styleable;->Window_windowDrawsSystemBarBackgrounds:I

    invoke-virtual {p4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_41

    sget-object p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->isExceptionListApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p2

    if-nez p2, :cond_41

    sget-object p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p2

    if-eqz p2, :cond_42

    :cond_41
    or-int/2addr v2, v4

    :cond_42
    sget p2, Lcom/android/internal/R$styleable;->Window_windowLayoutInDisplayCutoutMode:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p4, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget p2, Lcom/android/internal/R$styleable;->Window_windowAnimationStyle:I

    invoke-virtual {p4, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p1, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz p4, :cond_5e

    goto :goto_60

    :cond_5e
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_60
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p2, :cond_6b

    iget-boolean p1, p1, Landroid/window/StartingWindowInfo;->h:Z

    if-eqz p1, :cond_6b

    const/high16 p1, 0x80000

    or-int/2addr v2, p1

    :cond_6b
    const p1, 0x20018

    or-int/2addr p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object p1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result p0

    if-nez p0, :cond_91

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p0, p0, 0x80

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Splash Screen "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static synthetic d(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$getWindowAttrs$4(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$makeSplashScreenContentView$3(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->passFilterRatio()F

    move-result p0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1c

    const-string p0, "ShellStartingWindow"

    const-string v0, "Window background is translucent, fill background with black color"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    return p0

    :cond_1c
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$getWindowAttrs$7(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$makeSplashScreenContentView$2(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method private getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getWindowColor(Ljava/lang/String;IIILjava/util/function/IntSupplier;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    move-result-object p0

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;->mBgColor:I

    return p0
.end method

.method public static getShowingDuration(JJ)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    cmp-long v0, p0, p2

    if-gtz v0, :cond_5

    return-wide p2

    :cond_5
    const-wide/16 v0, 0x1f4

    cmp-long v2, p2, v0

    if-gez v2, :cond_18

    cmp-long p0, p0, v0

    const-wide/16 v2, 0x190

    if-gtz p0, :cond_17

    cmp-long p0, p2, v2

    if-gez p0, :cond_16

    goto :goto_17

    :cond_16
    return-wide v0

    :cond_17
    :goto_17
    return-wide v2

    :cond_18
    return-wide p2
.end method

.method public static getSystemBGColor()I
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "ShellStartingWindow"

    const-string v1, "System context does not exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x1000000

    return v0

    :cond_10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->splash_window_background_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V
    .registers 6

    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget v0, Lcom/android/internal/R$styleable;->Window_windowBackground:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    new-instance v0, Lcom/android/wm/shell/startingsurface/h;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/h;-><init>(Landroid/content/res/TypedArray;)V

    invoke-static {v0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    new-instance v0, Lcom/android/wm/shell/startingsurface/f;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/f;-><init>(Landroid/content/res/TypedArray;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/wm/shell/startingsurface/g;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/g;-><init>(Landroid/content/res/TypedArray;)V

    invoke-static {v0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/wm/shell/startingsurface/i;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/i;-><init>(Landroid/content/res/TypedArray;)V

    invoke-static {v0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWindowAttrs "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eqz p1, :cond_6e

    move v1, v2

    :cond_6e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string/jumbo p1, "window attributes color: %s, replace icon: %b"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShellStartingWindow"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic h(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$peekLegacySplashscreenContent$1(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$createContentView$0(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static isRgbSimilarInHsv(II)Z
    .registers 28

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->luminance(I)F

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->luminance(I)F

    move-result v4

    cmpl-float v5, v3, v4

    const v6, 0x3d4ccccd  # 0.05f

    if-lez v5, :cond_1b

    add-float/2addr v3, v6

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    goto :goto_1f

    :cond_1b
    add-float/2addr v4, v6

    add-float/2addr v3, v6

    div-float v3, v4, v3

    :goto_1f
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_4e

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    float-to-double v10, v3

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v13, -0x32dcc779

    const/16 v14, 0x20

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v4, v15, v8

    aput-object v9, v15, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v15, v7

    invoke-static {v12, v13, v14, v5, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    const/high16 v4, 0x40000000  # 2.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_55

    return v2

    :cond_55
    new-array v3, v6, [F

    new-array v4, v6, [F

    invoke-static {v0, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v0, v3, v8

    aget v1, v4, v8

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, -0xb4

    int-to-float v1, v0

    const/high16 v9, 0x43340000  # 180.0f

    div-float/2addr v1, v9

    float-to-double v9, v1

    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    aget v1, v3, v2

    aget v13, v4, v2

    sub-float/2addr v1, v13

    float-to-double v13, v1

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    aget v1, v3, v7

    aget v15, v4, v7

    sub-float/2addr v1, v15

    float-to-double v5, v1

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v11, v9, v13

    add-double/2addr v11, v5

    const-wide/high16 v16, 0x4008000000000000L  # 3.0

    div-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_11d

    int-to-long v0, v0

    aget v15, v3, v8

    move-object/from16 v17, v3

    float-to-double v2, v15

    aget v15, v4, v8

    move-wide/from16 v18, v9

    float-to-double v8, v15

    const/4 v10, 0x1

    aget v15, v17, v10

    move-wide/from16 v20, v8

    float-to-double v7, v15

    aget v9, v4, v10

    float-to-double v9, v9

    move-wide/from16 v22, v11

    const/4 v15, 0x2

    aget v11, v17, v15

    float-to-double v11, v11

    aget v4, v4, v15

    move-wide/from16 v24, v5

    float-to-double v4, v4

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/16 v15, 0xb

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v15, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v15, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v15, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v15, v3

    const/4 v0, 0x4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/4 v0, 0x5

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/4 v0, 0x6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/4 v0, 0x7

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/16 v0, 0x8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/16 v0, 0x9

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const/16 v0, 0xa

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v0

    const v0, -0x834c58f

    const v3, 0x2aaaa9

    const/4 v4, 0x0

    invoke-static {v6, v0, v3, v4, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_120

    :cond_11d
    move v1, v8

    move-wide/from16 v22, v11

    :goto_120
    const-wide v3, 0x3fb999999999999aL  # 0.1

    cmpg-double v0, v22, v3

    if-gez v0, :cond_12a

    goto :goto_12b

    :cond_12a
    move v2, v1

    :goto_12b
    return v2
.end method

.method private synthetic lambda$applyExitAnimation$8(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .registers 16

    new-instance v9, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;-><init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V

    invoke-virtual {v9}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->startAnimations()V

    return-void
.end method

.method private synthetic lambda$createContentView$0(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->notifyUIFirstWhenAddStartingWindow(ZZI)V

    const-string/jumbo v0, "makeSplashScreenContentView"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->makeSplashScreenContentView(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;)Landroid/window/SplashScreenView;

    move-result-object p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_31

    :catch_19
    move-exception p0

    const-string p1, "failed creating starting window content at taskId: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShellStartingWindow"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_31
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getWindowAttrs$4(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    sget v0, Lcom/android/internal/R$styleable;->Window_windowSplashScreenBackground:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getWindowAttrs$5(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    sget p1, Lcom/android/internal/R$styleable;->Window_windowSplashScreenAnimatedIcon:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getWindowAttrs$6(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    sget p1, Lcom/android/internal/R$styleable;->Window_windowSplashScreenBrandingImage:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getWindowAttrs$7(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    sget v0, Lcom/android/internal/R$styleable;->Window_windowSplashScreenIconBackgroundColor:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$makeSplashScreenContentView$2(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeSplashScreenContentView$3(Landroid/content/Context;)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->peekWindowBGColor(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$peekLegacySplashscreenContent$1(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    sget v0, Lcom/android/internal/R$styleable;->Window_windowSplashscreenContent:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private makeSplashScreenContentView(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;)Landroid/window/SplashScreenView;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/window/StartingWindowInfo;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Landroid/window/SplashScreenView;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-interface {v0, p2, v1}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->getWindowAttrsIfPresent(Landroid/window/StartingWindowInfo;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2c

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {p1, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->peekLegacySplashscreenContent(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iget-object v2, p2, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_32

    goto :goto_36

    :cond_32
    iget-object v2, p2, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_36
    if-eqz v1, :cond_42

    new-instance v3, Lcom/android/wm/shell/startingsurface/d;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/startingsurface/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I

    move-result v3

    goto :goto_4b

    :cond_42
    new-instance v3, Lcom/android/wm/shell/startingsurface/e;

    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/startingsurface/e;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getBGColorFromCache(Landroid/content/pm/ActivityInfo;Ljava/util/function/IntSupplier;)I

    move-result v3

    :goto_4b
    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->isSupportSplashScreenPreview(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result v4

    if-nez v4, :cond_59

    sget-boolean v4, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    if-nez v4, :cond_5b

    :cond_59
    if-ne p3, v0, :cond_63

    :cond_5b
    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, v3, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->getThemeBackgroundColor(Landroid/content/Context;ILandroid/window/StartingWindowInfo;)I

    move-result v3

    :cond_63
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setWindowBGColor(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->overlayDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->chooseStyle(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setUiThreadInitConsumer(Ljava/util/function/Consumer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setSystemApp(Z)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->isSupportSplashScreenPreview(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setSupportSplashScreenPreview(Z)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    iget p1, p2, Landroid/window/StartingWindowInfo;->f:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_98

    const/4 p1, 0x1

    goto :goto_99

    :cond_98
    const/4 p1, 0x0

    :goto_99
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setAllowHandleSolidColor(Z)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build()Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0
.end method

.method private static peekLegacySplashscreenContent(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;
    .registers 5

    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/startingsurface/j;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/startingsurface/j;-><init>(Landroid/content/res/TypedArray;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_24

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_24
    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    if-eqz p1, :cond_2d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static peekWindowBGColor(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I
    .registers 7

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "peekWindowBGColor"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v2, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    const-string v3, "ShellStartingWindow"

    if-eqz v2, :cond_16

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_37

    :cond_16
    iget v2, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_37

    :cond_1f
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window background does not exist, using "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    const-string/jumbo v2, "peekWindowBGColor mWindowBgColor:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mWindowBgResId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " estimatedWindowBGColor:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0
.end method

.method private static safeReturnAttrDefault(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "Get attribute fail, return default: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShellStartingWindow"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateDensity()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$dimen;->starting_surface_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$dimen;->starting_surface_default_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_exit_animation_window_shift_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    return-void
.end method


# virtual methods
.method public applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V
    .registers 16

    new-instance v7, Lcom/android/launcher3/anim/g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/g;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_16

    invoke-virtual {v7}, Lcom/android/launcher3/anim/g;->run()V

    return-void

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, p5

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object p0

    const-wide/16 p4, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide p6

    goto :goto_2d

    :cond_2c
    move-wide p6, p4

    :goto_2d
    invoke-static {p6, p7, p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getShowingDuration(JJ)J

    move-result-wide p6

    sub-long/2addr p6, p2

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz p0, :cond_49

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x1cc59ec6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p2, p3, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    cmp-long p0, p6, p4

    if-lez p0, :cond_51

    invoke-virtual {p1, v7, p6, p7}, Landroid/window/SplashScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_54

    :cond_51
    invoke-virtual {v7}, Lcom/android/launcher3/anim/g;->run()V

    :goto_54
    return-void
.end method

.method public createContentView(Landroid/content/Context;ILandroid/window/StartingWindowInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/window/StartingWindowInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SplashScreenView;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/launcher3/p0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/p0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createViewContextWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .registers 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public estimateTaskBackgroundColor(Landroid/content/Context;)I
    .registers 2

    new-instance p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>()V

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->peekWindowBGColor(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result p0

    return p0
.end method

.method public makeSimpleSplashScreenContentView(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)Landroid/window/SplashScreenView;
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->reset()V

    iget-object v0, p2, Landroid/window/StartingWindowInfo;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_d

    goto :goto_11

    :cond_d
    iget-object p2, p2, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_11
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->setWindowBGColor(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->chooseStyle(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build()Landroid/window/SplashScreenView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/SplashScreenView;->setNotCopyable()V

    return-object p0
.end method
