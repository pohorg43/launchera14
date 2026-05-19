.class abstract Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ShellStartingWindow"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

.field private mSysuiProxy:Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getSplashScreenTheme(ILandroid/content/pm/ActivityInfo;)I
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_10

    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result p1

    goto :goto_10

    :cond_e
    sget p1, Lcom/android/internal/R$style;->Theme_DeviceDefault_DayNight:I

    :goto_10
    return p1
.end method

.method public requestTopUi(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;

    if-eqz p0, :cond_9

    const-string v0, "ShellStartingWindow"

    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;->requestTopUi(ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setSysuiProxy(Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;

    return-void
.end method
