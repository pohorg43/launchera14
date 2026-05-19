.class public Lcom/android/launcher/iconfallen/IconFallenUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUBBLEVIEW_RADIO:F = 0.39285713f

.field public static final DEFAULT_SCALE_VALUE:F = 1.0f

.field private static final FOLDER_COLUMN_COUNT_DEFAULT:I = 0x3

.field private static final FOLDER_ICON_FOCUS_OFFSET_RIGHT:I = 0x3c

.field private static final LARGE_ICON_SIZE:I = 0x1482

.field private static final TAG:Ljava/lang/String; = "IconFallenUtils"

.field private static final TRANSFORM_CELL_Y_1:I = 0x1

.field private static final TRANSFORM_CELL_Y_2:I = 0x2

.field private static final TRANSFORM_CELL_Y_3:I = 0x3

.field private static final TRANSFORM_CELL_Y_4:I = 0x4

.field private static final TRANSFORM_CELL_Y_5:I = 0x5

.field private static final TRANSFORM_CELL_Y_6:I = 0x6

.field private static final WORKSPACE_COLUMN_COUNT_DEFAULT:I = 0x4

.field private static final WORKSPACE_ICON_FOCUS_OFFSET_LEFT:I = 0x18

.field private static final WORKSPACE_ICON_FOCUS_OFFSET_RIGHT:I = 0x21

.field private static sBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams; = null

.field private static sBigFolderEndPosition56X:[F = null

.field private static sBigFolderEndPosition56Y:[F = null

.field private static sBigFolderFallenCompletedStateScaleX:F = 0.0f

.field private static sBigFolderFallenCompletedStateScaleY:F = 0.0f

.field private static sBigFolderOffset56X:[F = null

.field private static sBigFolderOffsetY:[F = null

.field private static sBigFolderOriginalPositionX:[F = null

.field private static sBigFolderOriginalPositionY:[F = null

.field private static sBigFolderPositionX:[[F = null

.field private static sBigFolderPositionY:[[F = null

.field private static sCurColumns:I = 0x0

.field private static sEndPosition56X:[F = null

.field private static sEndPosition56Y:[F = null

.field private static sFallenIconPivotY:F = 0.0f

.field private static sFallenIconPivotYRowGrid4:F = 0.0f

.field private static sFirstLine:I = 0x0

.field private static sFocusXOffset:[I = null

.field private static sFolderFocusCalculateOffset:I = 0x0

.field private static sGRID_X_NUM5:I = 0x5

.field private static sGRID_Y_NUM6:I = 0x6

.field public static sIconPressAnimating:Z

.field private static sInitGapX:F

.field private static sInitGapY:F

.field private static sInitOffsetX:F

.field private static sInitOffsetY:F

.field private static sInitPaddingX:F

.field private static sInitPaddingY:F

.field private static sInitPreviewOffsetX:F

.field private static sInitPreviewOffsetY:F

.field private static sInitRadius:F

.field private static sInitScale:F

.field private static sInitSizeX:F

.field private static sInitSizeY:F

.field private static sInitSubIconSize:F

.field private static sInitX:F

.field private static sInitY:F

.field private static sLastLine:I

.field private static sLines:I

.field private static sMaxWorkspaceUpOffset:F

.field private static sMinWorkspaceUpOffset:F

.field private static sNavigationOffset:F

.field private static sOffset56X:[F

.field private static sOffsetY:[F

.field public static sOffsetYHotset:F

.field public static sOffsetYWorkSpace:F

.field private static sOpenFolder:Lcom/android/launcher3/folder/Folder;

.field private static sOriginalPositionX:[F

.field private static sOriginalPositionY:[F

.field private static sPaddingBottom:F

.field private static sPaddingTop:F

.field private static sPositionX:[[F

.field private static sPositionY:[[F

.field public static sThresholdValue:F

.field public static sTransformCellX:I

.field public static sTransformCellY:I

.field private static sWorkspaceFocusCalculateXEndOffset:I

.field private static sWorkspaceFocusCalculateXStartOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-class v0, F

    const/4 v1, 0x6

    new-array v2, v1, [F

    sput-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    const/4 v2, 0x1

    rsub-int/lit8 v3, v2, 0x6

    new-array v3, v3, [F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    const/4 v3, 0x5

    new-array v4, v3, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    rsub-int/lit8 v4, v2, 0x5

    new-array v4, v4, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    new-array v4, v1, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    rsub-int/lit8 v4, v2, 0x6

    new-array v4, v4, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionY:[F

    new-array v4, v3, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    rsub-int/lit8 v4, v2, 0x5

    new-array v4, v4, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    new-array v4, v1, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    rsub-int/lit8 v4, v2, 0x6

    new-array v4, v4, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    new-array v4, v3, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    rsub-int/lit8 v4, v2, 0x5

    new-array v4, v4, [F

    sput-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56X:[F

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v1, v5, v2

    const/4 v1, 0x0

    aput v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[F

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v3, v2

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    sub-int/2addr v5, v2

    new-array v6, v4, [I

    aput v5, v6, v2

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionX:[[F

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    new-array v6, v4, [I

    aput v5, v6, v2

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[F

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v3, v2

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    sub-int/2addr v5, v2

    new-array v6, v4, [I

    aput v5, v6, v2

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionY:[[F

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    sput-boolean v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    new-array v0, v4, [I

    sput-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bottomBoundaryCheck()V
    .registers 5

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v1

    aget v0, v0, v1

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingBottom:F

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_12

    return-void

    :cond_12
    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v3, v0, v1

    goto :goto_24

    :cond_1e
    cmpg-float v4, v0, v1

    if-gez v4, :cond_24

    sub-float v3, v1, v0

    :cond_24
    :goto_24
    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    if-ge v2, v0, :cond_3d

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v4, v1, v2

    add-float/2addr v4, v3

    aput v4, v1, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_3a

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v1, v0, v2

    add-float/2addr v1, v3

    aput v1, v0, v2

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3d
    return-void
.end method

.method private static boundaryCheck(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->topBoundaryCheck(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->bottomBoundaryCheck()V

    :cond_9
    return-void
.end method

.method public static computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V
    .registers 14

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz p0, :cond_a7

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a7

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a7

    if-eqz v0, :cond_2f

    goto :goto_a7

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    mul-float/2addr v4, v1

    invoke-static {p1, v1, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    mul-float/2addr v5, v4

    invoke-static {p2, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    move-object v6, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/folder/big/BigFolderBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->init(Landroid/content/Context;IIFZ)V

    const/4 v1, 0x0

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    sub-float/2addr v2, v3

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    neg-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, p1, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->recomputeBuildBackground(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    invoke-static {v0, p1, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->recomputeBuildPage(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;FF)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public static getBigFolderFallenCompletedStateScaleX()F
    .registers 3

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-lez v1, :cond_e

    cmpg-float v1, v0, v2

    if-gez v1, :cond_e

    return v0

    :cond_e
    return v2
.end method

.method public static getBigFolderFallenCompletedStateScaleY()F
    .registers 3

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-lez v1, :cond_e

    cmpg-float v1, v0, v2

    if-gez v1, :cond_e

    return v0

    :cond_e
    return v2
.end method

.method public static getBigFolderFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F
    .registers 9

    const-string v0, "IconFallenUtils"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    if-nez p3, :cond_14

    const/4 v3, -0x1

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    if-nez p3, :cond_1e

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, -0x2

    goto :goto_24

    :cond_1e
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    :goto_24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_3e

    if-ne p3, v1, :cond_37

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, -0x2

    goto :goto_3d

    :cond_37
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    :goto_3d
    move v4, p0

    :cond_3e
    int-to-float p0, v3

    mul-float/2addr p0, p2

    :try_start_40
    sget-object p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    aget p2, p2, v4

    mul-float v2, p0, p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBigFolderFallenDistanceX offset:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " sBigFolderOffset56X["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    aget p2, p2, v4

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " title:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_40 .. :try_end_78} :catch_79

    goto :goto_a0

    :catch_79
    move-exception p0

    const-string p2, "catch exception:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",info:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",sTransformCellX:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return v2
.end method

.method public static getBigFolderFallenDistanceY(Landroid/view/View;F)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v0

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    aget v1, v1, v0

    mul-float/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBigFolderFallenDistanceY offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " sBigFolderOffsetY["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " title:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v0, "IconFallenUtils"

    invoke-static {v1, p0, v0}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    return p1
.end method

.method public static getBigFolderScaleCenterY(Lcom/android/launcher3/folder/big/BigFolderIcon;)F
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method public static getEndPos(Landroid/view/View;)[F
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_6a

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionX:[[F

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget-object v1, v1, v4

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v4

    aget v1, v1, v4

    aput v1, v0, v3

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionY:[[F

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v3

    aget-object v1, v1, v3

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p0

    aget p0, v1, p0

    aput p0, v0, v2

    goto :goto_6a

    :cond_42
    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[F

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget-object v1, v1, v4

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v4, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v4

    aget v1, v1, v4

    aput v1, v0, v3

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[F

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget-object v1, v1, v4

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p0

    aget p0, v1, p0

    aput p0, v0, v2

    :cond_6a
    :goto_6a
    return-object v0
.end method

.method public static getIconFocusOffsetX(Landroid/view/View;)[I
    .registers 4

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_20

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_15

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_15
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    const/4 v0, 0x0

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXStartOffset:I

    aput v2, p0, v0

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXEndOffset:I

    aput v0, p0, v1

    :cond_20
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    return-object p0
.end method

.method public static getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F
    .registers 9

    const-string v0, "IconFallenUtils"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ae

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v3, :cond_1f

    instance-of p1, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez p1, :cond_1f

    instance-of p1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p1, :cond_1f

    instance-of p1, v1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p1, :cond_ae

    :cond_1f
    const/4 p1, 0x1

    if-nez p3, :cond_24

    const/4 v3, -0x1

    goto :goto_25

    :cond_24
    move v3, p1

    :goto_25
    if-nez p3, :cond_2d

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 v4, v4, 0x5

    sub-int/2addr v4, p1

    goto :goto_33

    :cond_2d
    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    :goto_33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_4c

    if-ne p3, p1, :cond_45

    iget p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 p0, p0, 0x5

    sub-int/2addr p0, p1

    goto :goto_4b

    :cond_45
    iget p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    :goto_4b
    move v4, p0

    :cond_4c
    int-to-float p0, v3

    mul-float/2addr p0, p2

    :try_start_4e
    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v4

    mul-float v2, p0, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getItemFallenDistanceX offset:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sOffset56X["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " title:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4e .. :try_end_86} :catch_87

    goto :goto_ae

    :catch_87
    move-exception p0

    const-string p1, "catch exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",info:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",sTransformCellX:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    :goto_ae
    return v2
.end method

.method public static getItemFallenDistanceY(Landroid/view/View;F)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, p0, Lcom/android/launcher3/BubbleTextView;

    if-nez v1, :cond_16

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_50

    :cond_16
    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p0

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget v1, v1, p0

    mul-float/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemFallenDistanceY offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " sOffsetY["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " title:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v0, "IconFallenUtils"

    invoke-static {v1, p0, v0}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    return p1
.end method

.method public static getOpenFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public static getScaleCenterY()F
    .registers 2

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotYRowGrid4:F

    return v0

    :cond_a
    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotY:F

    return v0
.end method

.method public static getsThresholdValue()F
    .registers 1

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    return v0
.end method

.method public static initBigFolderRecomputeBuildParams(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusDeviceProfile;FF)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingX:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingY:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getAnimOffsetX()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getAnimOffsetY()F

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    iget v1, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    iget v0, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    sput v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitRadius:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    iget p0, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    iget p0, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    sput p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    sput p3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_122

    const-string p0, "initBigFolderRecomputeBuildParams: "

    const-string/jumbo p1, "sInitPaddingX = "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitPaddingY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitGapX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitGapY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitOffsetX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitOffsetY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitScale = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitSubIconSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitRadius = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitRadius:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitSizeX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitSizeY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitPreviewOffsetX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", sInitPreviewOffsetY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "IconFallenUtils"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_122
    return-void
.end method

.method public static initFallenIconPivotY(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070955

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotY:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070956

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotYRowGrid4:F

    return-void
.end method

.method public static initItemFallenDistance(Landroid/content/Context;F[F)V
    .registers 19

    const-string v0, " sTransformCellX="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sTransformCellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07094c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFolderFocusCalculateOffset:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07095a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXStartOffset:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070959

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXEndOffset:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07094f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070951

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070953

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingBottom:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07095b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMaxWorkspaceUpOffset:F

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v2, :cond_b6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07095d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07095c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    goto :goto_d2

    :cond_b6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07094e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07094d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    :goto_d2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070986

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v6, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x4

    aput v5, v6, v7

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v6, v5, v7

    aget v8, p2, v3

    add-float/2addr v6, v8

    const/4 v8, 0x3

    aput v6, v5, v8

    aget v6, v5, v8

    aget v9, p2, v3

    add-float/2addr v6, v9

    const/4 v9, 0x2

    aput v6, v5, v9

    aget v6, v5, v9

    aget v10, p2, v3

    add-float/2addr v6, v10

    aput v6, v5, v4

    aget v6, v5, v4

    aget v10, p2, v3

    add-float/2addr v6, v10

    aput v6, v5, v3

    aget v5, p2, v9

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_115

    aget v2, p2, v9

    :cond_115
    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56X:[F

    aput v2, v5, v8

    aget v2, v5, v8

    aget v10, p2, v3

    add-float/2addr v2, v10

    aput v2, v5, v9

    aget v2, v5, v9

    aget v10, p2, v3

    add-float/2addr v2, v10

    aput v2, v5, v4

    aget v2, v5, v4

    aget v10, p2, v3

    add-float/2addr v2, v10

    aput v2, v5, v3

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f070949

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v11, 0x5

    aput v5, v2, v11

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v5, v2, v11

    aget v12, p2, v4

    add-float/2addr v5, v12

    aput v5, v2, v7

    aget v5, v2, v7

    aget v12, p2, v4

    add-float/2addr v5, v12

    aput v5, v2, v8

    aget v5, v2, v8

    aget v12, p2, v4

    add-float/2addr v5, v12

    aput v5, v2, v9

    aget v5, v2, v9

    aget v12, p2, v4

    add-float/2addr v5, v12

    aput v5, v2, v4

    aget v5, v2, v4

    aget v12, p2, v4

    add-float/2addr v5, v12

    aput v5, v2, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v5, ","

    if-eqz v2, :cond_1ab

    const-string v2, "before boundaryCheck: sEndPosition56Y - "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v11

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v7

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v8

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v9

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v12, v3

    invoke-static {v2, v12, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_1ab
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    aget v10, p2, v8

    cmpl-float v10, v10, v6

    if-eqz v10, :cond_1bc

    aget v2, p2, v8

    :cond_1bc
    sget-object v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aput v2, v10, v7

    aget v2, v10, v7

    aget v12, p2, v4

    add-float/2addr v2, v12

    aput v2, v10, v8

    aget v2, v10, v8

    aget v12, p2, v4

    add-float/2addr v2, v12

    aput v2, v10, v9

    aget v2, v10, v9

    aget v12, p2, v4

    add-float/2addr v2, v12

    aput v2, v10, v4

    aget v2, v10, v4

    aget v12, p2, v4

    add-float/2addr v2, v12

    aput v2, v10, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_217

    const-string v2, "before boundaryCheck: sBigFolderEndPosition56Y - "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v7, v10, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v7, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v7, v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v5, v5, v3

    invoke-static {v2, v5, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_217
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v2

    const v5, 0x7f070954

    if-nez v2, :cond_22e

    sput v6, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    goto :goto_24a

    :cond_22e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070952

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    add-float/2addr v2, v5

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    :goto_24a
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v2, p1

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v2

    move v2, v3

    :goto_258
    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    const-string v9, "]:"

    if-ge v2, v8, :cond_2a1

    sget-object v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v12, v10, v2

    add-float/2addr v12, v5

    sget v13, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    div-float v14, v13, v7

    const/high16 v15, 0x40a00000  # 5.0f

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    aput v12, v10, v2

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_289

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v10, v8, v2

    add-float/2addr v10, v5

    div-float/2addr v13, v7

    mul-float/2addr v13, v15

    sub-float/2addr v10, v13

    aput v10, v8, v2

    const-string/jumbo v8, "sBigFolderEndPosition56Y["

    invoke-static {v8, v2, v9}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v10, v10, v2

    invoke-static {v8, v10, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_289
    const-string/jumbo v8, "sEndPosition56Y["

    invoke-static {v8, v2, v9}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_258

    :cond_2a1
    invoke-static/range {p0 .. p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->boundaryCheck(Landroid/content/Context;)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr v2, v5

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    const/high16 v7, 0x40400000  # 3.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v2

    sput v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMaxWorkspaceUpOffset:F

    cmpg-float v7, v5, v2

    if-gez v7, :cond_2b8

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    goto :goto_2c0

    :cond_2b8
    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2c0

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    :cond_2c0
    :goto_2c0
    move v2, v3

    :goto_2c1
    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    if-ge v2, v5, :cond_33c

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v2

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_339

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56X:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_339

    const-string v5, "initItemFallenDistance realScreenWidth:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderEndPosition56X["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56X:[F

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderOriginalPositionX["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderOffset56X["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    aget v7, v7, v2

    invoke-static {v5, v7, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c1

    :cond_33c
    move v2, v3

    :goto_33d
    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    if-ge v2, v5, :cond_401

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr v7, v8

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    sub-float/2addr v7, v8

    aput v7, v5, v2

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_382

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v5, :cond_382

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ne v5, v11, :cond_382

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v7, v7, v2

    sub-float/2addr v5, v7

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    aget v7, v7, v2

    sub-float/2addr v5, v7

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    sub-float/2addr v5, v7

    sput v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aput v6, v5, v3

    :cond_382
    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_3fd

    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget-object v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionY:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr v7, v8

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    sub-float/2addr v7, v8

    aput v7, v5, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_3fd

    const-string v5, "initItemFallenDistance realScreenHeight:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderEndPosition56Y["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderOriginalPositionY["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionY:[F

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sOffsetYWorkSpace:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sNavigationOffset:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",sBigFolderOffsetY["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    aget v7, v7, v2

    invoke-static {v5, v7, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_3fd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_33d

    :cond_401
    return-void
.end method

.method public static initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v1, :cond_49

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v2, v1

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    sub-int/2addr v1, p0

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    :cond_49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    const-string v3, "IconFallenUtils"

    if-eqz v1, :cond_78

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset icon scale,info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Icon"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    const-string v5, "initItemFallenDistance catch exception: = "

    const-string v6, "]="

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_17a

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v4, v9

    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionY:[F

    iget v10, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v10, v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v10

    aget v11, v2, v7

    add-int/2addr v11, v4

    int-to-float v4, v11

    aput v4, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_104

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v4, v1

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v4, v5

    :try_start_c6
    sget-object v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v9

    aget v10, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v10, p1

    int-to-float p1, v10

    aput p1, v5, v9

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget v1, v1, v4

    sub-float/2addr v0, v1

    aput v0, p1, v5
    :try_end_ed
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c6 .. :try_end_ed} :catch_ee

    goto :goto_145

    :catch_ee
    move-exception p1

    const-string v0, "initBigFolderFallenDistance catch exception: = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    :cond_104
    :try_start_104
    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    iget v9, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v9

    aget v10, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v10, p1

    int-to-float p1, v10

    aput p1, v4, v9

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOriginalPositionX:[F

    iget v9, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v9

    aget v1, v1, v9

    sub-float/2addr v0, v1

    aput v0, p1, v4
    :try_end_131
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_104 .. :try_end_131} :catch_132

    goto :goto_145

    :catch_132
    move-exception p1

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_145
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_285

    const-string p1, "initItemFallenDistance BigFolder sBigFolderOriginalPositionY["

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  sBigFolderOriginalPositionX["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v8

    invoke-static {p1, p0, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_285

    :cond_17a
    instance-of v4, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v4, :cond_285

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v9, 0x3ec92492

    mul-float/2addr v4, v9

    float-to-int v4, v4

    instance-of v9, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v9, :cond_199

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v4

    div-int/2addr v4, v1

    goto :goto_1ad

    :cond_199
    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1ae

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/2addr v4, v1

    :goto_1ad
    add-int/2addr v4, v9

    :cond_1ae
    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    iget v10, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v10, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v10

    aget v11, v2, v7

    add-int/2addr v11, v4

    int-to-float v4, v11

    aput v4, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_20f

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v4, v7

    sget v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sub-int/2addr v4, v9

    iget v9, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v4, v9

    :try_start_1d3
    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v10

    aget v11, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v11, p1

    int-to-float p1, v11

    aput p1, v9, v10

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v1, v7

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget v4, v9, v4

    sub-float/2addr v0, v4

    aput v0, p1, v1
    :try_end_1fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d3 .. :try_end_1fa} :catch_1fb

    goto :goto_252

    :catch_1fb
    move-exception p1

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_252

    :cond_20f
    :try_start_20f
    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v5}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v5

    aget v9, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v9, p1

    int-to-float p1, v9

    aput p1, v4, v5

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v1, v7

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v5}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v5

    aget v4, v4, v5

    sub-float/2addr v0, v4

    aput v0, p1, v1
    :try_end_23c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_20f .. :try_end_23c} :catch_23d

    goto :goto_252

    :catch_23d
    move-exception p1

    const-string v0, "initItemFallenDistance catch exception = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_252
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_285

    const-string p1, "initItemFallenDistance BubbleTextView sOriginalPositionY["

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  sOriginalPositionX["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v8

    invoke-static {p1, p0, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_285
    :goto_285
    return-void
.end method

.method public static initItemFallenEndPosition(Landroid/view/View;IF)V
    .registers 14

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_177

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const-string v3, ", title = "

    const-string v4, "IconFallenUtils"

    const-string v5, "]="

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_ab

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float p1, p2, p1

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    invoke-static {p1, v2, v6, p0}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p0

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    sub-float/2addr p2, v2

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    invoke-static {p2, v2, v6, p1}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p1

    sget-object p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionX:[[F

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    aget-object p2, p2, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v2

    aget v6, v1, v7

    int-to-float v6, v6

    add-float/2addr v6, p0

    aput v6, p2, v2

    sget-object p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderPositionY:[[F

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    aget-object p2, p2, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v2

    aget v6, v1, v8

    int-to-float v6, v6

    add-float/2addr v6, p1

    aput v6, p2, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_177

    const-string p2, "initItemFallenEndPosition sBigFolderPositionX["

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v7

    int-to-float v2, v2

    add-float/2addr v2, p0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "  sBigFolderPositionY["

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v1, v8

    int-to-float p0, p0

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p2, p0, v4}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_177

    :cond_ab
    if-nez p1, :cond_af

    move p1, v8

    goto :goto_b0

    :cond_af
    move p1, v7

    :goto_b0
    if-eqz p1, :cond_b9

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    goto :goto_bf

    :cond_b9
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    :goto_bf
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_dc

    if-eqz p1, :cond_d6

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    goto :goto_dc

    :cond_d6
    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    :cond_dc
    :goto_dc
    if-eqz p1, :cond_f7

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[F

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p1

    aget-object p0, p0, p1

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p1, v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p1

    sget-object v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v2, v9, v2

    div-float/2addr p2, v6

    sub-float/2addr v2, p2

    aput v2, p0, p1

    goto :goto_127

    :cond_f7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[F

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v9

    aget-object p1, p1, v9

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v9, v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    sget-object v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v2, v10, v2

    sub-float/2addr p0, v2

    div-float/2addr p2, v6

    sub-float/2addr p0, p2

    aput p0, p1, v9

    :goto_127
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[F

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p1

    aget-object p0, p0, p1

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p1, v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p1

    aget p2, v1, v8

    int-to-float p2, p2

    aput p2, p0, p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_177

    const-string p0, "initItemFallenEndPosition sEndPositionX["

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  sEndPositionY["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p1, v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v8

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, p1, v4}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_177
    :goto_177
    return-void
.end method

.method public static initLinesInfo(III)V
    .registers 3

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    sput p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    sput p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    return-void
.end method

.method public static initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    sput-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method

.method private static isCurLargeIconSize(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0
    :try_end_8
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_22

    :catch_9
    move-exception v0

    const-string v1, "getUxIconConfig e:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    const/16 v1, 0x1482

    if-le p0, v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    return v0
.end method

.method private static recomputeBuildBackground(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V
    .registers 16

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    mul-float/2addr v0, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v0, v3

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    sub-float/2addr v1, v4

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    new-instance v3, Lcom/android/launcher3/folder/big/ConvertBgParams;

    sget v6, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitRadius:F

    float-to-int v7, v2

    float-to-int v8, v4

    sget v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    sget v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/folder/big/ConvertBgParams;-><init>(FIIFFFF)V

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitRadius:F

    invoke-static {p1, v2, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    mul-float/2addr v4, v2

    invoke-static {p1, v2, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    mul-float/2addr v4, v2

    invoke-static {p2, v2, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    add-float v4, v2, v0

    invoke-static {p1, v2, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v9

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    add-float v4, v2, v1

    invoke-static {p2, v2, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/folder/big/ConvertBgParams;->updateBg(FIIFF)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderBackground;

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    add-float v4, v3, v0

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    add-float v4, v3, v1

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "recomputeBuildBackground: , valueX = "

    const-string v3, ", valueY = "

    const-string v4, ", transX = "

    invoke-static {v2, p1, v3, p2, v4}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", transY = "

    const-string v2, ", toPreviewOffsetX = "

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    sget p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", toPreviewOffsetY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", toX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", toY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconFallenUtils"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setIconFalling(Z)V

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setMBgParams(Lcom/android/launcher3/folder/big/ConvertBgParams;)V

    return-void
.end method

.method private static recomputeBuildPage(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;FF)V
    .registers 12

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleX:F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderFallenCompletedStateScaleY:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    mul-float/2addr v2, v0

    move v3, v0

    goto :goto_11

    :cond_d
    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    mul-float/2addr v2, v1

    move v3, v1

    :goto_11
    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeX:F

    mul-float/2addr v4, v0

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    mul-float v5, v0, v3

    const/high16 v6, 0x40400000  # 3.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40c00000  # 6.0f

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v4, v7

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSizeY:F

    mul-float/2addr v8, v1

    mul-float/2addr v0, v3

    mul-float/2addr v0, v6

    sub-float/2addr v8, v0

    sub-float/2addr v8, v5

    div-float/2addr v8, v7

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingX:F

    invoke-static {p1, v0, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingX(F)V

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingY:F

    invoke-static {p2, v0, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingY(F)V

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    mul-float v1, v0, v3

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    mul-float v1, v0, v3

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapX(F)V

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    invoke-static {p2, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapY(F)V

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-static {p1, v0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetX(F)V

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    invoke-static {p2, p1, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetY(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_bc

    const-string/jumbo p0, "recomputeBuildPage: , toPaddingX = "

    const-string p1, ", toPaddingY = "

    const-string p2, ", toGap = "

    invoke-static {p0, v4, p1, v8, p2}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", toOffsetX = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", toOffsetY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", toScale = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    mul-float/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", toSubIconSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    mul-float/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconFallenUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    return-void
.end method

.method public static resetBigFolderRecomputeBuildParams(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 11

    const-string/jumbo v0, "start resetBigFolderRecomputeBuildParams, caller: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    move-object v2, v0

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/folder/big/BigFolderBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->init(Landroid/content/Context;IIFZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingX:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingX(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingY:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingY(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    iput v2, v9, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    iput v2, v9, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapX(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapY(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetX(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    invoke-virtual {v9, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetY(F)V

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_128

    const-string/jumbo v0, "resetBigFolderRecomputeBuildParams: sInitPaddingX = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitPaddingY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPaddingY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitSubIconSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitSubIconSize:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitGapX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitGapY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitGapY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitOffsetX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitOffsetY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitOffsetY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitPreviewOffsetX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitPreviewOffsetY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitPreviewOffsetY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sInitY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sInitY:F

    invoke-static {v0, v2, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_128
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPreviewParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setIconFalling(Z)V

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setMBgParams(Lcom/android/launcher3/folder/big/ConvertBgParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public static setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V
    .registers 11

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    if-nez v0, :cond_f

    const-string/jumbo p0, "setFallenIconEndPos - view\'s tag is null, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffsetY:[F

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v5

    aget v4, v4, v5

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    sub-int/2addr v5, v3

    goto :goto_37

    :cond_2a
    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v5

    aget v4, v4, v5

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_X_NUM5:I

    :goto_37
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    if-nez p1, :cond_3e

    const/4 v4, -0x1

    goto :goto_3f

    :cond_3e
    move v4, v3

    :goto_3f
    if-nez p1, :cond_47

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int v6, v5, v6

    sub-int/2addr v6, v3

    goto :goto_4d

    :cond_47
    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v6}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v6

    :goto_4d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_65

    if-ne p1, v3, :cond_5f

    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v5, p0

    add-int/lit8 v6, v5, -0x1

    goto :goto_65

    :cond_5f
    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v6

    :cond_65
    :goto_65
    const-string p0, "cellY : "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cellX : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0, p1, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v2, :cond_8d

    int-to-float p0, v4

    :try_start_7d
    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderOffset56X:[F

    aget p1, p1, v6

    mul-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    check-cast p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p2, p0, p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    goto :goto_c2

    :cond_8d
    int-to-float p0, v4

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v6

    mul-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V
    :try_end_9c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7d .. :try_end_9c} :catch_9d

    goto :goto_c2

    :catch_9d
    move-exception p0

    const-string p1, "catch exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",info:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",offsetIndex:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c2
    return-void
.end method

.method private static topBoundaryCheck(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    sub-float/2addr p0, v0

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(IZ)I

    move-result v1

    aget v0, v0, v1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_28

    return v2

    :cond_28
    :goto_28
    const/4 p0, 0x6

    const/4 v1, 0x1

    if-ge v2, p0, :cond_42

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v3, p0, v2

    sub-float/2addr v3, v0

    aput v3, p0, v2

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    sub-int/2addr p0, v1

    if-ge v2, p0, :cond_3f

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sBigFolderEndPosition56Y:[F

    aget v1, p0, v2

    sub-float/2addr v1, v0

    aput v1, p0, v2

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_42
    return v1
.end method

.method private static transformCellX(I)I
    .registers 2

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    add-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static transformCellY(IZ)I
    .registers 10

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, p0, 0x2

    goto :goto_10

    :cond_c
    add-int/lit8 v0, p0, 0x1

    goto :goto_10

    :cond_f
    move v0, p0

    :goto_10
    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1c

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_b4

    :cond_1c
    if-ne v2, v5, :cond_22

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_b4

    :cond_22
    if-ne v2, v1, :cond_28

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_b4

    :cond_28
    if-ne v2, v4, :cond_2e

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v6, :cond_b4

    :cond_2e
    if-eq v2, v3, :cond_b4

    const/4 v7, 0x6

    if-ne v2, v7, :cond_35

    goto/16 :goto_b4

    :cond_35
    if-ne v2, v6, :cond_3b

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v6, :cond_4d

    :cond_3b
    if-ne v2, v5, :cond_41

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v6, :cond_4d

    :cond_41
    if-ne v2, v1, :cond_47

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v6, :cond_4d

    :cond_47
    if-ne v2, v4, :cond_53

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v7, :cond_53

    :cond_4d
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ge v1, v3, :cond_c6

    goto/16 :goto_c2

    :cond_53
    if-ne v2, v6, :cond_59

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eqz v7, :cond_65

    :cond_59
    if-ne v2, v5, :cond_5f

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eqz v7, :cond_65

    :cond_5f
    if-ne v2, v1, :cond_77

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v7, :cond_77

    :cond_65
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ge v1, v4, :cond_6c

    add-int/lit8 v0, p0, 0x2

    goto :goto_c6

    :cond_6c
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v1

    if-ne v1, v3, :cond_c6

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ne v1, v4, :cond_c6

    goto :goto_c2

    :cond_77
    if-ne v2, v6, :cond_7d

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v1, :cond_83

    :cond_7d
    if-ne v2, v5, :cond_8a

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v7, v1, :cond_8a

    :cond_83
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-lez v1, :cond_c6

    add-int/lit8 v0, p0, -0x1

    goto :goto_c6

    :cond_8a
    if-ne v2, v6, :cond_90

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v4, :cond_a2

    :cond_90
    if-ne v2, v5, :cond_96

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v4, :cond_a2

    :cond_96
    if-ne v2, v1, :cond_9c

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v1, :cond_a2

    :cond_9c
    if-ne v2, v4, :cond_a9

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v1, v5, :cond_a9

    :cond_a2
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-le v1, v6, :cond_c6

    add-int/lit8 v0, p0, -0x2

    goto :goto_c6

    :cond_a9
    if-ne v2, v6, :cond_c6

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v1, v3, :cond_c6

    if-le v1, v5, :cond_c6

    add-int/lit8 v0, p0, -0x3

    goto :goto_c6

    :cond_b4
    :goto_b4
    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v0, :cond_c5

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ne v0, v4, :cond_c5

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v0

    if-ne v0, v3, :cond_c5

    :goto_c2
    add-int/lit8 v0, p0, 0x1

    goto :goto_c6

    :cond_c5
    move v0, p0

    :cond_c6
    :goto_c6
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    if-lt v0, v1, :cond_f8

    const-string/jumbo v1, "transformCellY result error,originalCellY:"

    const-string v2, ",sLines:"

    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sFirstLine:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f8
    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sGRID_Y_NUM6:I

    if-eqz p1, :cond_fe

    add-int/lit8 p0, p0, -0x1

    :cond_fe
    sub-int/2addr p0, v6

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
