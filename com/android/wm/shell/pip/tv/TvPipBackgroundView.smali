.class Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TvPipBackgroundView"


# instance fields
.field private final mBackgroundView:Landroid/view/View;

.field private mCurrentMenuMode:I
    .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
    .end annotation
.end field

.field private final mElevationAllActionsMenu:I

.field private final mElevationMoveMenu:I

.field private final mElevationNoMenu:I

.field private final mPipMenuFadeAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    sget v0, Lcom/android/wm/shell/R$layout;->tv_pip_menu_background:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->background_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mBackgroundView:Landroid/view/View;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$dimen;->pip_menu_elevation_no_menu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationNoMenu:I

    sget v0, Lcom/android/wm/shell/R$dimen;->pip_menu_elevation_move_menu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationMoveMenu:I

    sget v0, Lcom/android/wm/shell/R$dimen;->pip_menu_elevation_all_actions_menu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationAllActionsMenu:I

    sget v0, Lcom/android/wm/shell/R$integer;->tv_window_menu_fade_animation_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mPipMenuFadeAnimationDuration:I

    return-void
.end method


# virtual methods
.method public transitionToMenuMode(I)V
    .registers 12
    .param p1  # I
        .annotation build Lcom/android/wm/shell/pip/tv/TvPipMenuController$TvPipMenuMode;
        .end annotation
    .end param

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    const-string v0, "TvPipBackgroundView"

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    invoke-static {v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x7540f821

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    aput-object v3, v8, v2

    aput-object v4, v8, v1

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    if-ne v0, p1, :cond_32

    return-void

    :cond_32
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationNoMenu:I

    sget-object v4, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_52

    if-eq p1, v2, :cond_4f

    if-ne p1, v1, :cond_43

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationAllActionsMenu:I

    if-ne v0, v2, :cond_54

    sget-object v4, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    goto :goto_54

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown TV PiP menu mode: "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationMoveMenu:I

    goto :goto_54

    :cond_52
    sget-object v4, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mPipMenuFadeAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    return-void
.end method
