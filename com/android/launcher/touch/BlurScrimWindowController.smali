.class public Lcom/android/launcher/touch/BlurScrimWindowController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurScrimWindowController"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mBinder:Landroid/os/Binder;

.field public mIsLevelAWindowAttach:Z

.field public mIsWindaowAttach:Z

.field private mLauncher:Landroid/content/Context;

.field private mLayout:Lcom/android/launcher3/InsettableFrameLayout;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private isBlurAllowed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    instance-of v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz v0, :cond_27

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->detach()V

    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsLevelAWindowAttach:Z

    if-nez v0, :cond_16

    iput-boolean v1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsLevelAWindowAttach:Z

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->isBlurAllowed()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const v6, -0x7fffffc8

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x190

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "LauncherBlurScrim"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz p1, :cond_61

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mView:Landroid/view/View;

    :cond_61
    :try_start_61
    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v3, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v3, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7a} :catch_7b

    goto :goto_83

    :catch_7b
    move-exception p0

    const-string p1, "Add  Blur window error: "

    const-string v0, "BlurScrimWindowController"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_83
    return-void
.end method

.method public blurBackground(I)V
    .registers 5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsLevelAWindowAttach:Z

    if-eqz v0, :cond_1f

    int-to-float p1, p1

    const/4 v0, 0x0

    const/high16 v1, 0x43700000  # 240.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    return-void

    :cond_1f
    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    const-string v1, "BlurScrimWindowController"

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_66

    :cond_2e
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_60

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurBackground: radius:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_65

    :cond_60
    const-string p0, "blurBackground error "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return-void

    :cond_66
    :goto_66
    const-string p0, "blurBackground: getViewRootImpl null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public detach()V
    .registers 5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsLevelAWindowAttach:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iput-boolean v1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsLevelAWindowAttach:Z

    return-void

    :cond_1b
    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v0, "BlurScrimWindowController"

    const-string v2, "detach: "

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2b
    iget-object v2, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v2

    const-string v3, "Add  Blur window error: "

    invoke-static {v3, v2, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_39
    :goto_39
    iput-boolean v1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    return-void
.end method

.method public setScrimAlpha(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setScrimBackground(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
