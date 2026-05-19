.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DeviceProfile$Builder;,
        Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;,
        Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DOT_SIZE:I = 0x64

.field private static final MAX_HORIZONTAL_PADDING_PERCENT:F = 0.14f

.field public static final TAG:Ljava/lang/String; = "DeviceProfile"

.field private static final TALLER_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.15f

.field private static final TALL_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.0f

.field private static final TALL_DEVICE_EXTRA_SPACE_THRESHOLD_DP:F = 252.0f

.field private static final TALL_DEVICE_MORE_EXTRA_SPACE_THRESHOLD_DP:F = 268.0f


# instance fields
.field public allAppsBorderSpacePx:Landroid/graphics/Point;

.field public allAppsCellHeightPx:I

.field public allAppsCellWidthPx:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public allAppsLeftRightMargin:I

.field public allAppsLeftRightPadding:I

.field public allAppsShiftRange:I

.field public allAppsTopPadding:I

.field public final appWidgetScale:Landroid/graphics/PointF;

.field private final areNavButtonsInline:Z

.field public final aspectRatio:F

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public bottomSheetTopPadding:I

.field public cellHeightPx:I

.field public cellLayoutBorderSpaceOriginalPx:Landroid/graphics/Point;

.field public cellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public cellLayoutPaddingPx:Landroid/graphics/Rect;

.field public cellScaleToFit:F

.field public cellWidthPx:I

.field public cellYPaddingPx:I

.field public final desiredWorkspaceHorizontalMarginOriginalPx:I

.field public desiredWorkspaceHorizontalMarginPx:I

.field public dropTargetBarBottomMarginPx:I

.field public dropTargetBarSizePx:I

.field public dropTargetBarTopMarginPx:I

.field public dropTargetDragPaddingPx:I

.field public dropTargetGapPx:I

.field public dropTargetHorizontalPaddingPx:I

.field public dropTargetTextSizePx:I

.field public dropTargetVerticalPaddingPx:I

.field public final edgeMarginPx:I

.field public extraHotseatBottomPadding:I

.field private final extraSpace:I

.field public flingToDeleteThresholdVelocity:I

.field public folderCellHeightPx:I

.field public folderCellLayoutBorderSpaceOriginalPx:I

.field public folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public folderCellWidthPx:I

.field public folderChildDrawablePaddingPx:I

.field public folderChildIconSizePx:I

.field public folderChildTextSizePx:I

.field public folderContentPaddingLeftRight:I

.field public folderContentPaddingTop:I

.field public folderIconOffsetYPx:I

.field public folderIconSizePx:I

.field public folderLabelTextScale:F

.field public folderLabelTextSizePx:I

.field public final heightPx:I

.field public hotseatBarBottomPaddingPx:I

.field public hotseatBarSidePaddingEndPx:I

.field public hotseatBarSidePaddingStartPx:I

.field public hotseatBarSizeExtraSpacePx:I

.field public hotseatBarSizePx:I

.field public hotseatBarTopPaddingPx:I

.field public hotseatBorderSpace:I

.field public hotseatCellHeightPx:I

.field private final hotseatExtraVerticalSize:I

.field public final hotseatQsbHeight:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconScale:F

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

.field public invalid:Z

.field public final isGestureMode:Z

.field public isLandscape:Z

.field public final isMultiWindowMode:Z

.field public final isPhone:Z

.field public final isQsbInline:Z

.field public final isScalableGrid:Z

.field public final isTablet:Z

.field public isTaskbarPresent:Z

.field public isTaskbarPresentInApps:Z

.field public isTwoPanels:Z

.field public mDotRendererAllApps:Lcom/android/launcher3/icons/OplusDotRenderer;

.field public mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

.field public mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

.field public final mExt:Lcom/android/launcher3/IDeviceProfileExt;

.field public final mHotseatPadding:Landroid/graphics/Rect;

.field public final mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field public final mInsets:Landroid/graphics/Rect;

.field private mIsSeascape:Z

.field public final mMetrics:Landroid/util/DisplayMetrics;

.field private final mQsbCenterFactor:F

.field public mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

.field public mTaskbarAllAppsCellHeightPx:I

.field private final mTypeIndex:I

.field private final mWorkspacePageIndicatorOverlapWorkspace:I

.field public final numShownAllAppsColumns:I

.field public final numShownHotseatIcons:I

.field public numTaskbarAllAppsColumns:I

.field public final overviewActionsButtonSpacing:I

.field public final overviewActionsHeight:I

.field public final overviewActionsTopMarginPx:I

.field public overviewGridSideMargin:I

.field public overviewPageSpacing:I

.field public overviewRowSpacing:I

.field public overviewTaskIconDrawableSizeGridPx:I

.field public overviewTaskIconDrawableSizePx:I

.field public overviewTaskIconSizePx:I

.field public overviewTaskMarginGridPx:I

.field public overviewTaskMarginPx:I

.field public overviewTaskThumbnailTopMarginPx:I

.field public final qsbBottomMarginOriginalPx:F

.field public qsbBottomMarginPx:I

.field public qsbWidth:I

.field public final rotationHint:I

.field public springLoadedHotseatBarTopMarginPx:I

.field public stashedTaskbarSize:I

.field public taskbarSize:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I

.field public final windowX:I

.field public final windowY:I

.field public workspaceBottomPadding:I

.field public workspaceCellPaddingXPx:I

.field public final workspacePadding:Landroid/graphics/Rect;

.field public final workspacePageIndicatorHeight:I

.field public workspaceSpringLoadShrunkBottom:F

.field public workspaceSpringLoadShrunkTop:F

.field public final workspaceSpringLoadedBottomSpace:I

.field public workspaceTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;ZZZZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/launcher3/DeviceProfile;->invalid:Z

    const-class v9, Lcom/android/launcher3/IDeviceProfileExt;

    invoke-static {v9}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/IDeviceProfileExt;

    iput-object v9, v0, Lcom/android/launcher3/DeviceProfile;->mExt:Lcom/android/launcher3/IDeviceProfileExt;

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->initIsPhysicalLandscape()V

    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    move/from16 v10, p6

    iput-boolean v10, v0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    iput-boolean v6, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    iget-object v10, v4, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iput v10, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    iget v10, v4, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    iput v10, v0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    iget-object v10, v4, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v10, v2, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v10

    if-nez v10, :cond_7f

    if-nez v5, :cond_7f

    move v8, v11

    :cond_7f
    iput-boolean v8, v0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    iput-object v3, v0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/OplusDeviceProfile;->injectBuildDeviceProfileDisplayInfo(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-interface {v9, v3, v4}, Lcom/android/launcher3/IDeviceProfileExt;->isTablet(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    xor-int/lit8 v12, v10, 0x1

    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    invoke-interface {v9, v4}, Lcom/android/launcher3/IDeviceProfileExt;->isTwoPanel(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-interface {v9, v1}, Lcom/android/launcher3/IDeviceProfileExt;->isTaskbarPresent(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isPhysicalVerticalBarLayout()Z

    move-result v9

    const/4 v12, 0x2

    if-nez v9, :cond_af

    if-eqz v10, :cond_ad

    iget-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v9, :cond_ad

    goto :goto_af

    :cond_ad
    move v9, v11

    goto :goto_b0

    :cond_af
    :goto_af
    move v9, v12

    :goto_b0
    invoke-static {v1, v3, v9, v4}, Lcom/android/launcher3/DeviceProfile;->getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v13, v4, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v4, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v4, v4, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v15, v4, Landroid/graphics/Point;->x:I

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v4, v13

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    const/high16 v13, 0x40000000  # 2.0f

    invoke-static {v4, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_ef

    move v4, v11

    goto :goto_f0

    :cond_ef
    const/4 v4, 0x0

    :goto_f0
    const v13, 0x7f070d72

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->mQsbCenterFactor:F

    iget-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v15, 0x3

    if-eqz v13, :cond_108

    iget-boolean v11, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v11, :cond_105

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_112

    :cond_105
    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_112

    :cond_108
    iget-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v13, :cond_10f

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_112

    :cond_10f
    const/4 v11, 0x0

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    :goto_112
    iget-boolean v11, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v11, :cond_133

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    const v11, 0x7f07100b

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    const-string/jumbo v11, "stashedTaskbarSize:"

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    const-string v15, "DeviceProfile"

    invoke-static {v11, v13, v15}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_133
    iget v11, v2, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numTaskbarAllAppsColumns:I

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->numTaskbarAllAppsColumns:I

    const v11, 0x7f0707d2

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/DeviceProfile;->getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const v13, 0x7f0701cf

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int/2addr v13, v7

    if-eqz v10, :cond_155

    const/4 v11, 0x0

    :cond_155
    add-int/2addr v13, v11

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    if-eqz v10, :cond_15b

    goto :goto_15c

    :cond_15b
    const/4 v13, 0x0

    :goto_15c
    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    const v7, 0x7f070836

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    const v7, 0x7f07082d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    const v7, 0x7f07082e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    invoke-direct {v0, v2}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/graphics/Point;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    iget-object v10, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v11, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v9}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v10

    iget-object v11, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v11, v11, v13

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v9}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    iget-object v10, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v7, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpaceOriginalPx:Landroid/graphics/Point;

    iget v7, v2, Lcom/android/launcher3/InvariantDeviceProfile;->folderBorderSpace:F

    invoke-static {v7, v9}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    new-instance v7, Landroid/graphics/Point;

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    sget-object v7, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v7}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v7

    const v10, 0x7f071148

    if-eqz v7, :cond_1d0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    goto :goto_1d6

    :cond_1d0
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    :goto_1d6
    const v7, 0x7f07114e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->mWorkspacePageIndicatorOverlapWorkspace:I

    const v7, 0x7f0707db

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    const v7, 0x7f0707d1

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    const v7, 0x7f0707cb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    const v7, 0x7f0707c3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    const v7, 0x7f0707c8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetDragPaddingPx:I

    const v7, 0x7f0707ca

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    const v7, 0x7f0707c4

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    const v7, 0x7f0707c6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    const v7, 0x7f0707c7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    const v7, 0x7f0707dd

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    const v7, 0x7f0707d0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    const v7, 0x7f070d73

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    iget-boolean v10, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    iget-object v11, v2, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    if-eqz v10, :cond_25d

    aget-boolean v12, v11, v12

    if-nez v12, :cond_26b

    const/4 v12, 0x3

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_25b

    goto :goto_26b

    :cond_25b
    const/4 v7, 0x1

    goto :goto_271

    :cond_25d
    const/4 v12, 0x0

    aget-boolean v12, v11, v12

    if-nez v12, :cond_26b

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_269

    move v11, v12

    goto :goto_26c

    :cond_269
    move v7, v12

    goto :goto_271

    :cond_26b
    :goto_26b
    const/4 v11, 0x1

    :goto_26c
    if-lez v7, :cond_270

    move v7, v11

    goto :goto_272

    :cond_270
    move v7, v11

    :goto_271
    const/4 v11, 0x0

    :goto_272
    iget-object v12, v2, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_27e

    if-eqz v11, :cond_27e

    move v12, v7

    goto :goto_27f

    :cond_27e
    const/4 v12, 0x0

    :goto_27f
    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    iget-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v13, :cond_288

    if-nez v6, :cond_288

    goto :goto_289

    :cond_288
    const/4 v7, 0x0

    :goto_289
    iput-boolean v7, v0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    if-eqz v7, :cond_294

    if-eqz v11, :cond_294

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numShrunkenHotseatIcons:I

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    goto :goto_29d

    :cond_294
    if-eqz v10, :cond_299

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    goto :goto_29b

    :cond_299
    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    :goto_29b
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    :goto_29d
    if-eqz v10, :cond_2a2

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    goto :goto_2a4

    :cond_2a2
    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    :goto_2a4
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizeExtraSpacePx:I

    const v6, 0x7f0707da

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    if-eqz v12, :cond_2be

    const v4, 0x7f070973

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    goto :goto_2d9

    :cond_2be
    if-eqz v4, :cond_2c8

    const v4, 0x7f0707d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2cf

    :cond_2c8
    const v4, 0x7f0707d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2cf
    const v6, 0x7f0707d5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    :goto_2d9
    const v4, 0x7f070ec1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    const v4, 0x7f0707d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_2f4

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    goto :goto_2f5

    :cond_2f4
    const/4 v4, 0x0

    :goto_2f5
    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    const v4, 0x7f0707d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatExtraVerticalSize:I

    iget-object v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-static {v4, v9}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/android/launcher3/DeviceProfile;->updateHotseatIconSize(I)V

    if-eqz v8, :cond_317

    const v4, 0x7f070ddf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    goto :goto_318

    :cond_317
    const/4 v4, 0x0

    :goto_318
    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginOriginalPx:F

    const v6, 0x7f070c66

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    const v6, 0x7f070c67

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    const v6, 0x7f070fbe

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    const v6, 0x7f070fbc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    const v6, 0x7f070fbd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    const v6, 0x7f070302

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_359

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    goto :goto_360

    :cond_359
    const v6, 0x7f070c5c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_360
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    const v6, 0x7f070c63

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    const v6, 0x7f070c59

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    const v6, 0x7f070c5a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    sub-int/2addr v6, v7

    const v7, 0x7f070c5d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    const v6, 0x7f070c5e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    invoke-virtual {v5, v1}, Lcom/android/launcher3/OplusDeviceProfile;->injectBuildDeviceProfileContext(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    if-eqz v8, :cond_3e8

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    if-eqz v2, :cond_3e8

    int-to-float v5, v5

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/DevicePaddings;->getDevicePadding(I)Lcom/android/launcher3/DevicePaddings$DevicePadding;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceTopPadding(I)I

    move-result v6

    invoke-virtual {v2, v5}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceBottomPadding(I)I

    move-result v7

    invoke-virtual {v2, v5}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getHotseatBottomPadding(I)I

    move-result v2

    int-to-float v5, v6

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    int-to-float v5, v7

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    int-to-float v2, v2

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->extraHotseatBottomPadding:I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginPx:I

    :cond_3e8
    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const v4, 0x7f070295

    if-eqz v2, :cond_405

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3fd

    const v2, 0x7f070298

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_409

    :cond_3fd
    const v2, 0x7f070296

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_409

    :cond_405
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_409
    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v5, :cond_410

    const v4, 0x7f07029a

    :cond_410
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v5, :cond_420

    const v5, 0x7f07029c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_421

    :cond_420
    move v5, v2

    :goto_421
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->calculateHotseatBorderSpace()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->calculateQsbWidth()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    const v2, 0x7f0707b3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    const/16 v0, 0x64

    invoke-static {v1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(Landroid/content/Context;I)Landroid/graphics/Path;

    return-void
.end method

.method public static calculateCellHeight(III)I
    .registers 4

    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    div-int/2addr p0, p2

    return p0
.end method

.method public static calculateCellWidth(III)I
    .registers 4

    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    div-int/2addr p0, p2

    return p0
.end method

.method private calculateHotseatBorderSpace()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBorderSpaces:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v1, p0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 p0, p0, -0x1

    div-int/2addr v0, p0

    return v0
.end method

.method private calculateQsbWidth()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_13

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    :goto_13
    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    mul-int/2addr p0, v2

    sub-int/2addr v0, p0

    return v0

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result p0

    return p0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/graphics/Point;
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-nez v0, :cond_b

    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_b
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private getCellLayoutHeightSpecification()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    return v1
.end method

.method private getCellLayoutSpringLoadShrunkBottom()F
    .registers 4

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getVerticalHotseatLastItemBottomOffset()I

    move-result v0

    :cond_11
    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkBottom:F

    return v0
.end method

.method private getCellLayoutWidthSpecification()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method private static getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;
    .registers 6

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p2, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result p2

    iput p2, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget p1, p1, p2

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_20

    :cond_19
    const p0, 0x7f0707dc

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_20
    return p0
.end method

.method private getIconToIconWidthForColumns(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, p1

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, p0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getWorkspaceSpringLoadedMinimumNextPageVisible()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private insetPadding(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "px ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p2, p0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "dp)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateAllAppsContainerWidth(Landroid/content/res/Resources;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_32

    const v0, 0x7f0700ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    goto :goto_48

    :cond_32
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsAdaptiveLayoutSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x7f070119

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    goto :goto_48

    :cond_43
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    :goto_48
    return-void
.end method

.method private updateAvailableDimensions(Landroid/content/res/Resources;)I
    .registers 12

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v2

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateAvailableDimensions(I)I

    move-result v2

    int-to-float v3, v2

    sub-float v4, v3, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v3, v1

    cmpg-float v5, v3, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v5, :cond_29

    move v5, v6

    goto :goto_2a

    :cond_29
    move v5, v7

    :goto_2a
    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mExt:Lcom/android/launcher3/IDeviceProfileExt;

    if-eqz v8, :cond_39

    if-eqz v5, :cond_38

    invoke-interface {v8, v3}, Lcom/android/launcher3/IDeviceProfileExt;->shouldScale(F)Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v6

    goto :goto_39

    :cond_38
    move v5, v7

    :cond_39
    :goto_39
    iget-boolean v8, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v8, :cond_4d

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidthSpecification()I

    move-result v0

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v5, v5

    div-float v0, v5, v0

    goto :goto_4e

    :cond_4d
    move v6, v5

    :goto_4e
    const-string/jumbo v5, "updateAvailableDimensions----end，availableSizePx= "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "--"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "，scale= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "，shouldScale= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "，usedHeight= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "，maxHeight= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "，cellHeightPx= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "，numRows= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DeviceProfile"

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_c2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    :cond_c2
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V
    .registers 12

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    const v1, 0x7f070835

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mExt:Lcom/android/launcher3/IDeviceProfileExt;

    if-eqz v2, :cond_18

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-interface {v2, v1, v3, p1}, Lcom/android/launcher3/IDeviceProfileExt;->getFolderBottomPanelSize(ZZLandroid/content/res/Resources;)I

    move-result v1

    :cond_18
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v6, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v4, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v4

    int-to-float v4, v6

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v9

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    iget v9, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v4, v5

    sub-int/2addr v5, v7

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v4

    const-class v3, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p0, v3}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_68

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateAvailableFolderCellDimensions(I)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v6, v1, v7

    :cond_68
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7e

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mExt:Lcom/android/launcher3/IDeviceProfileExt;

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Lcom/android/launcher3/IDeviceProfileExt;->needUpdateFolderCellSize()Z

    move-result v0

    if-nez v0, :cond_7b

    return-void

    :cond_7b
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    :cond_7e
    return-void
.end method

.method private updateHotseatIconSize(I)V
    .registers 4

    int-to-float v0, p1

    const/high16 v1, 0x3f900000  # 1.125f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_2f

    :cond_1b
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_29

    :cond_27
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatExtraVerticalSize:I

    :goto_29
    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizeExtraSpacePx:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    :goto_2f
    return-void
.end method


# virtual methods
.method public autoResizeAllAppsCells()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    return-void
.end method

.method public copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DeviceProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tinvalid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->invalid:Z

    const-string v2, "\t1 dp = "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisTablet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const-string v2, "\tisPhone:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    const-string v2, "\ttransposeLayoutWithOrientation:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    const-string v2, "\tisGestureMode:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    const-string v2, "\tisLandscape:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const-string v2, "\trotationHint:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    const-string v2, "\tisMultiWindowMode:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const-string v2, "\tisTwoPanels:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v1, v1

    const-string/jumbo v2, "windowX"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v1, v1

    const-string/jumbo v2, "windowY"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "widthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    const-string v2, "heightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const-string v2, "availableWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    const-string v2, "availableHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mInsets.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mInsets.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "mInsets.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "mInsets.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\taspectRatio:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    const-string v2, "\tisScalableGrid:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    const-string v2, "\tinv.numRows: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const-string v2, "\tinv.numColumns: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const-string v2, "\tinv.numSearchContainerColumns: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    const-string v2, "\tminCellSize: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v1, v1

    const-string v2, "cellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    int-to-float v1, v1

    const-string v2, "cellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "getCellSize().x"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "getCellSize().y"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Horizontal"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Vertical"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const-string v2, "iconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    const-string v2, "iconTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "iconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "folderCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "folderCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "folderChildDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpaceOriginalPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx Horizontal"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx Vertical"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    int-to-float v1, v1

    const-string v2, "bottomSheetTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    const-string v2, "allAppsShiftRange"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    int-to-float v1, v1

    const-string v2, "allAppsTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    const-string v2, "allAppsIconTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "allAppsBorderSpacePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tnumShownAllAppsColumns: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    int-to-float v1, v1

    const-string v2, "allAppsLeftRightPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    int-to-float v1, v1

    const-string v2, "allAppsLeftRightMargin"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tinv.hotseatColumnSpan: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "hotseatCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarTopPaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarBottomPaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSidePaddingStartPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSidePaddingEndPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "springLoadedHotseatBarTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tnumShownHotseatIcons: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    int-to-float v1, v1

    const-string v2, "hotseatBorderSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tisQsbInline: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    int-to-float v1, v1

    const-string/jumbo v2, "qsbWidth"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tisTaskbarPresent:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const-string v2, "\tisTaskbarPresentInApps:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    int-to-float v1, v1

    const-string/jumbo v2, "taskbarSize"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\tnumTaskbarAllAppsColumns:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numTaskbarAllAppsColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    int-to-float v1, v1

    const-string v2, "desiredWorkspaceHorizontalMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspacePadding.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspacePadding.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspacePadding.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspacePadding.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    const-string v2, "iconScale"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    const-string v2, "cellScaleToFit "

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v1, v1

    const-string v2, "extraSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    div-float/2addr v1, v2

    const-string/jumbo v2, "unscaled extraSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    if-eqz v0, :cond_535

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DevicePaddings;->getDevicePadding(I)Lcom/android/launcher3/DevicePaddings$DevicePadding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getMaxEmptySpacePx()I

    move-result v0

    int-to-float v0, v0

    const-string/jumbo v2, "maxEmptySpace"

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_535
    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspaceTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    int-to-float v1, v1

    const-string/jumbo v2, "workspaceBottomPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraHotseatBottomPadding:I

    int-to-float v1, v1

    const-string v2, "extraHotseatBottomPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskMarginGridPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskIconDrawableSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskIconDrawableSizeGridPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewTaskThumbnailTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewActionsTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewActionsHeight"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewActionsButtonSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewPageSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewRowSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    int-to-float v1, v1

    const-string/jumbo v2, "overviewGridSideMargin"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "dropTargetBarTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    int-to-float v1, v1

    const-string v2, "dropTargetBarSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    int-to-float v1, v1

    const-string v2, "dropTargetBarBottomMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkTop:F

    const-string/jumbo v2, "workspaceSpringLoadShrunkTop"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkBottom:F

    const-string/jumbo v2, "workspaceSpringLoadShrunkBottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/launcher3/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale()F

    move-result v0

    const-string v1, "getWorkspaceSpringLoadScale()"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr p0, v1

    invoke-direct {v0, v3, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    goto :goto_2b

    :cond_29
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    :goto_2b
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int v5, v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v7

    sub-int/2addr v3, v4

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v2, v7

    sub-int/2addr v2, v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, v4

    invoke-direct {v1, v5, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getAllAppsCellHeight(Lcom/android/launcher3/views/ActivityContext;)I
    .registers 2

    instance-of p1, p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->mTaskbarAllAppsCellHeightPx:I

    if-lez p1, :cond_9

    return p1

    :cond_9
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    return p0
.end method

.method public getCellContentHeight(I)I
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return p0

    :cond_d
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    return p0

    :cond_10
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    return p0
.end method

.method public getCellLayoutHeight()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getCellLayoutSpringLoadShrunkTop()F
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkTop:F

    return v0
.end method

.method public getCellLayoutWidth()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public getCellSize()Landroid/graphics/Point;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getCellSize(II)Landroid/graphics/Point;
    .registers 7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    sub-int/2addr p1, v2

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public getDesiredWorkspaceHorizontalMarginPx(Landroid/content/Context;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object p0
.end method

.method public getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    const/high16 v0, 0x3e000000  # 0.125f

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_118

    :cond_46
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_118

    :cond_56
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v4, :cond_73

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/2addr v2, v4

    :cond_73
    sub-int/2addr v1, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v4

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result p1

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v4, v5

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v4, p1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_a2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_a9

    :cond_a2
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    :goto_a9
    if-le p1, v5, :cond_118

    if-eqz v0, :cond_af

    sub-int/2addr v5, p1

    goto :goto_b1

    :cond_af
    sub-int v5, p1, v5

    :goto_b1
    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v5

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_118

    :cond_be
    iget-boolean p1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz p1, :cond_dc

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_118

    :cond_dc
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, p1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v5, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_118
    :goto_118
    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz p1, :cond_17c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_17c

    const-string p1, "hotseat - hotseatBarSidePaddingStartPx : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hotseatBarSidePaddingEndPx : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inv.numColumns : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inv.numShownHotseatIcons: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " widthPx: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isVerticalBarLayout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isSeascape: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotseat"

    const-string v1, "getHotseatLayoutPadding"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17c
    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 6

    const-string v0, "getMultiWindowProfile---->availablePx="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",availableSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfile"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    iget-object p0, p1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p1
.end method

.method public getNumAllAppsColumns(Lcom/android/launcher3/views/ActivityContext;)I
    .registers 2

    instance-of p1, p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->numTaskbarAllAppsColumns:I

    return p0

    :cond_7
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    return p0
.end method

.method public getOverviewActionsClaimedSpace()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getOverviewActionsClaimedSpaceBelow()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v1, :cond_15

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_15
    if-eqz v0, :cond_1a

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    goto :goto_1e

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    :goto_1e
    return p0
.end method

.method public getPanelCount()I
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    goto :goto_7

    :cond_6
    const/4 p0, 0x1

    :goto_7
    return p0
.end method

.method public getQsbOffsetY()I
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    return p0

    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_18

    :cond_10
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    sub-int/2addr v1, v2

    :goto_18
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2c

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    add-int/2addr v2, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2c
    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mQsbCenterFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz v0, :cond_36

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    goto :goto_3a

    :cond_36
    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    :goto_3a
    add-int/2addr v1, p0

    return v1
.end method

.method public getTaskbarOffsetY()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTotalWorkspacePadding()Landroid/graphics/Point;
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getVerticalHotseatLastItemBottomOffset()I
    .registers 5

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getWorkspaceSpringLoadScale()F
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkTop()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    mul-float v2, v1, v0

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadedMinimumNextPageVisible()F

    move-result p0

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr p0, v3

    sub-float/2addr v1, p0

    cmpl-float p0, v2, v1

    if-lez p0, :cond_28

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    :cond_28
    return v0
.end method

.method public hideWorkspaceLabelsIfNotEnoughSpace()V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2e

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v0, v2

    const/high16 v1, 0x3f900000  # 1.125f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    :cond_2e
    return-void
.end method

.method public initIsPhysicalLandscape()V
    .registers 1

    return-void
.end method

.method public isPhysicalVerticalBarLayout()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    return p0
.end method

.method public isSeascape()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isVerticalBarLayout()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public shouldFadeAdjacentWorkspaceScreens()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    return p0
.end method

.method public shouldInsetWidgets()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v1, v3, :cond_20

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le p0, v2, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;
    .registers 9

    new-instance v6, Lcom/android/launcher3/util/WindowBounds;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    iget-object v0, v6, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, v6, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/android/launcher3/DeviceProfile$Builder;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setUseTwoPanels(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/DeviceProfile$Builder;->setGestureMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p0

    return-object p0
.end method

.method public updateAllAppsIconSize(FLandroid/content/res/Resources;)V
    .registers 7

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    goto :goto_98

    :cond_71
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    aget v0, v0, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    const v0, 0x7f070111

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    :goto_98
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->allAppsCellHeightDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mTaskbarAllAppsCellHeightDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->mTaskbarAllAppsCellHeightPx:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsContainerWidth(Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_c2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    :cond_c2
    return-void
.end method

.method public updateFolderCellSize(FLandroid/content/res/Resources;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v1

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v2

    :goto_15
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v1, v0

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v1, :cond_73

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    int-to-float p2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float p2, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    goto :goto_94

    :cond_73
    const v1, 0x7f070827

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const v3, 0x7f070828

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    :goto_94
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    return-void
.end method

.method public updateIconSize(FLandroid/content/res/Resources;)V
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    aget v0, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const-string v0, "iconSizePx: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",invIconSizeDp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfile"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateIconSize(FLandroid/content/res/Resources;)V

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateIconSizeByCellHeightPx(F)V

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    goto :goto_b6

    :cond_af
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    :goto_b6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsIconSize(FLandroid/content/res/Resources;)V

    const-class p1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p0, p1}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c5

    invoke-virtual {v0, p2}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateIconSizeByStyleAttr(Landroid/content/res/Resources;)V

    goto :goto_cd

    :cond_c5
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {p1}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    :goto_cd
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateIsSeascape(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1b

    move p1, v2

    goto :goto_1c

    :cond_1b
    move p1, v1

    :goto_1c
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eq v0, p1, :cond_26

    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    return v2

    :cond_26
    return v1
.end method

.method public updateTaskbarPresent(Landroid/content/Context;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    const p2, 0x7f07100b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    goto :goto_1d

    :cond_18
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    :goto_1d
    return-void
.end method

.method public updateWorkspacePadding()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_26

    :cond_1e
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_26
    check-cast p0, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateWorkspacePadding(Landroid/graphics/Rect;)V

    goto :goto_4d

    :cond_2c
    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateWorkspacePaddingByPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    iget-boolean v5, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v5, :cond_3a

    goto :goto_3c

    :cond_3a
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    :goto_3c
    add-int/2addr v4, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    invoke-virtual {v0, v2, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const-class v2, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p0, v2}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4d

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/OplusDeviceProfile;->injectUpdateWorkspacePaddingByRect(Landroid/graphics/Rect;I)V

    :cond_4d
    :goto_4d
    return-void
.end method
