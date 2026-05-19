.class public Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;,
        Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_MENU:Ljava/lang/String; = "com.android.wm.shell.splitscreen.SHOW_MENU"

.field private static final SYSTEMUI_PERMISSION:Ljava/lang/String; = "com.android.systemui.permission.SELF"

.field private static final TAG:Ljava/lang/String; = "TvSplitMenuController"


# instance fields
.field private final mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

.field private final mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTvButtonFadeAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->tv_window_menu_fade_animation_duration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mTvButtonFadeAnimationDuration:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->tv_split_menu_view:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->setListener(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->lambda$applyMenuVisibility$0(F)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    return-void
.end method

.method private applyMenuVisibility(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mTvButtonFadeAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/tv/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/tv/a;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;FI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/tv/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/tv/a;-><init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;FI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->lambda$applyMenuVisibility$1(F)V

    return-void
.end method

.method private synthetic lambda$applyMenuVisibility$0(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$applyMenuVisibility$1(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private setMenuFocus(Z)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_33

    :catch_11
    move-exception p0

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p1, :cond_33

    sget-object p1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0xc22a39

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "%s: Unable to update focus, %s"

    invoke-static {v0, v1, v3, p0, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private setMenuVisibility(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->applyMenuVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuFocus(Z)V

    return-void
.end method


# virtual methods
.method public addSplitMenuViewToSystemWindows()V
    .registers 8

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x7f2

    const/16 v4, 0x10

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x20000040

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v6, v1, v1}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method public onBackPress()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    return-void
.end method

.method public onCloseStage(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;->exitStage(I)V

    return-void
.end method

.method public onFocusStage(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;->grantFocusToStage(I)V

    return-void
.end method

.method public onSwapPress()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;->swapStages()V

    return-void
.end method

.method public registerBroadcastReceiver()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->register()V

    return-void
.end method

.method public removeSplitMenuViewFromSystemWindows()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->unregister()V

    return-void
.end method
