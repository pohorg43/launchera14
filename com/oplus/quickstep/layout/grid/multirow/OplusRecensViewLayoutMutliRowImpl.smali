.class public final Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/layout/grid/IOplusRecentsViewGridLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "MR_Layout"


# instance fields
.field private final mActivityInterface$delegate:Lh4/f;

.field private final mPageScrollsCalculator$delegate:Lh4/f;

.field private final mTaskAnimationBuilder$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mPageScrollsCalculator$2;->INSTANCE:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mPageScrollsCalculator$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mPageScrollsCalculator$delegate:Lh4/f;

    new-instance v1, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;-><init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;)V

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mTaskAnimationBuilder$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mActivityInterface$2;->INSTANCE:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mActivityInterface$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mActivityInterface$delegate:Lh4/f;

    return-void
.end method

.method private final getMActivityInterface()Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mActivityInterface$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;

    return-object p0
.end method

.method private final getMPageScrollsCalculator()Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mPageScrollsCalculator$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;

    return-object p0
.end method

.method private final getMTaskAnimationBuilder()Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->mTaskAnimationBuilder$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    return-object p0
.end method


# virtual methods
.method public getActivityInterface()Lcom/oplus/quickstep/layout/grid/IGridActivityInterface;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getMActivityInterface()Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getMPageScrollsCalculator()Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;

    move-result-object p0

    return-object p0
.end method

.method public getTaskAnimationBuilder()Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getMTaskAnimationBuilder()Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailPadding(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/DeviceProfile;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/DeviceProfile;",
            ")F"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceProfile"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedGridTaskSize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr p1, p0

    sub-int/2addr p1, p2

    int-to-float p0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public updateGridProperties(Lcom/android/quickstep/views/RecentsView;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;ZI)V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    new-array p3, p0, [F

    new-array v0, p0, [F

    iget v1, p1, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-nez p2, :cond_19

    iget-object p2, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntSet;->clear()V

    :cond_19
    const/4 p2, 0x0

    move v2, p2

    :goto_1b
    if-ge v2, p0, :cond_71

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    const-string v4, "recentsView.requireTaskViewAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-eqz v6, :cond_38

    move v6, v7

    goto :goto_39

    :cond_38
    move v6, p2

    :goto_39
    int-to-float v8, v5

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lu4/a;->b(F)I

    move-result v8

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v9

    if-eqz v9, :cond_48

    goto :goto_49

    :cond_48
    const/4 v7, -0x1

    :goto_49
    sub-int v8, v5, v8

    mul-int/2addr v8, v7

    int-to-float v7, v8

    int-to-float v4, v4

    mul-float/2addr v7, v4

    aput v7, p3, v2

    if-nez v6, :cond_59

    iget v4, p1, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    goto :goto_69

    :cond_59
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    iget-object v6, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntSet;->add(I)V

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    :goto_69
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v3

    aput v3, v0, v2

    move v2, v5

    goto :goto_1b

    :cond_71
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v4

    if-lez v1, :cond_93

    invoke-virtual {p1, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    if-eqz v4, :cond_90

    sub-int v6, v5, v3

    goto :goto_95

    :cond_90
    sub-int v6, v3, v5

    goto :goto_95

    :cond_93
    move v5, p2

    move v6, v5

    :goto_95
    if-ge p2, p0, :cond_ac

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-eqz v4, :cond_a2

    aget v8, p3, p2

    int-to-float v9, v6

    sub-float/2addr v8, v9

    goto :goto_a6

    :cond_a2
    aget v8, p3, p2

    int-to-float v9, v6

    add-float/2addr v8, v9

    :goto_a6
    invoke-virtual {v7, v8}, Lcom/android/quickstep/views/TaskView;->setGridTranslationX(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_95

    :cond_ac
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_ee

    const-string p0, "updateGridProperties(), isRtl="

    const-string p2, ", snappedPage="

    const-string v7, ", scroller: currX="

    invoke-static {p0, v4, p2, v1, v7}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", finalX="

    const-string v1, ", pageScroll="

    invoke-static {p0, v2, p2, v3, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, ", snappedTranslationX="

    const-string v1, ", gridTranslation: x="

    invoke-static {p0, v5, p2, v6, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(this)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", y="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MR_Layout"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    iget p0, p1, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    return-void
.end method

.method public updateGridTaskSize(Lcom/android/quickstep/views/RecentsView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gridSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gridTaskSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v2, :cond_55

    invoke-virtual {p1, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    int-to-float v7, v4

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v2

    sub-float/2addr v7, v2

    mul-float/2addr v7, v6

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    goto :goto_56

    :cond_4e
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    neg-float v2, v2

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    iget v6, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v5

    add-float/2addr p3, v6

    iget v6, p4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v7, v6

    sub-float/2addr p3, v7

    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v6

    int-to-float p2, p2

    iget v6, p4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v5

    add-float/2addr p4, v6

    sub-float/2addr p2, p4

    iget-boolean p4, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p4, :cond_8e

    const-string p4, "deviceProfile"

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getThumbnailPadding(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/DeviceProfile;)F

    move-result p0

    add-float/2addr p2, p0

    :cond_8e
    :goto_8e
    if-ge v3, v0, :cond_107

    invoke-virtual {p1, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of p4, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p4, :cond_9b

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_9c

    :cond_9b
    const/4 p0, 0x0

    :goto_9c
    if-nez p0, :cond_9f

    goto :goto_104

    :cond_9f
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateTaskSize()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p4

    add-float v1, v2, p3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p4, p4

    int-to-float v1, v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v5

    sub-float/2addr v1, v5

    mul-float/2addr v1, p4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p4, p0, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_fb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateGridTaskSize(), i="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", diff="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", aX="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", nonGridX="

    const-string v5, ", nonGridY="

    invoke-static {p0, v2, p4, p3, v5}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "MR_Layout"

    invoke-static {p4, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fb
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_102

    goto :goto_103

    :cond_102
    neg-float v1, v1

    :goto_103
    add-float/2addr v2, v1

    :goto_104
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    :cond_107
    return-void
.end method
