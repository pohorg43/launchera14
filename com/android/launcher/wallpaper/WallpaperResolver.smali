.class public final Lcom/android/launcher/wallpaper/WallpaperResolver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

.field private static final FORBID_WALLPAPER_COLOR:Z = true

.field private static final HSLARRYSIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WallpaperResolver"

.field private static final TIME_OFFSET:J = 0xaL

.field private static final WALLPAPER_SATURATION:D = 0.2

.field private static final WALLPAPER_UPDATE_SHORT_TIME:I = 0x3e8

.field public static sIsAllAppsBright:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sIsWorkspaceBright:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static sIsWorkspaceEditModeBright:Z

.field public static sWallpaperChangedThemeColor:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sWallpaperPrimaryColor:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private currentTime:J

.field private mAllAppsBrightChanged:Z

.field private mIsChildrenModeBright:Z

.field private mIsLiveWallpaper:Z

.field private mIsNavigationBarBright:Z

.field private mIsStatusBarBright:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBarHeight:I

.field private mWallBitmapColors:Landroid/app/WallpaperColors;

.field private mWallBitmapValue:I

.field private mWorkspaceBrightChanged:Z

.field private final onWallpaperBrightnessChangedAtLittleTime:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->onWallpaperBrightnessChangedAtLittleTime:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mNavBarHeight:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveChildrenModeBrightness$lambda$4(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final synthetic access$getSIsWorkspaceEditModeBright$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceEditModeBright:Z

    return v0
.end method

.method public static final synthetic access$setSIsWorkspaceEditModeBright$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceEditModeBright:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveStatusBarBrightness$lambda$2(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->onWallpaperBrightnessChangedAtLittleTime$lambda$1(Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveNavigationBarBrightness$lambda$3(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->postBrightnessChanged$lambda$0(Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static final isWorkspaceEditModeBright()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v0

    return v0
.end method

.method public static final isWorkspaceWpBright()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    return v0
.end method

.method private static final onWallpaperBrightnessChangedAtLittleTime$lambda$1(Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->postBrightnessChanged$default(Lcom/android/launcher/wallpaper/WallpaperResolver;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic postBrightnessChanged$default(Lcom/android/launcher/wallpaper/WallpaperResolver;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x3e8

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->postBrightnessChanged(I)V

    return-void
.end method

.method private static final postBrightnessChanged$lambda$0(Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->onWallpaperBrightnessChanged()V

    :cond_f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private final resolveAllAppsBtForStatic(IF)V
    .registers 7

    const/16 p0, 0x5f

    if-lt p1, p0, :cond_12

    float-to-double v0, p2

    const-wide v2, 0x3fc999999999999aL  # 0.2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_12

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsAllAppsBright:Z

    goto :goto_17

    :cond_12
    if-ge p1, p0, :cond_17

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsAllAppsBright:Z

    :cond_17
    :goto_17
    return-void
.end method

.method private final resolveChildrenModeBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 9

    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRectOfExitChildrenModeIcon()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "WallpaperResolver"

    if-nez v0, :cond_19

    const-string p0, "calculateWallpaperBrightnessForExitChildrenModeIcon. The iconRect is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget v2, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p2, v2, v3, v4, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    const/16 v2, 0xc4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_3b

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    if-nez v5, :cond_3b

    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    :goto_39
    move v3, v4

    goto :goto_44

    :cond_3b
    if-ge v0, v2, :cond_44

    iget-boolean v2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    if-eqz v2, :cond_44

    iput-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    goto :goto_39

    :cond_44
    :goto_44
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveChildrenModeBrightness. wallpaperBitmap = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , iconAverageValue = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsChildrenModeBright = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", childrenModeBtChanged = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Wallpapers"

    invoke-static {p2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    if-eqz v3, :cond_85

    new-instance p0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_85
    return-void
.end method

.method private static final resolveChildrenModeBrightness$lambda$4(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onExitChildrenModeIconWallpaperBrightnessChanged()V

    return-void
.end method

.method private final resolveNavigationBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 9

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mNavBarHeight:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "navBarAverageValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperResolver"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc4

    const/4 v4, 0x1

    if-lt v0, v1, :cond_41

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    if-eqz v5, :cond_41

    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    :goto_3f
    move v3, v4

    goto :goto_4a

    :cond_41
    if-ge v0, v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    if-eqz v1, :cond_4a

    iput-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    goto :goto_3f

    :cond_4a
    :goto_4a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_81

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveNavigationBarBrightness. wallpaperBitmap = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , navBarAverageValue = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsNavigationBarBright = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mNavBarBtChanged = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Wallpapers"

    invoke-static {v0, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    if-eqz v3, :cond_91

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_91

    new-instance p2, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_91
    return-void
.end method

.method private static final resolveNavigationBarBrightness$lambda$3(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->setNavBarColor(Lcom/android/launcher/Launcher;ZZ)V

    return-void
.end method

.method private final resolveStatusBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v1, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000  # 5.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v0, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statusBarAverageValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WallpaperResolver"

    invoke-static {v3, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc4

    const/4 v4, 0x1

    if-lt v0, v1, :cond_38

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    if-nez v5, :cond_38

    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    :goto_36
    move v1, v4

    goto :goto_42

    :cond_38
    if-ge v0, v1, :cond_41

    iget-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    if-eqz v1, :cond_41

    iput-boolean v2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    goto :goto_36

    :cond_41
    move v1, v2

    :goto_42
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_79

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveStatusBarBrightness. wallpaperBitmap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , statusBarAverageValue = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsStatusBarBright = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", statusBarBtChanged = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Wallpapers"

    invoke-static {v0, v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_9d

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p2

    if-eqz p2, :cond_9d

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_95

    move v2, v4

    :cond_95
    if-eqz v2, :cond_9d

    const-string p0, "Don`t set StatusBar color according to wallpaper color on ALL_APPS"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9d
    if-eqz v1, :cond_a7

    new-instance p2, Landroidx/core/content/res/d;

    invoke-direct {p2, p1, p0}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a7
    return-void
.end method

.method private static final resolveStatusBarBrightness$lambda$2(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->setStatusBarColor(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method private final resolveWorkspaceBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;Z)V
    .registers 9

    invoke-static {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->calculateWallpaperColor(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "averageValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperResolver"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    if-eqz p3, :cond_32

    iget-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsLiveWallpaper:Z

    if-eqz v3, :cond_2f

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForLive(Lcom/android/launcher/Launcher;I)V

    goto :goto_32

    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :cond_32
    :goto_32
    invoke-direct {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceEditModeForStatic(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string/jumbo v3, "resolveWorkspaceBrightness. wallpaperBitmap = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", averageValue = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isThemeTextColorDefault = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsWorkspaceBright="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mWorkspaceBrightChanged="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    const-string v0, "Wallpapers"

    invoke-static {v3, p2, v0, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_7b
    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v1, p2, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->postBrightnessChanged$default(Lcom/android/launcher/wallpaper/WallpaperResolver;IILjava/lang/Object;)V

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/WallpaperResolver;->saveTextColorStateToSettings(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private final resolveWorkspaceBtForLive(Lcom/android/launcher/Launcher;I)V
    .registers 8

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    const/4 v1, 0x0

    const-string v2, "WallpaperResolver"

    const-string v3, "Wallpapers"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_40

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapColors:Landroid/app/WallpaperColors;

    if-nez v0, :cond_40

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/2addr p1, v4

    if-lez p1, :cond_26

    move v1, v4

    :cond_26
    invoke-direct {p0, v1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceBright(Z)V

    const-string p1, "Live wallpaper, mIsWorkspaceBright = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-static {p1, p2, v3, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_35
    const-string p1, "Live wallpaper colors==null"

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :goto_3d
    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    goto :goto_58

    :cond_40
    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapColors:Landroid/app/WallpaperColors;

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/2addr p1, v4

    if-lez p1, :cond_4c

    move v1, v4

    :cond_4c
    invoke-direct {p0, v1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceBright(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    if-nez p1, :cond_58

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :cond_58
    :goto_58
    const-string/jumbo p0, "resolveWorkspaceBtForLive sIsWorkspaceBright = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-static {p0, p1, v3, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final resolveWorkspaceBtForStatic(I)V
    .registers 3

    const/16 v0, 0xc4

    if-lt p1, v0, :cond_9

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceBright(Z)V

    goto :goto_f

    :cond_9
    if-ge p1, v0, :cond_f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceBright(Z)V

    :cond_f
    :goto_f
    return-void
.end method

.method private final resolveWorkspaceEditModeForStatic(I)V
    .registers 3

    const/16 v0, 0xc4

    if-lt p1, v0, :cond_9

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceEditModeBright(Z)V

    goto :goto_f

    :cond_9
    if-ge p1, v0, :cond_f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setIsWorkspaceEditModeBright(Z)V

    :cond_f
    :goto_f
    return-void
.end method

.method private final saveTextColorStateToSettings(Landroid/content/Context;ZZ)V
    .registers 7

    const-string p0, "Wallpapers"

    const-string v0, "WallpaperResolver"

    const-string/jumbo v1, "saveTextColorStateToSettings"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_74

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_text_color"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p3, :cond_41

    if-eqz p2, :cond_21

    const p2, 0x7f060761

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_28

    :cond_21
    const p2, 0x7f060760

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :goto_28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/wallpaper/ShadowCalculator;->isEnableShadowColor()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_56

    :cond_41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/false"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_56
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveTextColorStateToSettings -- str = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "launcher_text_appearance"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_74
    return-void
.end method

.method private final setIsWorkspaceBright(Z)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_23

    const-string/jumbo p0, "setIsWorkspaceBright from "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WallpaperResolver"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    sput-boolean p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    return-void
.end method

.method private final setIsWorkspaceEditModeBright(Z)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_23

    const-string/jumbo p0, "setIsWorkspaceEditModeBright from "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceEditModeBright:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WallpaperResolver"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    sput-boolean p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceEditModeBright:Z

    return-void
.end method


# virtual methods
.method public final getCurrentTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    return-wide v0
.end method

.method public final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final initTextThemeColor(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_5f

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v1

    if-ne v0, v1, :cond_12

    goto :goto_5f

    :cond_12
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "initWallpaperBright.  isThemeTextColorDefault = "

    const-string v2, " , sIsWorkspaceBright = "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sIsWorkspaceEditModeBright = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceEditModeBright:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sWallpaperChangedThemeColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , ThemeUtils.getThemeTextColor(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wallpapers"

    const-string v3, "WallpaperResolver"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v1

    sput v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    sget-boolean v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->saveTextColorStateToSettings(Landroid/content/Context;ZZ)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final isChildrenModeWpBright()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    return p0
.end method

.method public final isStatusBarWpBright()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    return p0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    return-void
.end method

.method public final postBrightnessChanged(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating$default(IILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-wide v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_38

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->onWallpaperBrightnessChangedAtLittleTime:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_28
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->onWallpaperBrightnessChangedAtLittleTime:Ljava/lang/Runnable;

    const-wide/16 v0, 0xb

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    :cond_38
    if-eqz v0, :cond_42

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final resolveWallpaperBrightness(Landroid/graphics/Bitmap;Z)V
    .registers 7

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "WallpaperResolver"

    const-string v2, "Wallpapers"

    if-nez v0, :cond_17

    const-string/jumbo p0, "resolveWallpaperBrightness. launcher is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsLiveWallpaper:Z

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo v3, "resolveWallpaperBrightness.  isThemeTextColorDefault = "

    invoke-static {v3, p2, v2, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;Z)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveStatusBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveNavigationBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveChildrenModeBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final resolveWallpaperColor(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrentTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->currentTime:J

    return-void
.end method

.method public final setWallBitValue(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    return-void
.end method

.method public final setWallpaperColors(Landroid/app/WallpaperColors;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapColors:Landroid/app/WallpaperColors;

    return-void
.end method
