.class public final Lcom/oplus/quickstep/utils/RecentsLayoutManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

.field private static final TAG:Ljava/lang/String; = "RecentsLayoutManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isEventInTaskView(Lcom/android/quickstep/views/TaskView;Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ancestor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RecentsLayoutManager"

    const-string v1, "QuickStep"

    const/4 v2, 0x0

    if-nez p0, :cond_17

    const-string p0, "isEventInTaskView(), view null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_17
    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x2

    aput v4, v3, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x3

    aput v4, v3, v7

    move-object v4, p0

    :goto_31
    if-eq v4, p1, :cond_79

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_79

    if-eq v4, p0, :cond_4c

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    neg-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    neg-float v9, v9

    invoke-static {v3, v8, v9}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    :cond_4c
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v9

    neg-float v9, v9

    invoke-static {v3, v8, v9}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3, v8, v9}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const-string v8, "null cannot be cast to non-null type android.view.View"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    goto :goto_31

    :cond_79
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    aget p1, v3, v2

    aget v4, v3, v6

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    aget p1, v3, v5

    aget v4, v3, v7

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    aget p1, v3, v2

    aget v2, v3, v6

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    aget p1, v3, v5

    aget v2, v3, v7

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_f2

    const-string v2, "isEventInTaskView(), i="

    const-string v3, ", x="

    invoke-static {v2, p3, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", rect="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    return p1
.end method


# virtual methods
.method public final layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getClearButtonHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getIsMem()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getIsGesture()Z

    move-result v4

    if-eqz v4, :cond_2e

    const v4, 0x7f07087a

    goto :goto_31

    :cond_2e
    const v4, 0x7f0701cb

    :goto_31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3b

    :cond_3a
    move v4, v5

    :goto_3b
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_70

    const/4 v8, 0x1

    if-eq v6, v8, :cond_60

    if-eq v6, v7, :cond_70

    const/4 v8, 0x3

    if-eq v6, v8, :cond_50

    move v3, v5

    goto :goto_b8

    :cond_50
    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    div-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v7

    goto :goto_6d

    :cond_60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    div-int/lit8 v8, v5, 0x2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v7

    :goto_6d
    add-int/2addr v3, v5

    move v5, v8

    goto :goto_b5

    :cond_70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getIsMem()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getBottomMargin()I

    move-result v7

    sub-int/2addr v3, v7

    goto :goto_b5

    :cond_a4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getBottomMargin()I

    move-result v7

    sub-int/2addr v3, v7

    add-int/2addr v3, v4

    :goto_b5
    move v11, v5

    move v5, v3

    move v3, v11

    :goto_b8
    div-int/lit8 v7, v2, 0x2

    sub-int v7, v5, v7

    add-int v8, v7, v1

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v9

    if-eqz v9, :cond_ec

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher3/OplusDeviceProfile;->overviewGridClearPanelTopMargin:I

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v7, p1, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    add-int v8, v7, v1

    add-int/2addr v8, v4

    :cond_ec
    div-int/lit8 v9, v0, 0x2

    sub-int v10, v3, v9

    add-int/2addr v9, v3

    invoke-virtual {p0, v10, v7, v9, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_17e

    const-string v7, "layoutClearButton, ["

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], ["

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rv: ["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "RecentsLayoutManager"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17e
    return-void
.end method

.method public final layoutImmediately(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "layoutImmediately(), left="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "RecentsLayoutManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_6a
    return-void
.end method
