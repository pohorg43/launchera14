.class public Lcom/android/wm/shell/pip/tv/TvPipMenuController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;,
        Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;,
        Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
    }
.end annotation


# static fields
.field private static final BACKGROUND_WINDOW_TITLE:Ljava/lang/String; = "PipBackgroundView"

.field public static final MODE_ALL_ACTIONS_MENU:I = 0x2

.field public static final MODE_MOVE_MENU:I = 0x1

.field public static final MODE_NO_MENU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TvPipMenuController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuMode:I
    .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
    .end annotation
.end field

.field private mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenuIsFocused:Z

.field private mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

.field private mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

.field private mPrevMenuMode:I
    .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
    .end annotation
.end field

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

.field private final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->lambda$onPipTransitionFinished$0(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private addPipMenuViewToSystemWindows(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p2, v1, v1}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method private attachPipBackgroundView()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setUpViewSurfaceZOrder(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    const-string v1, "PipBackgroundView"

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->addPipMenuViewToSystemWindows(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private attachPipMenu()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x740327a3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->detachPipMenu()V

    :cond_1c
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->attachPipBackgroundView()V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->attachPipMenuView()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_menu_edu_text_view_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->pip_menu_border_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    neg-int v2, v2

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setPipMenuPermanentDecorInsets(Landroid/graphics/Insets;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    neg-int v0, v0

    invoke-static {v1, v1, v1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setPipMenuTemporaryDecorInsets(Landroid/graphics/Insets;)V

    return-void
.end method

.method private attachPipMenuView()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_19

    const-string p0, "TvPipMenuController"

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x4b8c621

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setUpViewSurfaceZOrder(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const-string v1, "PipMenuView"

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->addPipMenuViewToSystemWindows(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->getPipMenuContainerBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private detachPipMenu()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    :cond_17
    return-void
.end method

.method public static getMenuModeString(I)Ljava/lang/String;
    .registers 2
    .param p0  # I
        .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
        .end annotation
    .end param

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "Unknown"

    return-object p0

    :cond_b
    const-string p0, "MODE_ALL_ACTIONS_MENU"

    return-object p0

    :cond_e
    const-string p0, "MODE_MOVE_MENU"

    return-object p0

    :cond_11
    const-string p0, "MODE_NO_MENU"

    return-object p0
.end method

.method private getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method private grantPipMenuFocus(Z)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "TvPipMenuController"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x7db28179

    const/16 v7, 0xc

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0, v6, v7, v5, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    :try_start_23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget-object v6, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v6, p0}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, v5, p0, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_4a

    :catch_33
    move-exception p0

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_4a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0xea90bd1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object p0, v2, v1

    invoke-static {p1, v0, v4, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private isMenuAttached()Z
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_18

    move p0, v1

    goto :goto_19

    :cond_18
    move p0, v2

    :goto_19
    if-nez p0, :cond_2e

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2e

    const-string v0, "TvPipMenuController"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x5b541edb

    const/4 v5, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return p0
.end method

.method private synthetic lambda$onPipTransitionFinished$0(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->onPipTransitionFinished(Z)V

    :cond_7
    return-void
.end method

.method private setUpViewSurfaceZOrder(Landroid/view/View;I)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private switchToMenuMode(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    return-void
.end method

.method private switchToMenuMode(IZ)V
    .registers 10
    .param p1  # I
        .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_33

    const-string p1, "TvPipMenuController"

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x684963e5

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    aput-object v1, v5, p1

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateUiOnNewMenuModeRequest(Z)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateDelegateOnNewMenuModeRequest()V

    return-void
.end method

.method private updateDelegateOnNewMenuModeRequest()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->onInMoveModeChanged()V

    :cond_1a
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->onMenuClosed()V

    :cond_23
    return-void
.end method

.method private updateUiOnNewMenuModeRequest(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    if-nez v1, :cond_9

    goto :goto_2a

    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setPipGravity(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->transitionToMenuMode(IZ)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->transitionToMenuMode(I)V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->grantPipMenuFocus(Z)V

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    if-eqz v0, :cond_a

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->attachPipMenu()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Delegate is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public closeMenu()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x36b65943

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(I)V

    return-void
.end method

.method public createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    return-object v0
.end method

.method public detach()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->detachPipMenu()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public getMenuModeString()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInAllActionsMode()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInMoveMode()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMenuOpen()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isMenuVisible()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
    .registers 13

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v0, 0x1

    const-string v1, "TvPipMenuController"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x6291ab78

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object p1, v7, v0

    const/4 p1, 0x2

    aput-object v4, v7, p1

    invoke-static {v5, v6, v3, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    if-nez p2, :cond_3f

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_3f

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x6f6ce73b

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v1, p2, v3

    invoke-static {p0, p1, v3, v2, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void

    :cond_40
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    move-result p1

    if-nez p1, :cond_47

    return-void

    :cond_47
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez p2, :cond_5e

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_5e
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p2, p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_7c

    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_7c
    new-instance p1, Landroid/window/SurfaceSyncGroup;

    const-string p4, "TvPip"

    invoke-direct {p1, p4}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p4

    invoke-virtual {p1, p4, v2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p4

    invoke-virtual {p1, p4, v2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void
.end method

.method public onBackPress()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    :cond_9
    return-void
.end method

.method public onCloseEduText()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setPipMenuTemporaryDecorInsets(Landroid/graphics/Insets;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->closeEduText()V

    return-void
.end method

.method public onExitMoveMode()Z
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    const-string v0, "TvPipMenuController"

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x13fa2744

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    invoke-direct {p0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(I)V

    :cond_2d
    if-ne v0, v1, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1
.end method

.method public onPipMovement(I)Z
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_20

    const-string v0, "TvPipMenuController"

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x1d201924

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->movePip(I)V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result p0

    return p0
.end method

.method public onPipTransitionFinished(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPipTransitionToTargetBoundsStarted(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->onPipTransitionToTargetBoundsStarted(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public onPipWindowFocusChanged(Z)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_1e

    const-string v0, "TvPipMenuController"

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x107836fb

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    :cond_2b
    return-void
.end method

.method public resizePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 10
    .param p1  # Landroid/view/SurfaceControl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const-string p1, "TvPipMenuController"

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x31c837a1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    invoke-static {v2, v3, v5, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    return-void

    :cond_27
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    move-result p1

    if-nez p1, :cond_2e

    return-void

    :cond_2e
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    if-nez p2, :cond_45

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_45
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2, p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Landroid/window/SurfaceSyncGroup;

    const-string v1, "TvPip"

    invoke-direct {p1, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void
.end method

.method public setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setDelegate(Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_1c

    const-string v0, "TvPipMenuController"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x27c5cf8d

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    if-nez v0, :cond_2d

    if-eqz p1, :cond_25

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    return-void

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The delegate must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The delegate has already been set and should not change."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTvPipActionsProvider(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    return-void
.end method

.method public showMenu()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x64c2cf9a

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    return-void
.end method

.method public showMovementMenu()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x56bca5f5

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(I)V

    return-void
.end method

.method public updateGravity(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setPipGravity(I)V

    return-void
.end method

.method public updateMenuBounds(Landroid/graphics/Rect;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_2b

    const-string v1, "TvPipMenuController"

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x3322e85a

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    const-string v6, "PipBackgroundView"

    invoke-interface {p0, v3, v6, v4, v5}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v5, "PipMenuView"

    invoke-interface {p0, v3, v5, v4, v0}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz p0, :cond_60

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setPipBounds(Landroid/graphics/Rect;)V

    :cond_60
    return-void
.end method
