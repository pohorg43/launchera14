.class public Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
.super Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TvPipBoundsAlgorithm"


# instance fields
.field private mFixedExpandedHeightInPx:I

.field private mFixedExpandedWidthInPx:I

.field private final mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

.field private final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .registers 11
    .param p2  # Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/pip/PipSnapAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;

    invoke-direct {v4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    invoke-direct {p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    return-void
.end method

.method private getPipSize()Landroid/util/Size;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvExpandedPipSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipExpanded()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDesiredTvExpandedAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvExpandedSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private reloadResources(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/internal/R$dimen;->config_pictureInPictureExpandedHorizontalHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    sget v0, Lcom/android/internal/R$dimen;->config_pictureInPictureExpandedVerticalWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_keep_clear_area_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setPipAreaPadding(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    sget v0, Lcom/android/wm/shell/R$fraction;->config_pipMaxRestrictedMoveDistance:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setMaxRestrictedDistanceFraction(D)V

    return-void
.end method


# virtual methods
.method public adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getPipMenuTemporaryDecorInsets()Landroid/graphics/Insets;

    move-result-object v1

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v2, v1}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p0, v1, v3, p1, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-object v0
.end method

.method public getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 10

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_23

    sget-object p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    float-to-double v0, p2

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x25e1464

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {p2, v2, v3, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getEntryDestinationBounds()Landroid/graphics/Rect;
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x5eb54fa2

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvExpandedPipSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDesiredTvExpandedAspectRatio()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipManuallyCollapsed()Z

    move-result v0

    if-nez v0, :cond_38

    move v2, v1

    :cond_38
    if-eqz v2, :cond_3d

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    :cond_3d
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;
    .registers 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getPipSize()Landroid/util/Size;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getRestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    iget-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setGravity(I)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setScreenSize(Landroid/util/Size;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setMovementBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    iget-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setStashOffset(I)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    iget-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getPipMenuPermanentDecorInsets()Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->setPipPermanentDecorInsets(Landroid/graphics/Insets;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->calculatePipPosition(Landroid/util/Size;Ljava/util/Set;Ljava/util/Set;)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    move-result-object v6

    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v7, :cond_7e

    sget-object v7, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v13, 0x3d9c261f

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v7, v14, v11

    aput-object v3, v14, v8

    invoke-static {v12, v13, v11, v10, v14}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7e
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v3, :cond_a3

    sget-object v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v7

    int-to-long v12, v7

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v14, -0xc2245fd

    const/4 v15, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v8

    const/4 v3, 0x0

    invoke-static {v7, v14, v15, v3, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v3, :cond_c4

    sget-object v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x5c604e24

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v3, v12, v11

    aput-object v2, v12, v8

    const/4 v2, 0x0

    invoke-static {v7, v10, v11, v2, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c4
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v2, :cond_e1

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x54b9f4e2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v2, v10, v11

    aput-object v1, v10, v8

    const/4 v1, 0x0

    invoke-static {v3, v7, v11, v1, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e1
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_108

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    invoke-static {v0}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x74de31f8

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v11

    aput-object v0, v7, v8

    const/4 v0, 0x0

    invoke-static {v2, v3, v11, v0, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_108
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_125

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x20644795

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v11

    aput-object v1, v4, v8

    const/4 v0, 0x0

    invoke-static {v2, v3, v11, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_125
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_142

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0xeadb97c

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v11

    aput-object v1, v4, v8

    const/4 v0, 0x0

    invoke-static {v2, v3, v11, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_142
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_15f

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x3c555ff1

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v11

    aput-object v1, v4, v8

    const/4 v0, 0x0

    invoke-static {v2, v3, v11, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15f
    return-object v6
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    return-void
.end method

.method public updateExpandedPipSize()V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDesiredTvExpandedAspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getPipMenuPermanentDecorInsets()Landroid/graphics/Insets;

    move-result-object v2

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_31

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_30

    sget-object p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x134220b0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v0, v1, v6, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    return-void

    :cond_31
    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v3, v1, v3

    const v7, 0x61082a32

    const v8, 0x68f7e947

    const/4 v9, 0x2

    if-gez v3, :cond_a3

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result v3

    if-ne v3, v9, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvExpandedSize()Landroid/util/Size;

    move-result-object v0

    goto/16 :goto_106

    :cond_4e
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getScreenEdgeInsets()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v9

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_88

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v7, v6, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7e
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto/16 :goto_106

    :cond_88
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_9b

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v8, v6, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9b
    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_105

    :cond_a3
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result v3

    if-ne v3, v5, :cond_b2

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvExpandedSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_106

    :cond_b2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getScreenEdgeInsets()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v9

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_eb

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v7, v6, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e2
    new-instance v0, Landroid/util/Size;

    float-to-int v1, v2

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_106

    :cond_eb
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_fe

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v8, v6, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_fe
    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    :goto_105
    move-object v0, v1

    :goto_106
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvExpandedSize(Landroid/util/Size;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_13a

    sget-object p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-long v7, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x285d7722

    const/16 v10, 0x14

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v11, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v11, v9

    invoke-static {v0, v3, v10, v4, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13a
    return-void
.end method

.method public updateGravity(I)Z
    .registers 13

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v5, p1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x288dbfb6

    const/4 v9, 0x4

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v3

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipExpanded()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result v0

    if-ne v0, v3, :cond_3a

    const/16 v5, 0x13

    if-eq p1, v5, :cond_44

    const/16 v5, 0x14

    if-eq p1, v5, :cond_44

    :cond_3a
    if-ne v0, v2, :cond_45

    const/16 v0, 0x16

    if-eq p1, v0, :cond_44

    const/16 v0, 0x15

    if-ne p1, v0, :cond_45

    :cond_44
    return v4

    :cond_45
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    packed-switch p1, :pswitch_data_94

    goto :goto_62

    :pswitch_59  #0x16
    const/4 v0, 0x5

    goto :goto_62

    :pswitch_5b  #0x15
    const/4 v0, 0x3

    goto :goto_62

    :pswitch_5d  #0x14
    const/16 v5, 0x50

    goto :goto_62

    :pswitch_60  #0x13
    const/16 v5, 0x30

    :goto_62
    or-int p1, v0, v5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    if-eq p1, v0, :cond_92

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipGravity(I)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_91

    sget-object p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x270d1847

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v3

    invoke-static {v0, v5, v4, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_91
    return v3

    :cond_92
    return v4

    nop

    :pswitch_data_94
    .packed-switch 0x13
        :pswitch_60  #00000013
        :pswitch_5d  #00000014
        :pswitch_5b  #00000015
        :pswitch_59  #00000016
    .end packed-switch
.end method

.method public updateGravityOnExpansionToggled(Z)V
    .registers 13

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x16592994

    const/16 v9, 0x1c

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    iget-object v6, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipPreviousCollapsedGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipPreviousCollapsedGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipPreviousCollapsedGravity(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result p1

    if-ne p1, v4, :cond_66

    or-int/lit8 p1, v5, 0x1

    goto :goto_76

    :cond_66
    or-int/lit8 p1, v0, 0x10

    goto :goto_76

    :cond_69
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvFixedPipOrientation()I

    move-result p1

    if-ne p1, v4, :cond_74

    or-int p1, v6, v5

    goto :goto_76

    :cond_74
    or-int p1, v0, v7

    :goto_76
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipGravity(I)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_9b

    sget-object p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x4daff178  # 3.68979712E8f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v0, v5, v3, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9b
    return-void
.end method
