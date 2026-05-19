.class public final Lcom/android/launcher3/card/reorder/CardCellsMeasurer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardCellsMeasurer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardCellsMeasurer.kt\ncom/android/launcher3/card/reorder/CardCellsMeasurer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,183:1\n1#2:184\n1864#3,3:185\n*S KotlinDebug\n*F\n+ 1 CardCellsMeasurer.kt\ncom/android/launcher3/card/reorder/CardCellsMeasurer\n*L\n178#1:185,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/CardCellsMeasurer;

.field private static final TAG:Ljava/lang/String; = "LCR_CardCellsMeasurer"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCellsMeasurer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canAfterPageAccept(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;II)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v0, :cond_1a

    return v2

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    :goto_1e
    const/4 v1, 0x0

    if-ge p1, v0, :cond_44

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v4, :cond_2c

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_3e

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const-string/jumbo v4, "mOccupied"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p2, p3}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->needVacantCells(Lcom/android/launcher3/util/GridOccupancy;II)I

    move-result v3

    if-nez v3, :cond_3e

    move v1, v2

    :cond_3e
    if-eqz v1, :cond_41

    return v2

    :cond_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_44
    return v1
.end method

.method public static final copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "solution"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_7b

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz p2, :cond_30

    iget-object v5, p4, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_32

    :cond_30
    iget-object v5, p4, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_32
    instance-of v6, p4, Lcom/android/launcher3/OplusCellLayout;

    const/4 v7, 0x1

    if-eqz v6, :cond_5b

    if-nez p1, :cond_5b

    iget-object v5, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v6, :cond_57

    array-length v8, v5

    if-ge v6, v8, :cond_57

    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v8, :cond_57

    aget-object v9, v5, v1

    array-length v9, v9

    if-ge v8, v9, :cond_57

    aget-object v5, v5, v6

    aget-boolean v5, v5, v8

    if-nez v5, :cond_57

    if-ne v3, p3, :cond_55

    if-nez p3, :cond_57

    :cond_55
    move v5, v7

    goto :goto_58

    :cond_57
    move v5, v1

    :goto_58
    if-eqz v5, :cond_5b

    goto :goto_5c

    :cond_5b
    move v7, v1

    :goto_5c
    if-nez v7, :cond_78

    new-instance v5, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz p1, :cond_65

    iget v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_67

    :cond_65
    iget v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_67
    if-eqz p1, :cond_6c

    iget v7, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_6e

    :cond_6c
    iget v7, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_6e
    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_7b
    return-void
.end method

.method public static final findEmptyCellForReorder(ZLcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/layout/LayoutUtilsInterface;[IIILjava/util/ArrayList;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Lcom/android/launcher/layout/LayoutUtilsInterface;",
            "[III",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)[I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetCell"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intersectingViews"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_53

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p4, p5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_53

    :cond_1f
    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p6, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_33

    new-array p0, p6, [I

    const/4 p1, 0x0

    aget p2, p3, p1

    aput p2, p0, p1

    aget p1, p3, v0

    aput p1, p0, v0

    return-object p0

    :cond_33
    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const-string p2, "cellLayout.mOccupied"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p4, p5}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->hasIrregularVacantCells(Lcom/android/launcher3/util/GridOccupancy;II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :cond_4b
    if-nez p0, :cond_52

    new-array p0, p6, [I

    fill-array-data p0, :array_64

    :cond_52
    return-object p0

    :cond_53
    :goto_53
    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/layout/LayoutUtilsInterface;->findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I

    move-result-object p0

    const-string p1, "layoutUtils.findEmptyCel…ectingViews\n            )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :array_64
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static final hasIrregularVacantCells(Lcom/android/launcher3/util/GridOccupancy;II)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/GridOccupancy;",
            "II)",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_6c

    if-gtz p2, :cond_a

    goto :goto_6c

    :cond_a
    mul-int/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->getCountY()I

    move-result v0

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->getCountX()I

    move-result v4

    move v5, v1

    :goto_1e
    if-ge v5, v4, :cond_40

    if-gtz v3, :cond_23

    return-object p2

    :cond_23
    iget-object v6, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v6, v6, v5

    aget-boolean v6, v6, v2

    if-nez v6, :cond_37

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v1

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_37
    if-eq v3, p1, :cond_3d

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    move v3, p1

    :cond_3d
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_43
    const-string p0, "hasIrregularVacantCells(), array="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCellsMeasurer;

    invoke-direct {p1, p2}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->print(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "LCR_CardCellsMeasurer"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "obj"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isCellsEmpty(Lcom/android/launcher3/OplusCellLayout;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_22

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v5, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v5, v5, v4

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public static final needVacantCells(Lcom/android/launcher3/util/GridOccupancy;II)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_11

    if-gtz p2, :cond_a

    goto :goto_11

    :cond_a
    mul-int/2addr p1, p2

    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method private final print(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[I>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    if-ltz p1, :cond_21

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move p1, v1

    goto :goto_5

    :cond_21
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_26
    const-string p0, ""

    return-object p0
.end method

.method public static final vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->getCountY()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    if-ge v2, v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->getCountX()I

    move-result v4

    move v5, v1

    :goto_13
    if-ge v5, v4, :cond_22

    iget-object v6, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v6, v6, v5

    aget-boolean v6, v6, v2

    if-nez v6, :cond_1f

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return v3
.end method
