.class public abstract Lcom/android/quickstep/touch/OplusBasePortraitPagedViewHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBasePortraitPagedViewHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBasePortraitPagedViewHandler.kt\ncom/android/quickstep/touch/OplusBasePortraitPagedViewHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,419:1\n1#2:420\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyIconRectOffset(Landroid/graphics/RectF;FI)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x3

    if-ne p3, p0, :cond_17

    if-eqz p1, :cond_10

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->top:F

    :cond_10
    if-eqz p1, :cond_17

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_17
    return-void
.end method

.method public applyOffset(Landroid/graphics/PointF;FIZ)V
    .registers 5

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p0

    if-eqz p0, :cond_18

    if-eqz p4, :cond_f

    return-void

    :cond_f
    iget p0, p1, Landroid/graphics/PointF;->x:F

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_20

    :cond_18
    const/4 p0, 0x3

    if-ne p3, p0, :cond_20

    iget p0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    :cond_20
    :goto_20
    return-void
.end method

.method public calculateCapsuleWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .registers 6

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetRect"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public calculatePreviewCurrentCropRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 6

    const-string p0, "cropRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "startCropRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetCropRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {p4, p0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-static {p4, p0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iget p2, p3, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-static {p4, p0, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public calculatePreviewRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)V
    .registers 6

    const-string/jumbo p0, "preWindowRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "winSourceRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "profile"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    if-eqz p5, :cond_21

    const p3, 0x7f070814

    goto :goto_24

    :cond_21
    const p3, 0x7f070ad4

    :goto_24
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iput p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    const/4 p0, 0x2

    if-eqz p5, :cond_47

    const p5, 0x7f070811

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    goto :goto_4e

    :cond_47
    const p5, 0x7f070ad3

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    :goto_4e
    sub-float/2addr p3, p4

    int-to-float p0, p0

    div-float/2addr p3, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    sub-float/2addr p0, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    sub-float/2addr p2, p4

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public calculatePreviewTargetCropRect(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/content/res/Resources;)V
    .registers 6

    const-string p0, "cropRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "winSourceRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f070814

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const v0, 0x7f070811

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, p0

    mul-float/2addr p2, p3

    sub-float/2addr v1, p2

    float-to-int p0, v1

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public calculateProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F
    .registers 4

    const-string p0, "current"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "origin"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1, p3}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p0

    return p0
.end method

.method public calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V
    .registers 5

    const-string/jumbo p0, "startRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "radius"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f070d97

    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iput p0, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F
    .registers 4

    const-string p0, "current"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "src"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_28

    const/4 p0, 0x1

    if-eq p3, p0, :cond_1f

    const/4 p0, 0x2

    if-eq p3, p0, :cond_28

    const/4 p0, 0x3

    if-eq p3, p0, :cond_1f

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_30

    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_30

    :cond_28
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_30
    div-float/2addr p0, p1

    return p0
.end method

.method public calculateStartCapsuleRect(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .registers 5

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "capsuleRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, p0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p2, p0, v0, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 5

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F
    .registers 4

    const-string/jumbo p0, "winRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p0, p3

    div-float/2addr p0, p2

    return p0
.end method

.method public delegateScrollBy(Lcom/android/launcher3/PagedView;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;III)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    :cond_b
    return-void
.end method

.method public delegateScrollTo(Lcom/android/launcher3/PagedView;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    :cond_9
    return-void
.end method

.method public delegateScrollTo(Lcom/android/launcher3/PagedView;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;II)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    :cond_5
    return-void
.end method

.method public getAdjacentTaskViewAnimDisplacement(Landroid/graphics/PointF;FZ)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_9

    :cond_3
    if-eqz p3, :cond_6

    goto :goto_7

    :cond_6
    neg-float p2, p2

    :goto_7
    iput p2, p1, Landroid/graphics/PointF;->x:F

    :goto_9
    if-nez p1, :cond_c

    goto :goto_f

    :cond_c
    const/4 p0, 0x0

    iput p0, p1, Landroid/graphics/PointF;->y:F

    :goto_f
    return-void
.end method

.method public getAdjantTaskViewVisibleDistance(Landroid/view/View;II)F
    .registers 4

    const-string/jumbo p0, "parentView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, p3

    int-to-float p0, p0

    return p0
.end method

.method public getChildStartWithTranslation(Landroid/view/View;)F
    .registers 2

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    add-float/2addr p1, p0

    return p1
.end method

.method public getClearAllPanelViewTranslationX(IFZ)F
    .registers 4

    if-eqz p3, :cond_5

    int-to-float p0, p1

    sub-float p2, p0, p2

    :cond_5
    return p2
.end method

.method public getClearAllPanelViewTranslationY(IFZ)F
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getCurveProperties(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;",
            "Landroid/graphics/Rect;",
            "Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;",
            ")V"
        }
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insets"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "out"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->setScroll(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->setHalfPageSize(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->setHalfScreenSize(I)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getHalfPageSize()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p3, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->setScreenCenter(I)V

    return-void
.end method

.method public getDismissTaskOffset(Landroid/view/View;)I
    .registers 2

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ge p0, p1, :cond_11

    move p0, p1

    :cond_11
    return p0
.end method

.method public getEmptyMessageLayoutTranslationX(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5

    const-string/jumbo p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "emptyMessageLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "taskSize"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "padding"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    iget p2, p4, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    shr-int/lit8 p2, p2, 0x1

    add-int/2addr p0, p2

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5

    const-string/jumbo p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    return p0
.end method

.method public getGroupedTaskThumbnailViewCenterPoint(III)Landroid/graphics/PointF;
    .registers 4

    new-instance p0, Landroid/graphics/PointF;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public getOplusTaskMenuX(FLandroid/view/View;Landroid/view/View;IIZILandroid/content/res/Resources;)F
    .registers 9

    const-string/jumbo p0, "thumbnailView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "menuView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p0

    if-eqz p0, :cond_36

    if-eqz p6, :cond_27

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    goto :goto_38

    :cond_27
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    int-to-float p0, p7

    sub-float/2addr p1, p0

    goto :goto_39

    :cond_36
    if-eqz p6, :cond_39

    :goto_38
    neg-float p1, p1

    :cond_39
    :goto_39
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_51

    const p0, 0x7f0702db

    if-eqz p6, :cond_4b

    invoke-virtual {p8, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    goto :goto_51

    :cond_4b
    invoke-virtual {p8, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    :cond_51
    :goto_51
    return p1
.end method

.method public getOplusTaskMenuXOffset(Lcom/android/quickstep/views/TaskView;)I
    .registers 2

    const-string/jumbo p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getOplusTaskMenuY(FLandroid/view/View;Landroid/view/View;IIZILandroid/content/res/Resources;)F
    .registers 9

    const-string/jumbo p0, "thumbnailView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "menuView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p5

    add-float/2addr p1, p0

    return p1
.end method

.method public getOplusTaskMenuYOffset(Lcom/android/quickstep/views/TaskView;)I
    .registers 4

    const-string/jumbo p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_e

    move-object p0, p1

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const/4 v0, 0x0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtnImageBottom()I

    move-result p0

    sub-int/2addr v1, p0

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_30

    const p1, 0x7f070fb4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_30
    sub-int/2addr v1, v0

    neg-int v0, v1

    :cond_32
    return v0
.end method

.method public getTaskDragDisplacementFactor(ZZ)I
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public getTaskThumbnailTopMargin(Landroid/content/Context;)I
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "context.resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertDpToPixel(Landroid/content/res/Resources;I)I

    move-result p0

    goto :goto_31

    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070302

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_31
    return p0
.end method

.method public getTaskViewOffScreenDistance(Lcom/android/quickstep/views/RecentsView;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;)I"
        }
    .end annotation

    const-string/jumbo p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public isNegative(FZ)Z
    .registers 3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isPageViewPointInRect(Landroid/view/View;Landroid/graphics/Rect;II)Z
    .registers 5

    const-string/jumbo p0, "pageView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p2, p0, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isPositive(FZ)Z
    .registers 3

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public setAdjacentTaskViewTranslate(Landroid/view/View;FI)V
    .registers 4

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 3

    if-eqz p1, :cond_b

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_b
    return-void
.end method

.method public setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .registers 6

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 p0, -0x1

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_c
    return-void
.end method

.method public setPrimaryTranslate(Landroid/view/View;FI)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_6
    return-void
.end method

.method public updateAssistantScreenWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string p0, "crop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-static {p3, v0, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public updateCapsuleWindowCrop(Landroid/graphics/Rect;FFFFD)V
    .registers 10

    if-eqz p1, :cond_11

    float-to-int p0, p4

    float-to-double p4, p5

    float-to-double v0, p2

    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p6

    float-to-double p2, p3

    mul-double/2addr p6, p2

    sub-double/2addr p4, p6

    double-to-int p2, p4

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_11
    return-void
.end method

.method public updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V
    .registers 6

    const-string/jumbo p0, "windowCropRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_3a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3a

    :cond_1a
    if-eqz p4, :cond_2d

    const/4 p0, 0x2

    if-eq p4, p0, :cond_2d

    if-eqz p1, :cond_3a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3a

    :cond_2d
    if-eqz p1, :cond_3a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3a
    :goto_3a
    return-void
.end method

.method public updateIconSurfaceOffset(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)V
    .registers 7

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowRectF"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x3

    if-ne p6, p0, :cond_25

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p2, p4

    sub-float/2addr p0, p2

    add-float/2addr p0, p5

    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_25
    return-void
.end method

.method public updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V
    .registers 5

    const-string/jumbo p0, "windowCropRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_19

    const/4 p0, 0x2

    if-eq p4, p0, :cond_19

    if-eqz p1, :cond_26

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_26

    :cond_19
    if-eqz p1, :cond_26

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_26
    :goto_26
    return-void
.end method

.method public updateTaskViewWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string p0, "crop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-static {p3, v0, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V
    .registers 9

    const/4 p0, 0x0

    if-eqz p6, :cond_43

    const/4 p8, 0x1

    if-eq p6, p8, :cond_27

    const/4 p8, 0x2

    if-eq p6, p8, :cond_43

    const/4 p8, 0x3

    if-eq p6, p8, :cond_d

    goto :goto_62

    :cond_d
    if-eqz p1, :cond_62

    const/4 p6, 0x0

    if-eqz p7, :cond_17

    invoke-static {p2, p3, p6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    goto :goto_1b

    :cond_17
    invoke-static {p2, p6, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    :goto_1b
    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    float-to-int p0, p4

    iput p0, p1, Landroid/graphics/Rect;->right:I

    float-to-int p0, p5

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_62

    :cond_27
    if-eqz p1, :cond_62

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    if-eqz p7, :cond_36

    sub-float p0, p4, p3

    invoke-static {p2, p0, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_3c

    :cond_36
    sub-float p0, p4, p3

    invoke-static {p2, p4, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    :goto_3c
    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    float-to-int p0, p5

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_62

    :cond_43
    if-eqz p7, :cond_53

    if-eqz p1, :cond_62

    float-to-int p4, p4

    sub-float p3, p5, p3

    invoke-static {p2, p3, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p0, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_62

    :cond_53
    if-eqz p1, :cond_62

    iget p6, p1, Landroid/graphics/Rect;->top:I

    float-to-int p4, p4

    sub-float p3, p5, p3

    invoke-static {p2, p5, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p6, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_62
    :goto_62
    return-void
.end method
