.class public final Lcom/android/quickstep/IrregularPreviewHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mRightTranslate:F

.field private mThumbnailScale:F

.field private mTopTranslate:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final needClipForFlipDevice(FFLcom/android/systemui/shared/recents/model/ThumbnailData;)Z
    .registers 7

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p3, :cond_4d

    iget-object v0, p3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1f

    move v0, v2

    :cond_1f
    int-to-float v0, v0

    iget v2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr v0, v2

    invoke-static {p2, p1}, Ly4/h;->a(FF)F

    move-result p1

    cmpg-float p1, v0, p1

    const/4 p2, 0x1

    if-gez p1, :cond_2e

    move p1, p2

    goto :goto_2f

    :cond_2e
    move p1, v1

    :goto_2f
    if-eqz p1, :cond_4d

    iget p1, p3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-ne p1, p2, :cond_4d

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-nez p1, :cond_3e

    move p1, p2

    goto :goto_3f

    :cond_3e
    move p1, v1

    :goto_3f
    if-nez p1, :cond_4d

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p0, p0, p1

    if-nez p0, :cond_49

    move p0, p2

    goto :goto_4a

    :cond_49
    move p0, v1

    :goto_4a
    if-nez p0, :cond_4d

    move v1, p2

    :cond_4d
    return v1
.end method


# virtual methods
.method public final calculateThumbnailPositon(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILandroid/graphics/Matrix;)V
    .registers 10

    const-string/jumbo v0, "thumbnailBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "matrix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_21

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4e

    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    if-nez v0, :cond_4e

    :cond_21
    iget v0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-nez v0, :cond_4e

    int-to-float p2, p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    int-to-float p4, v1

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    int-to-float p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    invoke-static {p1, p3, p2, p4}, Le/a;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    invoke-virtual {p5, p1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_69

    :cond_4e
    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {p0, p3, p4, p2}, Lcom/android/quickstep/IrregularPreviewHelper;->needClipForFlipDevice(FFLcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr p1, p2

    sub-float/2addr p4, p1

    int-to-float p1, v1

    div-float/2addr p4, p1

    iput p4, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    invoke-virtual {p5, v2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_69

    :cond_67
    iput v2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    :goto_69
    return-void
.end method

.method public final calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFF)F
    .registers 8

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    move p2, p5

    :cond_d
    const/4 p5, 0x0

    iput p5, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result p1

    if-nez p1, :cond_26

    cmpl-float p1, p3, p4

    if-lez p1, :cond_23

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_26

    :cond_23
    mul-float/2addr p4, p6

    div-float/2addr p2, p4

    return p2

    :cond_26
    :goto_26
    mul-float/2addr p3, p6

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    return p2
.end method

.method public final clipIrregularCanvas(Landroid/graphics/Canvas;FFFFLcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 15

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_a0

    iget-object v0, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float v2, v0, v1

    iget v3, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_26

    iget p6, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    add-float/2addr p2, p6

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    add-float/2addr p3, p0

    sub-float/2addr p4, p6

    sub-float/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void

    :cond_26
    sget v4, Lcom/oplus/wrapper/app/WindowConfiguration;->WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v3, v4, :cond_3a

    cmpg-float v3, v1, v6

    if-nez v3, :cond_33

    move v3, v5

    goto :goto_34

    :cond_33
    move v3, v7

    :goto_34
    if-nez v3, :cond_3a

    mul-float/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3a
    iget v0, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_94

    iget v0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    cmpg-float v0, v0, v6

    if-nez v0, :cond_47

    move v0, v5

    goto :goto_48

    :cond_47
    move v0, v7

    :goto_48
    if-nez v0, :cond_94

    iget-object v0, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_54

    :cond_53
    move v0, v7

    :goto_54
    int-to-float v0, v0

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr v0, v1

    cmpg-float v1, v2, p5

    if-gez v1, :cond_64

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_64

    move v1, v5

    goto :goto_65

    :cond_64
    move v1, v7

    :goto_65
    cmpg-float v3, v0, v6

    if-nez v3, :cond_6b

    move v3, v5

    goto :goto_6c

    :cond_6b
    move v3, v7

    :goto_6c
    if-nez v3, :cond_79

    cmpg-float v0, v0, p4

    if-gez v0, :cond_79

    iget v0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_79

    goto :goto_7a

    :cond_79
    move v5, v7

    :goto_7a
    if-eqz v1, :cond_81

    iget p3, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    add-float v0, p3, v2

    goto :goto_82

    :cond_81
    move v0, p5

    :goto_82
    if-eqz v5, :cond_8b

    iget v3, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    add-float v4, p2, v3

    sub-float v3, p4, v3

    goto :goto_8d

    :cond_8b
    move v4, p2

    move v3, p4

    :goto_8d
    if-nez v1, :cond_91

    if-eqz v5, :cond_94

    :cond_91
    invoke-virtual {p1, v4, p3, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_94
    invoke-direct {p0, p4, p5, p6}, Lcom/android/quickstep/IrregularPreviewHelper;->needClipForFlipDevice(FFLcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result p3

    if-eqz p3, :cond_a0

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    add-float/2addr v2, p0

    invoke-virtual {p1, p2, p0, p4, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_a0
    return-void
.end method

.method public final setThumbnailScale(F)F
    .registers 2

    iput p1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    return p1
.end method
