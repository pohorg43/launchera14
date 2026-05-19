.class Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplashWindowRecord"
.end annotation


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mCreateTime:J

.field private mDrawsSystemBarBackgrounds:Z

.field private final mRootView:Landroid/view/View;

.field private mSetSplashScreen:Z

.field private mSplashView:Landroid/window/SplashScreenView;

.field private final mSuggestType:I

.field private mSystemBarAppearance:I

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->lambda$removeIfPossible$0()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)Landroid/window/SplashScreenView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private synthetic lambda$removeIfPossible$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public clearSystemBarColor()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4b

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mDrawsSystemBarBackgrounds:Z

    if-eqz v1, :cond_29

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_31

    :cond_29
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_31
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public parseAppSystemBarColor(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/android/internal/R$styleable;->Window_windowDrawsSystemBarBackgrounds:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mDrawsSystemBarBackgrounds:Z

    sget v0, Lcom/android/internal/R$styleable;->Window_windowLightStatusBar:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    :cond_1d
    sget v0, Lcom/android/internal/R$styleable;->Window_windowLightNavigationBar:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    const-string p1, "ShellStartingWindow"

    const-string p2, "Found empty splash screen, remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-static {p1, p0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    return v1

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->clearSystemBarColor()V

    if-nez p2, :cond_48

    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_25

    goto :goto_48

    :cond_25
    iget-boolean p2, p1, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object v2, p2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    iget-object v4, p1, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    iget-object v5, p1, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    new-instance v6, Lcom/android/wm/shell/startingsurface/u;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/startingsurface/u;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;)V

    iget-wide v7, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    iget v9, p1, Landroid/window/StartingWindowRemovalInfo;->roundedCornerRadius:F

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V

    goto :goto_4f

    :cond_40
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-static {p1, p2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    goto :goto_4f

    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-static {p1, p2, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    :goto_4f
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;->onWindowRemoved(Landroid/os/IBinder;)V

    return v1
.end method

.method public setSplashScreenView(Landroid/window/SplashScreenView;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSetSplashScreen:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSetSplashScreen:Z

    return-void
.end method
