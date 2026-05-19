.class public Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;,
        Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TvPipMenuView"


# instance fields
.field private final mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field private final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowElevation:I

.field private final mArrowLeft:Landroid/widget/ImageView;

.field private final mArrowRight:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private final mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

.field private mCurrentMenuMode:I
    .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
    .end annotation
.end field

.field private final mCurrentPipBounds:Landroid/graphics/Rect;

.field private mCurrentPipGravity:I

.field private final mDimLayer:Landroid/view/View;

.field private final mEduTextContainer:Landroid/view/ViewGroup;

.field private final mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

.field private final mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMenuFrameView:Landroid/view/View;

.field private final mPipBackground:Landroid/view/View;

.field private final mPipFrameView:Landroid/view/View;

.field private final mPipMenuBorderWidth:I

.field private final mPipMenuFadeAnimationDuration:I

.field private final mPipMenuOuterSpace:I

.field private final mPipView:Landroid/view/View;

.field private final mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

.field private final mResizeAnimationDuration:I

.field private final mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    sget v0, Lcom/android/wm/shell/R$layout;->tv_pip_menu:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    const-class p3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_action_buttons:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->getActionsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    invoke-virtual {p4, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->addListener(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;)V

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_frame:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_border:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_background:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_dim_layer:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_up:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_right:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_down:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_left:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_done_button:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    sget p3, Lcom/android/wm/shell/R$integer;->tv_window_menu_fade_animation_duration:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_outer_space:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_border_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_arrow_elevation:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initMoveArrows()V

    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_edu_text_container:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$scrollToFirstAction$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)Landroid/graphics/Path;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->createArrowPath(I)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Lcom/android/internal/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method private animateAlphaTo(FLandroid/view/View;)V
    .registers 6

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    goto :goto_1b

    :cond_19
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wm/shell/pip/tv/h;-><init>(FLandroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wm/shell/pip/tv/h;-><init>(FLandroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic b(FLandroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$animateAlphaTo$1(FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(FLandroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$animateAlphaTo$2(FLandroid/view/View;)V

    return-void
.end method

.method private checkGravity(II)Z
    .registers 3

    and-int p0, p1, p2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private createArrowPath(I)Landroid/graphics/Path;
    .registers 4

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/tv/TvPipMenuView;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$setArrowA11yEnabled$4(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$showMovementHints$3(Landroid/view/View;)V

    return-void
.end method

.method private hideAllUserControls()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7bc1b495

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method private initArrow(Landroid/view/View;Landroid/view/ViewOutlineProvider;Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float p2, p4

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private initMoveArrows()V
    .registers 5

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_menu_arrow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->createArrowPath(I)Landroid/graphics/Path;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v3, Landroid/graphics/drawable/shapes/PathShape;

    int-to-float v0, v0

    invoke-direct {v3, v1, v0, v0}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->tv_pip_menu_arrow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Landroid/view/ViewOutlineProvider;Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    const/16 v3, 0x5a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Landroid/view/ViewOutlineProvider;Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    const/16 v3, 0xb4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Landroid/view/ViewOutlineProvider;Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/16 v3, 0x10e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Landroid/view/ViewOutlineProvider;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private static synthetic lambda$animateAlphaTo$1(FLandroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$animateAlphaTo$2(FLandroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_a

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$scrollToFirstAction$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusButton(I)Z

    return-void
.end method

.method private synthetic lambda$setArrowA11yEnabled$4(ILandroid/view/View;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onPipMovement(I)Z

    return-void
.end method

.method private synthetic lambda$showMovementHints$3(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onExitMoveMode()Z

    return-void
.end method

.method private refocusButton(I)Z
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    const-string v0, "TvPipMenuView"

    int-to-long v3, p1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x2154b64d

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2c
    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1
.end method

.method private scrollToFirstAction()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setArrowA11yEnabled(Landroid/view/View;ZI)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_d

    new-instance p2, Lcom/android/launcher/guide/side/a;

    invoke-direct {p2, p0, p3}, Lcom/android/launcher/guide/side/a;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method private setFrameHighlighted(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private setMenuButtonsVisible(Z)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_1e

    const-string v0, "TvPipMenuView"

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x7c915f4c

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
    if-eqz p1, :cond_23

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method private showAllActionsMenu(Z)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    const-string v0, "TvPipMenuView"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x645b979c

    const/16 v5, 0xc

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    if-eqz p1, :cond_23

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->scrollToFirstAction()V

    :cond_23
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-ne p1, v1, :cond_28

    return-void

    :cond_28
    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    const/high16 p1, 0x3f800000  # 1.0f

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-ne p1, v2, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->getFirstIndexOfAction(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusButton(I)Z

    :cond_4a
    return-void
.end method

.method private showMoveMenu()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x508b9a52

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-ne v0, v2, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    return-void
.end method

.method private updatePipFrameBounds()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2f
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4c
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5d
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onBackPress()V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    const/4 v3, 0x0

    if-eq v0, v2, :cond_43

    packed-switch v0, :pswitch_data_5a

    goto :goto_54

    :pswitch_2e  #0x13, 0x14, 0x15, 0x16
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onPipMovement(I)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    move v1, v3

    :cond_42
    :goto_42
    return v1

    :cond_43
    :pswitch_43  #0x17
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onExitMoveMode()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    move v1, v3

    :cond_53
    :goto_53
    return v1

    :cond_54
    :goto_54
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_5a
    .packed-switch 0x13
        :pswitch_2e  #00000013
        :pswitch_2e  #00000014
        :pswitch_2e  #00000015
        :pswitch_2e  #00000016
        :pswitch_43  #00000017
    .end packed-switch
.end method

.method public getPipMenuContainerBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    neg-int v1, p1

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->getEduTextDrawerHeight()I

    move-result p0

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public hideMovementHints()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x5574c8b0

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-eq v0, v1, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method public onActionsChanged(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    invoke-virtual {v0, p3, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    if-lez p1, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_17

    :cond_e
    if-gez p1, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    add-int/2addr p3, p2

    neg-int p1, p1

    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onCloseEduTextAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onCloseEduTextAnimationStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onCloseEduText()V

    return-void
.end method

.method public onPipTransitionFinished(Z)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x6e93c7d4

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->init()V

    :cond_39
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v0, v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-ne p1, v4, :cond_73

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/2addr p0, v4

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_73
    return-void
.end method

.method public onPipTransitionToTargetBoundsStarted(Landroid/graphics/Rect;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x2

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/wm/shell/pip/PipUtils;->aspectRatioChanged(FF)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/2addr v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, p1, :cond_51

    move p1, v3

    goto :goto_52

    :cond_51
    move p1, v2

    :goto_52
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_5c

    move v0, v3

    goto :goto_5d

    :cond_5c
    move v0, v2

    :goto_5d
    if-eq p1, v0, :cond_61

    move v0, v3

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v4, :cond_7d

    const-string v4, "TvPipMenuView"

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0xe1e635f

    const/16 v7, 0xc

    const/4 v8, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7d
    if-nez v0, :cond_80

    return-void

    :cond_80
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    if-ne v0, v1, :cond_9d

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/2addr p0, v1

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_a2

    :cond_9d
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    :goto_a2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onPipWindowFocusChanged(Z)V

    return-void
.end method

.method public setPipBounds(Landroid/graphics/Rect;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2b

    const-string v0, "TvPipMenuView"

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x185d60ca

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updatePipFrameBounds()V

    return-void
.end method

.method public setPipGravity(I)V
    .registers 3

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    :cond_a
    return-void
.end method

.method public showMovementHints()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const-string v0, "TvPipMenuView"

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x524dfba6

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object v2, v6, v0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    const/16 v2, 0x50

    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v3

    :goto_32
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    const/16 v4, 0x30

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v2

    goto :goto_44

    :cond_43
    move v0, v3

    :goto_44
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    const/4 v4, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v3

    :goto_55
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    if-eqz v0, :cond_65

    move v0, v2

    goto :goto_66

    :cond_65
    move v0, v3

    :goto_66
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/16 v5, 0x13

    invoke-direct {p0, v4, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;ZI)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    const/16 v5, 0x14

    invoke-direct {p0, v4, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;ZI)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    const/16 v5, 0x15

    invoke-direct {p0, v4, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;ZI)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    const/16 v5, 0x16

    invoke-direct {p0, v4, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;ZI)V

    if-eqz v0, :cond_90

    goto :goto_91

    :cond_90
    move v2, v3

    :goto_91
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    new-instance v1, Lcom/android/common/util/c1;

    invoke-direct {v1, p0}, Lcom/android/common/util/c1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestAccessibilityFocus()Z

    :cond_b1
    return-void
.end method

.method public transitionToMenuMode(IZ)V
    .registers 4

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showAllActionsMenu(Z)V

    goto :goto_2c

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown TV PiP menu mode: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMoveMenu()V

    goto :goto_2c

    :cond_29
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideAllUserControls()V

    :goto_2c
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    return-void
.end method
