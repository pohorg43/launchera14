.class public final Lcom/android/launcher3/card/reorder/CardCompactArrangement;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardCompactArrangement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardCompactArrangement.kt\ncom/android/launcher3/card/reorder/CardCompactArrangement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1855#2,2:322\n1855#2,2:325\n1#3:324\n*S KotlinDebug\n*F\n+ 1 CardCompactArrangement.kt\ncom/android/launcher3/card/reorder/CardCompactArrangement\n*L\n52#1:322,2\n161#1:325,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

.field private static final TAG:Ljava/lang/String; = "LCR_CardCompactArrangement"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyCards(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)V
    .registers 19

    const/4 v0, 0x0

    aget v2, p4, v0

    const/4 v7, 0x1

    aget v3, p4, v7

    aget v4, p5, v0

    aget v5, p5, v7

    const/4 v6, 0x1

    move-object/from16 v1, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    move v2, v0

    :goto_15
    if-ge v2, v1, :cond_75

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    move v4, v0

    :goto_1c
    if-ge v4, v3, :cond_6d

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_65

    move-object v6, p3

    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_62

    :cond_36
    move-object v8, p2

    iget-object v9, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v9, :cond_43

    :cond_41
    move-object v10, p0

    goto :goto_68

    :cond_43
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v10, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v10, v11, :cond_5b

    iget v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-eq v10, v11, :cond_41

    :cond_5b
    move-object v10, p0

    move-object/from16 v11, p6

    invoke-direct {p0, v11, v5, v9}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->shiftAndMarkCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_6a

    :cond_62
    :goto_62
    move-object v10, p0

    move-object v8, p2

    goto :goto_68

    :cond_65
    move-object v10, p0

    move-object v8, p2

    move-object v6, p3

    :goto_68
    move-object/from16 v11, p6

    :goto_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_6d
    move-object v10, p0

    move-object v8, p2

    move-object v6, p3

    move-object/from16 v11, p6

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_75
    move-object/from16 v11, p6

    aget v1, p4, v0

    aget v2, p4, v7

    aget v0, p5, v0

    aget v3, p5, v7

    const/4 v4, 0x0

    move-object/from16 p0, p6

    move p1, v1

    move p2, v2

    move p3, v0

    move/from16 p4, v3

    move/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method private final applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z
    .registers 24

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_63

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    move v5, v1

    :goto_e
    if-ge v5, v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_55

    move-object/from16 v7, p3

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_52

    invoke-static {v6}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_52

    :cond_29
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v8

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v8, p2

    iget-object v9, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v13, :cond_59

    sget-object v10, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v10 .. v16}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->shiftAndMarkCells(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    move-result v3

    goto :goto_59

    :cond_52
    :goto_52
    move-object/from16 v8, p2

    goto :goto_59

    :cond_55
    move-object/from16 v8, p2

    move-object/from16 v7, p3

    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_5c
    move-object/from16 v8, p2

    move-object/from16 v7, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_63
    return v3
.end method

.method private final isBehind(IIII)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p2, p4, :cond_6

    :goto_4
    move p0, v0

    goto :goto_b

    :cond_6
    if-ne p2, p4, :cond_b

    if-le p1, p3, :cond_b

    goto :goto_4

    :cond_b
    :goto_b
    return p0
.end method

.method private final shiftAndMarkCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;)V
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p2

    if-eqz p2, :cond_61

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-direct {p0, p2, v1, v3, v5}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->isBehind(IIII)Z

    move-result p0

    if-eqz p0, :cond_61

    const-string/jumbo p0, "shiftAndMarkCard(), shift from ["

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "toString(this)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Card"

    const-string v1, "LCR_CardCompactArrangement"

    invoke-static {p2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    aget p0, v0, v2

    iput p0, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget p0, v0, v4

    iput p0, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p1, p3, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_61
    return-void

    :array_62
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final shiftAndMarkCells(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;[I[ILcom/android/launcher3/util/GridOccupancy;)Z
    .registers 23

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_d
    if-ge v5, v3, :cond_c5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    move v8, v4

    :goto_14
    if-ge v8, v7, :cond_bf

    aget v9, p4, v4

    const/4 v10, 0x1

    if-ltz v9, :cond_39

    aget v9, p4, v10

    if-ltz v9, :cond_39

    aget v9, p4, v4

    if-lt v8, v9, :cond_39

    aget v9, p4, v4

    aget v11, p5, v4

    add-int/2addr v9, v11

    if-ge v8, v9, :cond_39

    aget v9, p4, v10

    if-lt v5, v9, :cond_39

    aget v9, p4, v10

    aget v11, p5, v10

    add-int/2addr v9, v11

    if-ge v5, v9, :cond_39

    move-object/from16 v15, p0

    goto/16 :goto_bb

    :cond_39
    const-string/jumbo v9, "shiftAndMarkCells(), ["

    const-string v11, ", "

    const-string v12, "] in occupied: "

    invoke-static {v9, v8, v11, v5, v12}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v12, v12, v8

    aget-boolean v12, v12, v5

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Card"

    const-string v13, "LCR_CardCompactArrangement"

    invoke-static {v12, v13, v9}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v9, v9, v8

    aget-boolean v9, v9, v5

    if-nez v9, :cond_b6

    iget v9, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v14, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move-object/from16 v15, p0

    invoke-direct {v15, v9, v14, v8, v5}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->isBehind(IIII)Z

    move-result v9

    if-eqz v9, :cond_b8

    const-string/jumbo v6, "shiftAndMarkCells() "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": from ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] to ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string v14, "], shift to ["

    invoke-static {v6, v9, v14, v8, v11}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x5d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v13, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    iput v8, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move v6, v10

    goto :goto_b8

    :cond_b6
    move-object/from16 v15, p0

    :cond_b8
    :goto_b8
    invoke-virtual {v2, v1, v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :goto_bb
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_14

    :cond_bf
    move-object/from16 v15, p0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    :cond_c5
    return v6
.end method


# virtual methods
.method public final apply(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Ljava/util/ArrayList;Landroid/view/View;[I[I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "[I[I)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "cellLayout"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultSpan"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v11, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const-string v12, "LCR_CardCompactArrangement"

    const-string v13, "Card"

    if-eqz p3, :cond_84

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v1, :cond_42

    const-string v2, "apply(), set intersecting card ["

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] to occupe in shiftOccupied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v12, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_42

    :cond_84
    invoke-virtual {v11}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shiftOccupied.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    move-result v14

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyCards(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)V

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v11, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-eqz v14, :cond_dd

    const-string v0, "apply(), screenId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    return-void
.end method

.method public final applyAndCommit(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;Z)V
    .registers 31

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const-string v0, "launcher"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    new-instance v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v11}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v12, 0x0

    invoke-static {v11, v12, v12, v8, v7}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V

    new-instance v13, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-nez v9, :cond_65

    if-eqz v8, :cond_41

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_49

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-eqz v0, :cond_4f

    invoke-virtual {v13, v0, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_4f
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_1e0

    new-array v5, v0, [I

    fill-array-data v5, :array_1e8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    :cond_65
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move v0, v12

    move v1, v0

    :goto_74
    if-ge v12, v6, :cond_18d

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_185

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8c

    goto/16 :goto_185

    :cond_8c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v4, :cond_97

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    :goto_98
    if-nez v3, :cond_9c

    goto/16 :goto_185

    :cond_9c
    const/4 v4, -0x1

    if-nez v9, :cond_b6

    iget-object v5, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v5, :cond_ae

    iget v0, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    if-nez v5, :cond_ba

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    goto :goto_ba

    :cond_b6
    iget v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iget v1, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    :cond_ba
    :goto_ba
    move v15, v0

    move v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v0, v15, :cond_d1

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v0, v5, :cond_d5

    :cond_d1
    if-ne v15, v4, :cond_db

    if-ne v5, v4, :cond_db

    :cond_d5
    move/from16 v25, v5

    move/from16 p0, v6

    goto/16 :goto_181

    :cond_db
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string v0, "applyAndCommit(), revert="

    const-string v1, ", "

    invoke-static {v0, v9, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move/from16 p0, v6

    const-string v6, "] to: ["

    invoke-static {v0, v4, v6, v15, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], last: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v4, "LCR_CardCompactArrangement"

    invoke-static {v1, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    :cond_12a
    move/from16 p0, v6

    :goto_12c
    if-nez v9, :cond_131

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    goto :goto_132

    :cond_131
    const/4 v0, -0x1

    :goto_132
    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    if-nez v9, :cond_139

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_13a

    :cond_139
    const/4 v0, -0x1

    :goto_13a
    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    new-instance v0, Landroid/graphics/Point;

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v15, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v15, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v6, 0x1

    move-object v0, v13

    move v1, v15

    move-object/from16 v24, v2

    move v2, v5

    move/from16 v25, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v16

    const/16 v18, -0x64

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v19

    move-object/from16 v0, v24

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    invoke-virtual/range {v16 .. v23}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    :goto_181
    move v0, v15

    move/from16 v1, v25

    goto :goto_187

    :cond_185
    :goto_185
    move/from16 p0, v6

    :goto_187
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p0

    goto/16 :goto_74

    :cond_18d
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_191
    :goto_191
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, v13, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v2, v0, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    aget-boolean v0, v1, v3

    if-nez v0, :cond_191

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v0, v13

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_191

    :cond_1b6
    if-eqz v9, :cond_1ce

    if-eqz v8, :cond_1bf

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c0

    :cond_1bf
    const/4 v0, 0x0

    :goto_1c0
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1c7

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1c8

    :cond_1c7
    const/4 v0, 0x0

    :goto_1c8
    if-eqz v0, :cond_1ce

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_1ce
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    nop

    :array_1e0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1e8
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final revertShift(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 12

    const-string p0, "cellLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ltz p0, :cond_b4

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1c

    goto/16 :goto_ae

    :cond_1c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_29

    :cond_28
    move-object v1, v4

    :goto_29
    if-eqz v1, :cond_ae

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v5, :cond_37

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v5, :cond_ae

    :cond_37
    invoke-static {v3}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string/jumbo v2, "revertShift() "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_4f

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_50

    :cond_4f
    move-object v5, v4

    :goto_50
    if-eqz v5, :cond_54

    iget-object v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": from ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] to ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], shift to ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LCR_CardCompactArrangement"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    const/16 v6, 0x1c2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_ae
    :goto_ae
    if-eq v0, p0, :cond_b4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_b4
    return-void
.end method
