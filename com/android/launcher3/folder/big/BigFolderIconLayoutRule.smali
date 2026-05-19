.class public final Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;
.super Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

.field private static final TAG:Ljava/lang/String; = "BigFolderIconLayoutRule"


# instance fields
.field private animOffsetX:F

.field private animOffsetY:F

.field private availableSpaceX:I

.field private availableSpaceY:I

.field private mLastBgPaddingHorizontal:I

.field private mLastStableAvailableSpaceX:I

.field private mLastStableIconSize:I

.field private mPreviewPaddingX:F

.field private mPreviewPaddingY:F

.field private mPreviewSubIconGapX:F

.field private mPreviewSubIconGapY:F

.field private mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

.field private mStackedBaselineSubIconRealSize:F

.field private mStackedBaselineSubIconScale:F

.field private mStackedBaselineSubIconSize:F

.field private mStackedPreviewSubIconGap:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->Companion:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;-><init>()V

    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 10

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    div-int v0, p1, p2

    rem-int/2addr p1, p2

    iget-boolean v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/4 v2, 0x1

    invoke-static {p2, p1, v2, v1}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/4 v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    mul-float v5, v3, v4

    add-float/2addr v5, v1

    mul-float/2addr v5, p1

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    add-float/2addr v5, p1

    add-float/2addr v5, v4

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    add-float/2addr v5, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    add-float/2addr v3, p1

    add-float/2addr v3, v0

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    add-float/2addr v3, p0

    if-nez p3, :cond_35

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, v5, v3, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_53

    :cond_35
    iget p0, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    cmpg-float p0, p0, v5

    const/4 p1, 0x0

    if-nez p0, :cond_3e

    move p0, v2

    goto :goto_3f

    :cond_3e
    move p0, p1

    :goto_3f
    if-eqz p0, :cond_4e

    iget p0, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    cmpg-float p0, p0, v3

    if-nez p0, :cond_49

    move p0, v2

    goto :goto_4a

    :cond_49
    move p0, p1

    :goto_4a
    if-nez p0, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, p1

    :cond_4e
    :goto_4e
    iput-boolean v2, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    invoke-virtual {p3, v5, v3, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_53
    return-object p3
.end method

.method public final getAnimOffsetX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    return p0
.end method

.method public final getAnimOffsetY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    return p0
.end method

.method public getFolderAnimParma(Lcom/android/launcher3/BubbleTextView;I)Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;
    .registers 7

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;

    invoke-direct {p2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;-><init>()V

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    add-float/2addr v0, v2

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingX:F

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    add-float/2addr v0, v3

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingY:F

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemWidthWithGap:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    iput v3, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemHeightWithGap:F

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iput p0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p1, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewColumn:I

    iget p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    return-object p2
.end method

.method public final getMPreviewPaddingX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    return p0
.end method

.method public final getMPreviewPaddingY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    return p0
.end method

.method public final getMPreviewSubIconGapX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    return p0
.end method

.method public final getMPreviewSubIconGapY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    return p0
.end method

.method public final getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-object p0
.end method

.method public final getMStackedBaselineSubIconRealSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconRealSize:F

    return p0
.end method

.method public final getMStackedBaselineSubIconScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconScale:F

    return p0
.end method

.method public final getMStackedBaselineSubIconSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconSize:F

    return p0
.end method

.method public final getMStackedPreviewSubIconGap()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedPreviewSubIconGap:F

    return p0
.end method

.method public getStyleBoundOffset()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;IIFZ)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p4, p5}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p4

    iget-object p4, p4, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object p4, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-eqz p4, :cond_fb

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIsLandscape()Z

    move-result p5

    const/4 v0, 0x2

    if-nez p5, :cond_28

    iget p5, p4, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v1

    sub-int/2addr p5, v1

    mul-int/2addr p5, v0

    goto :goto_2f

    :cond_28
    iget p5, p4, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getBubbleIconSize()I

    move-result v1

    add-int/2addr p5, v1

    :goto_2f
    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastStableAvailableSpaceX:I

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_44

    :cond_35
    sub-int v1, p5, v1

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastBgPaddingHorizontal:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_44
    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIconUnitSize()I

    move-result v2

    int-to-float v2, v2

    if-eqz v1, :cond_63

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastStableIconSize:I

    if-eqz v3, :cond_63

    if-eq p5, p2, :cond_63

    sub-int/2addr p5, p2

    int-to-float p5, p5

    int-to-float v1, v1

    div-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastStableIconSize:I

    int-to-float v1, v1

    invoke-static {p5, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    goto :goto_70

    :cond_63
    iput v2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    float-to-int v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastStableIconSize:I

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastStableAvailableSpaceX:I

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mLastBgPaddingHorizontal:I

    :goto_70
    iget p5, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr p5, v1

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMWorkspaceIconSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p5, v2

    iput p5, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iget p5, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p5, v2

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMStackedIconPadding()I

    move-result v3

    mul-int/2addr v3, v0

    int-to-float v3, v3

    sub-float/2addr p5, v3

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconSize:F

    iget v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    div-float v3, v1, v3

    mul-float/2addr v3, p5

    iput v3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconRealSize:F

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMWorkspaceIconSize()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr v3, p5

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconScale:F

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getOdp()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p5

    iget p5, p5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p5, p5

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconRealSize:F

    int-to-float v0, v0

    const/high16 v3, 0x40800000  # 4.0f

    invoke-static {v1, v0, p5, v3}, Le/a;->a(FFFF)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedPreviewSubIconGap:F

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingHorizontal()F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    int-to-float p5, p2

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingHorizontal()F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr p5, v1

    const/4 v1, 0x3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    mul-float/2addr v3, v1

    sub-float/2addr p5, v3

    const/4 v3, 0x6

    int-to-float v3, v3

    div-float/2addr p5, v3

    iput p5, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    invoke-static {p1}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_ec

    int-to-float p1, p3

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result p5

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result v4

    sub-int/2addr p5, v4

    int-to-float p5, p5

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result v4

    div-float/2addr v4, v0

    sub-float/2addr p5, v4

    sub-float/2addr p1, p5

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result p4

    mul-float/2addr p4, v2

    sub-float/2addr p1, p4

    iget p4, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    goto :goto_f5

    :cond_ec
    int-to-float p1, p3

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result p4

    mul-float/2addr p4, v2

    sub-float/2addr p1, p4

    iget p4, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    :goto_f5
    invoke-static {v1, p4, p1, v3}, Le/a;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    :cond_fb
    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->availableSpaceX:I

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->availableSpaceY:I

    return-void
.end method

.method public final setAnimOffsetX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    return-void
.end method

.method public final setAnimOffsetY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    return-void
.end method

.method public final setMPreviewPaddingX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    return-void
.end method

.method public final setMPreviewPaddingY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    return-void
.end method

.method public final setMPreviewSubIconGapX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    return-void
.end method

.method public final setMPreviewSubIconGapY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    return-void
.end method

.method public final setMSizeConfig(Lcom/android/launcher3/folder/big/SizeSpacingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-void
.end method

.method public final setMStackedBaselineSubIconRealSize(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconRealSize:F

    return-void
.end method

.method public final setMStackedBaselineSubIconScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconScale:F

    return-void
.end method

.method public final setMStackedBaselineSubIconSize(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedBaselineSubIconSize:F

    return-void
.end method

.method public final setMStackedPreviewSubIconGap(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mStackedPreviewSubIconGap:F

    return-void
.end method
