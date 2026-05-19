.class public final Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/layout/IPageScrollsCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusPageScrollsCalculatorMultiRowImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusPageScrollsCalculatorMultiRowImpl.kt\ncom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,336:1\n13404#2,3:337\n*S KotlinDebug\n*F\n+ 1 OplusPageScrollsCalculatorMultiRowImpl.kt\ncom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl\n*L\n171#1:337,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "MR_PageScrollsCalculator"


# instance fields
.field private mIsShowInGrid:Z

.field private mNotFreePageScrolls:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fixTabletOutPageScrollGridSize([ILcom/android/quickstep/views/RecentsView;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quickstep/views/TaskView;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x0

    :try_start_7
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr p3, p2

    array-length p2, p1

    move v0, p0

    :goto_18
    if-ge v0, p2, :cond_3c

    if-eqz v0, :cond_35

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    goto :goto_35

    :cond_28
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    add-int/2addr v1, p3

    aput v1, p1, v0

    aget v1, p1, v0

    if-lez v1, :cond_35

    aput p0, p1, v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_38

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method private final getNotFreePageScrolls(Lcom/android/quickstep/views/RecentsView;[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;[I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mIsShowInGrid:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    new-array p2, v2, [I

    :goto_18
    if-ge v4, v2, :cond_42

    mul-int v3, v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    aput v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_29
    aget p2, p2, v4

    new-array v3, v2, [I

    :goto_2d
    if-ge v4, v2, :cond_41

    if-nez v4, :cond_32

    goto :goto_3c

    :cond_32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v5, p2

    move p2, v5

    :goto_3c
    aput p2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_41
    move-object p2, v3

    :cond_42
    iput-object p2, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mNotFreePageScrolls:[I

    return-void
.end method

.method private final getPageScrollInGridSize(Lcom/android/quickstep/views/RecentsView;[IZZIILjava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;[IZZII",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quickstep/views/TaskView;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz p4, :cond_f

    const/4 v3, -0x1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    if-eqz p4, :cond_15

    move/from16 v4, p6

    goto :goto_17

    :cond_15
    move/from16 v4, p5

    :goto_17
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1e
    if-ge v7, v5, :cond_4e

    move-object/from16 v9, p7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/quickstep/views/TaskView;

    add-int v11, v7, p4

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    mul-int/2addr v12, v11

    iget v11, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    mul-int/2addr v11, v7

    add-int/2addr v11, v12

    mul-int/2addr v11, v3

    add-int/2addr v11, v4

    if-eqz p3, :cond_44

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v10, v11, v1, v12, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_44
    aget v10, p2, v7

    if-eqz v10, :cond_4b

    aput v6, p2, v7

    move v8, v2

    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_4e
    return v8
.end method

.method private final getPageScrollOutSizeGridSize(Lcom/android/quickstep/views/RecentsView;[IZZIIIILjava/util/List;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;[IZZIIII",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quickstep/views/TaskView;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p9

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    goto :goto_17

    :cond_16
    move v6, v5

    :goto_17
    if-eqz p4, :cond_1d

    add-int v7, v2, p7

    sub-int/2addr v7, v6

    goto :goto_21

    :cond_1d
    add-int v6, p7, v2

    sub-int v7, v3, v6

    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    if-eqz p4, :cond_2e

    const/4 v9, -0x1

    goto :goto_2f

    :cond_2e
    const/4 v9, 0x1

    :goto_2f
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v5

    move v12, v11

    :goto_35
    if-ge v11, v10, :cond_a1

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v15, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v7

    if-eqz p3, :cond_56

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v16

    add-int v5, v16, v6

    invoke-virtual {v13, v7, v6, v15, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_56
    add-int/lit8 v5, v11, 0x1

    int-to-float v13, v5

    const/high16 v16, 0x40000000  # 2.0f

    div-float v13, v13, v16

    invoke-static {v13}, Lu4/a;->b(F)I

    move-result v13

    if-nez v11, :cond_6e

    if-eqz p4, :cond_67

    sub-int/2addr v15, v3

    goto :goto_69

    :cond_67
    sub-int v15, v7, v2

    :goto_69
    move/from16 v8, p8

    move/from16 v16, v5

    goto :goto_94

    :cond_6e
    move/from16 v8, p8

    if-ne v13, v8, :cond_76

    move/from16 v16, v5

    :cond_74
    const/4 v15, 0x0

    goto :goto_94

    :cond_76
    sub-int v13, v5, v13

    int-to-float v13, v13

    move/from16 v16, v5

    int-to-float v5, v14

    mul-float/2addr v13, v5

    if-eqz p4, :cond_83

    int-to-float v5, v15

    add-float/2addr v5, v13

    int-to-float v13, v3

    goto :goto_86

    :cond_83
    int-to-float v5, v7

    add-float/2addr v5, v13

    int-to-float v13, v2

    :goto_86
    sub-float/2addr v5, v13

    const/4 v13, 0x0

    if-eqz p4, :cond_8f

    cmpl-float v13, v5, v13

    if-lez v13, :cond_74

    goto :goto_93

    :cond_8f
    cmpg-float v13, v5, v13

    if-gez v13, :cond_74

    :goto_93
    float-to-int v15, v5

    :goto_94
    aget v5, v1, v11

    if-eq v5, v15, :cond_9b

    aput v15, v1, v11

    const/4 v12, 0x1

    :cond_9b
    mul-int/2addr v14, v9

    add-int/2addr v7, v14

    move/from16 v11, v16

    const/4 v5, 0x0

    goto :goto_35

    :cond_a1
    if-nez p4, :cond_aa

    if-eqz v12, :cond_aa

    move-object/from16 v2, p0

    invoke-direct {v2, v1, v0, v4}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->fixTabletOutPageScrollGridSize([ILcom/android/quickstep/views/RecentsView;Ljava/util/List;)V

    :cond_aa
    return v12
.end method


# virtual methods
.method public getDestinationPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;I[IZ)I"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MR_PageScrollsCalculator"

    const/4 v1, -0x1

    if-nez p3, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDestiationPage(), scaleScroll="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", not init."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_24
    array-length v2, p3

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-eq v2, v3, :cond_2c

    return v1

    :cond_2c
    if-nez p4, :cond_33

    iget-object v2, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mNotFreePageScrolls:[I

    if-nez v2, :cond_33

    return v1

    :cond_33
    if-eqz p4, :cond_36

    goto :goto_38

    :cond_36
    iget-object p3, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mNotFreePageScrolls:[I

    :goto_38
    invoke-virtual {p0, p2, p3}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getNearestPage(I[I)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_8d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDestinationPage(), scrolled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", freeScroll="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isInGrid="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mIsShowInGrid:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isRtl="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", pageScrolls="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", page="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return v1
.end method

.method public final getMIsShowInGrid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mIsShowInGrid:Z

    return p0
.end method

.method public final getNearestPage(I[I)I
    .registers 9

    const/4 p0, -0x1

    if-eqz p2, :cond_1d

    array-length v0, p2

    const/4 v1, 0x0

    const v2, 0x7fffffff

    move v3, v2

    move v2, v1

    :goto_a
    if-ge v1, v0, :cond_1d

    aget v4, p2, v1

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_19

    move p0, v2

    move v3, v4

    :cond_19
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_a

    :cond_1d
    return p0
.end method

.method public getPageScrolls(Lcom/android/quickstep/views/RecentsView;[IZILcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;[IZI",
            "Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;",
            ")Z"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v0, p5

    const-string v1, "recentsView"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outPageScrolls"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scrollLogic"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_25

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    move-object v2, v11

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_25
    const/4 v1, 0x0

    if-gtz v13, :cond_29

    return v1

    :cond_29
    int-to-float v2, v13

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Lu4/a;->b(F)I

    move-result v15

    invoke-virtual {v11, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v2, v15

    add-int/lit8 v3, v15, -0x1

    iget v4, v11, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    mul-int/2addr v3, v4

    add-int v9, v3, v2

    iget-object v2, v11, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, v11, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v2, v11, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v8

    iget-object v2, v11, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, v11, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v2, v11, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v9, v2, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    move v2, v1

    :goto_64
    if-eqz v12, :cond_68

    iput-boolean v2, v10, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mIsShowInGrid:Z

    :cond_68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6d
    if-ge v1, v13, :cond_82

    invoke-virtual {v11, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-nez v3, :cond_76

    goto :goto_7f

    :cond_76
    invoke-interface {v0, v3}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_82
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v4

    if-eqz v2, :cond_9f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v5, v8

    move-object/from16 v16, v6

    move v6, v7

    move/from16 p5, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getPageScrollInGridSize(Lcom/android/quickstep/views/RecentsView;[IZZIILjava/util/List;)Z

    move-result v0

    move v11, v8

    move v14, v9

    goto :goto_b8

    :cond_9f
    move-object/from16 v16, v6

    move/from16 p5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v5, v8

    move/from16 v6, p5

    move v7, v9

    move v11, v8

    move v8, v15

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getPageScrollOutSizeGridSize(Lcom/android/quickstep/views/RecentsView;[IZZIIIILjava/util/List;)Z

    move-result v0

    :goto_b8
    if-eqz v12, :cond_bd

    invoke-direct/range {p0 .. p2}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getNotFreePageScrolls(Lcom/android/quickstep/views/RecentsView;[I)V

    :cond_bd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "getPageScrolls(), layout="

    const-string v2, ", column="

    const-string v3, ", taskCount="

    invoke-static {v1, v12, v2, v15, v3}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxWidth="

    const-string v3, ", scrollOffset: ["

    invoke-static {v1, v13, v2, v14, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, ", "

    const-string v3, "], isInGrid="

    move/from16 v4, p5

    invoke-static {v1, v11, v2, v4, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-boolean v2, v10, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mIsShowInGrid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNotFreeOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mNotFreePageScrolls:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR_PageScrollsCalculator"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    return v0
.end method

.method public getScrollForPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;I[IZ)I"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_3d

    array-length v1, p3

    if-ge p2, v1, :cond_3d

    if-gez p2, :cond_e

    goto :goto_3d

    :cond_e
    iget-object v1, p1, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-ne p1, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    if-nez p4, :cond_3b

    if-eqz v2, :cond_30

    goto :goto_3b

    :cond_30
    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->mNotFreePageScrolls:[I

    if-eqz p0, :cond_3d

    array-length p1, p0

    if-le p1, p2, :cond_3d

    aget p0, p0, p2

    move v0, p0

    goto :goto_3d

    :cond_3b
    :goto_3b
    aget v0, p3, p2

    :cond_3d
    :goto_3d
    return v0
.end method

.method public final isShowInGrid(Lcom/android/quickstep/views/RecentsView;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;I)Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-gtz p2, :cond_9

    return p0

    :cond_9
    int-to-float p2, p2

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Lu4/a;->b(F)I

    move-result p2

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    iget v2, p1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    mul-int/2addr p2, v2

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_31

    move p0, v1

    :cond_31
    return p0
.end method
