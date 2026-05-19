.class public Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;
.super Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusClippedFolderIconLayoutRule"


# instance fields
.field public mBaselineIconSize:F

.field public mPreviewContentSpace:I

.field public mPreviewPadding:F

.field public mPreviewSubIconGap:I

.field public mStyleBoundOffset:F

.field public sMaxColsInPreview:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    return-void
.end method

.method private getStyleOffset()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleBoundOffset()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 8

    const/4 p2, 0x1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_11

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    rem-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {p1, v1, p2, v2}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    goto :goto_2d

    :cond_11
    const/4 v0, -0x3

    if-ne p1, v0, :cond_21

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 v0, p1, -0x1

    rem-int v1, p1, p1

    iget-boolean v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {p1, v1, p2, v2}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    goto :goto_2d

    :cond_21
    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    div-int v1, p1, v0

    rem-int/2addr p1, v0

    iget-boolean v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {v0, p1, p2, v2}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    move v0, v1

    :goto_2d
    int-to-float p1, p1

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    int-to-float v2, v1

    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    int-to-float v1, v1

    add-float/2addr p2, v1

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    add-float/2addr p2, v3

    float-to-int p1, p2

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    if-nez p3, :cond_4f

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    int-to-float p2, v2

    int-to-float p1, p1

    invoke-direct {p3, p2, p1, p0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_54

    :cond_4f
    int-to-float p2, v2

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1, p0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_54
    return-object p3
.end method

.method public computePreviewItemDrawingParamsForDropFolder(ILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_10

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 v2, p1, 0x1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {p1, v0, v1, v3}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    goto :goto_29

    :cond_10
    const/4 v2, -0x3

    if-ne p1, v2, :cond_1e

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 v2, p1, -0x1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {p1, v0, v1, v3}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    goto :goto_29

    :cond_1e
    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    div-int v2, p1, v0

    rem-int/2addr p1, v0

    iget-boolean v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    invoke-static {v0, p1, v1, v3}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    :goto_29
    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    int-to-float v3, v1

    add-float/2addr v3, v0

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    add-float/2addr v3, p1

    float-to-int v3, v3

    int-to-float v2, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    if-nez p2, :cond_47

    new-instance p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    int-to-float v0, v3

    int-to-float p1, p1

    invoke-direct {p2, v0, p1, p0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_4c

    :cond_47
    int-to-float v0, v3

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_4c
    return-object p2
.end method

.method public getFolderAnimParma(Lcom/android/launcher3/BubbleTextView;I)Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;
    .registers 5

    new-instance p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;

    invoke-direct {p2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;-><init>()V

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingX:F

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingY:F

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemWidthWithGap:F

    iput v0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemHeightWithGap:F

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iput p0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p1, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewColumn:I

    iget p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p0, p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    return-object p2
.end method

.method public getPreviewContentClipRect()Landroid/graphics/Rect;
    .registers 5

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewContentSpace:I

    add-int v3, v0, v2

    add-int/2addr v2, v0

    invoke-direct {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleOffset()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleOffset()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public getPreviewStyleBoundOffset()F
    .registers 2

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getStyleBoundBase()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    return p0
.end method

.method public getStyleBoundOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    return p0
.end method

.method public init(Landroid/content/Context;IFZ)V
    .registers 5

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    instance-of p2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-static {p2}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxCol(Z)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    iget p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    iget p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    const p1, 0x7f07085a

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    const p1, 0x7f07085b

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    iget p3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    const/high16 p4, 0x40000000  # 2.0f

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewContentSpace:I

    iget p3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 p4, p3, -0x1

    mul-int/2addr p4, p1

    sub-int/2addr p2, p4

    int-to-float p1, p2

    int-to-float p2, p3

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    mul-float/2addr p1, p3

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_d3

    const-string p1, "init FolderIconLayout:mIconSize is :"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewContentSpace is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewContentSpace:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mBaselineIconSize is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mBaselineIconScale is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mAvailableSpace = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewPadding = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mStyleBoundOffset = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", caller = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Folder"

    const-string p2, "OplusClippedFolderIconLayoutRule"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    return-void
.end method

.method public scaleForItem(I)F
    .registers 2

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", mBaselineIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", mBaselineIconScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", mAvailableSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", mPreviewPadding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", mStyleBoundOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
