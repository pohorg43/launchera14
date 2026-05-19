.class public final Lcom/android/launcher/wallpaper/WallpaperLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;,
        Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;,
        Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

.field private static final DEBUG:Z

.field private static final DELAY_TO_SCREENSHOT_WALLPAPER:J = 0x5dcL

.field private static final ENSURE_DELAY:J = 0x7d0L

.field private static final LARGE_AND_SMALL_SCREEN_THRESHOLD_IN_FOLD_DEVICE:D = 1.5

.field private static final LOAD_WALLPAPER_RETRY_INTERVAL:J = 0x14L

.field public static final SAMPLE_SIZE:I = 0x4

.field public static final SCREENSHOT_DELAY_MILLIS:J = 0xbb8L

.field public static final SETTINGS_WALLPAPER_LAYER:Ljava/lang/String; = "LAYER_WALLPAPER"

.field private static final TAG:Ljava/lang/String; = "WallpaperLoader"


# instance fields
.field private final mDetermineToLoadWallpaperRunnable$delegate:Lh4/f;

.field private mIsInteractionWallpaper:Z

.field private mIsLiveWallpaper:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLoadWallpaperRunnable$delegate:Lh4/f;

.field private mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadSuccessImp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mDetermineToLoadWallpaperRunnable$delegate:Lh4/f;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperLoader$mLoadWallpaperRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mLoadWallpaperRunnable$2;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperRunnable$delegate:Lh4/f;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/oplus/util/OplusExecutors;->WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-string v0, "WALLPAPER_MANAGER_EXECUTOR.handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader;->loadWallpaperBitmap$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final synthetic access$getLauncher(Lcom/android/launcher/wallpaper/WallpaperLoader;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadWallpaperBitmap(Lcom/android/launcher/wallpaper/WallpaperLoader;Lcom/android/launcher/Launcher;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->loadWallpaperBitmap(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper$lambda$0(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V

    return-void
.end method

.method private static final determineToLoadWallpaper$lambda$0(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V
    .registers 5

    const-string v0, "$cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWallpaperBrightness onGlobalLayout , cellLayout2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Wallpapers"

    const-string v1, "WallpaperLoader"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    return-void
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private final getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mDetermineToLoadWallpaperRunnable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperRunnable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    return-object p0
.end method

.method public static final isFlipDeviceClosed(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final loadWallpaperBitmap(Lcom/android/launcher/Launcher;Z)V
    .registers 14

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v4

    :goto_1e
    const-string v5, "com.wx.desktop.wallpaper.LiveWallpaperService"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsInteractionWallpaper:Z

    if-eqz p2, :cond_2b

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    :cond_2b
    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    const-class v0, Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-static {p2, v0}, Lcom/android/launcher/wallpaper/WallpaperBitmapManager;->notifyWallpaperChanged(ZLjava/lang/Class;)V

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    const-string v0, "Wallpapers"

    const-string v1, "WallpaperLoader"

    if-eqz p2, :cond_45

    const-string p2, "initWallpaperInfo -- mIsLiveWallpaper = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    invoke-static {p2, v5, v0, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    const-string p0, "loadWallpaperBitmap is not allowed running in main thread"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-virtual {p2, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_62

    return-void

    :cond_62
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    if-eqz v5, :cond_73

    const v4, 0x3e4ccccd  # 0.2f

    invoke-static {p1, v4}, Lcom/android/launcher/wallpaper/WallpaperUtil;->screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_84

    :cond_73
    const-string v5, "loadWallpaperBitmap: creat bitmap from static wallpaper"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x4

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v5, v4}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_84
    iput-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v4, "loadWallpaperBitmap result, "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_a3

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_16a

    :cond_a3
    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsInteractionWallpaper:Z

    if-eqz v5, :cond_e4

    move-object v5, v4

    check-cast v5, Landroid/graphics/Bitmap;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v6, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v3, v3, v4, v6}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "averageValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x6c

    if-gt v4, v5, :cond_e4

    sget-object v4, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher/wallpaper/b;

    invoke-direct {v5, p2, p1}, Lcom/android/launcher/wallpaper/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e4
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_159

    iget-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000  # 1.0f

    cmpg-float v7, v6, v7

    if-nez v7, :cond_11f

    move v7, v2

    goto :goto_120

    :cond_11f
    move v7, v3

    :goto_120
    if-nez v7, :cond_159

    float-to-double v7, v6

    const-wide/high16 v9, 0x3ff8000000000000L  # 1.5

    cmpl-double v7, v7, v9

    if-lez v7, :cond_12a

    move v3, v2

    :cond_12a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v7

    if-eqz v3, :cond_132

    if-eqz v7, :cond_136

    :cond_132
    if-nez v3, :cond_159

    if-eqz v7, :cond_159

    :cond_136
    const-string p1, "loadWallpaperBitmap abort, for bitmap fold state: "

    const-string p2, " and real fold state: "

    const-string v8, " are not in a consistent state， factor "

    invoke-static {p1, v3, p2, v7, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", max "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  min "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v5, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_159
    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string/jumbo v1, "wallpaperBitmap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/Bitmap;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    invoke-interface {v0, p2, p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;->wallpaperLoadSuccess(Landroid/graphics/Bitmap;ZLcom/android/launcher/Launcher;)V

    :goto_16a
    return-void
.end method

.method private static final loadWallpaperBitmap$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "$wallpaperBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3e4ccccd  # 0.2f

    invoke-static {p1, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final startLoadWallpaper(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->setNeedRelease(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->run()V

    :goto_28
    return-void
.end method


# virtual methods
.method public final addOnColorsChangedListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WallpaperLoader"

    const-string v1, "addOnColorsChangedListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final determineToLoadWallpaper(Z)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const-string v1, "WallpaperLoader"

    const-string v2, "Wallpapers"

    if-nez v0, :cond_1a

    const-string p0, "initWallpaperBrightness failed,  mLauncher is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    if-nez v3, :cond_26

    const-string p0, "initWallpaperBrightness failed ,workspace is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    if-gez v4, :cond_32

    const-string p0, "initWallpaperBrightness index <0"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_32
    invoke-virtual {v3, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4a

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLl4/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void

    :cond_4a
    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    if-eqz v0, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWallpaperBrightness , cellLayout1 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", parent = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v0

    if-lez v0, :cond_85

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    if-lez v0, :cond_85

    const-string v0, "initWallpaperBrightness no need to wait"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader;->startLoadWallpaper(Z)V

    goto :goto_8d

    :cond_85
    new-instance v0, Lcom/android/launcher/wallpaper/a;

    invoke-direct {v0, v3, p0, p1}, Lcom/android/launcher/wallpaper/a;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/OplusCellLayout;->setOnLayoutFinishListener(Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;)V

    :goto_8d
    return-void
.end method

.method public final ensureLoadWallpaper()V
    .registers 4

    const-string v0, "Wallpapers"

    const-string v1, "WallpaperLoader"

    const-string v2, "ensureLoadWallpaper"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final isInteractionWallpaper()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsInteractionWallpaper:Z

    return p0
.end method

.method public final isLiveWallpaper()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    return p0
.end method

.method public onDestroy()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->reloadWallpaper(Z)V

    return-void
.end method

.method public final reloadWallpaper(Z)V
    .registers 5

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadWallpaper, canReload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reloadForResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Wallpapers"

    const-string v2, "WallpaperLoader"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_59

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_59

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_59
    return-void
.end method

.method public final removeColorsChangeListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "WallpaperLoader"

    const-string/jumbo v0, "removeColorsChangeListener"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    return-void
.end method
