.class public Lcom/android/quickstep/touch/OplusBaseSeascapePagedViewHandler;
.super Lcom/android/launcher3/touch/LandscapePagedViewHandler;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p0, p4

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iput p0, p1, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method public calculateStartCapsuleRect(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .registers 6

    const-string/jumbo p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "capsuleRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, p0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

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

.method public getClearAllPanelViewTranslationX(IFZ)F
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getClearAllPanelViewTranslationY(IFZ)F
    .registers 4

    if-eqz p3, :cond_3

    goto :goto_6

    :cond_3
    int-to-float p0, p1

    sub-float p2, p0, p2

    :goto_6
    return p2
.end method

.method public getDegreesRotated()F
    .registers 1

    const/high16 p0, 0x43870000  # 270.0f

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

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    iget p1, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5

    const-string/jumbo p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
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

    const p4, 0x3da3d70a  # 0.08f

    if-eqz p0, :cond_38

    if-eqz p6, :cond_2b

    neg-float p0, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    goto :goto_36

    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    :goto_36
    add-float/2addr p1, p0

    return p1

    :cond_38
    if-eqz p6, :cond_3c

    neg-float p0, p1

    goto :goto_49

    :cond_3c
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p4

    add-float/2addr p0, p1

    :goto_49
    return p0
.end method

.method public getOplusTaskMenuXOffset(Lcom/android/quickstep/views/TaskView;)I
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

.method public getOplusTaskMenuY(FLandroid/view/View;Landroid/view/View;IIZILandroid/content/res/Resources;)F
    .registers 9

    const-string/jumbo p0, "thumbnailView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "menuView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "resources"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0702db

    invoke-virtual {p8, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p2

    const p4, 0x3da3d70a  # 0.08f

    if-eqz p2, :cond_2d

    if-eqz p6, :cond_26

    goto :goto_38

    :cond_26
    int-to-float p2, p7

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_35

    :cond_2d
    if-eqz p6, :cond_38

    int-to-float p2, p7

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_35
    int-to-float p2, p2

    mul-float/2addr p2, p4

    sub-float/2addr p1, p2

    :cond_38
    :goto_38
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-nez p2, :cond_43

    if-eqz p6, :cond_42

    add-float/2addr p1, p0

    goto :goto_43

    :cond_42
    sub-float/2addr p1, p0

    :cond_43
    :goto_43
    return p1
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public getRotation()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getTaskDragDisplacementFactor(ZZ)I
    .registers 3

    if-eqz p1, :cond_4

    const/4 p0, -0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    mul-int/lit8 p0, p0, -0x8

    :goto_a
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

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public isNegative(FZ)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    goto :goto_10

    :cond_a
    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    return p0
.end method

.method public isPositive(FZ)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_10

    :cond_a
    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    return p0
.end method

.method public setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 3

    if-eqz p1, :cond_b

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_b
    return-void
.end method

.method public setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .registers 6

    if-eqz p1, :cond_17

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    neg-int p0, p4

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p5, :cond_c

    neg-int p0, p4

    add-int/2addr p0, p3

    goto :goto_d

    :cond_c
    move p0, p4

    :goto_d
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p5, :cond_12

    goto :goto_13

    :cond_12
    neg-int p4, p4

    :goto_13
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_17
    return-void
.end method

.method public updateAssistantScreenWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 5

    const-string p0, "crop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x0

    invoke-static {p3, p2, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public updateCapsuleWindowCrop(Landroid/graphics/Rect;FFFFD)V
    .registers 10

    if-eqz p1, :cond_10

    float-to-double v0, p2

    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p6

    float-to-double p2, p3

    mul-double/2addr p6, p2

    double-to-int p0, p6

    const/4 p2, 0x0

    float-to-int p3, p4

    float-to-int p4, p5

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_10
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

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p4

    invoke-static {p3, p0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
