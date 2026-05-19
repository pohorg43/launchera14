.class public final Lcom/android/launcher3/card/reorder/CardReorderInject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardReorderInject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardReorderInject.kt\ncom/android/launcher3/card/reorder/CardReorderInject\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,542:1\n1#2:543\n1855#3,2:544\n1855#3,2:546\n1855#3,2:548\n1855#3,2:550\n*S KotlinDebug\n*F\n+ 1 CardReorderInject.kt\ncom/android/launcher3/card/reorder/CardReorderInject\n*L\n421#1:544,2\n422#1:546,2\n459#1:548,2\n498#1:550,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CARD_REORDER_MAX_TIMEOUT:J = 0x12cL

.field private static final CARD_REORDER_MIN_TIMEOUT:J = 0x64L

.field private static final FILLIN_ANIMATION_DURATION:I = 0x1c2

.field private static final HANDLE_ACCEPT_DROP:I = 0x4

.field private static final HANDLE_BY_REMOVE:I = 0x2

.field private static final HANDLE_ON_ADD:I = 0x1

.field private static final HANDLE_RESIZE:I = 0x3

.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

.field private static final TAG:Ljava/lang/String; = "LCR_CardReorderInject"

.field public static cardScreenId:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static delayInvokeDragWidgetRemoved:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final extrusionPathInterpolator:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static isDragCardByScroll:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e051eb8  # 0.13f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->extrusionPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animateItemsToSolution(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "cellLayout"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_1c

    :cond_1a
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_1c
    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    sget-object v0, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->INSTANCE:Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->getReorderDelay(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    :goto_30
    const/4 v7, 0x1

    if-ge v15, v13, :cond_e1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v10, :cond_da

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_7c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateItemsToSolution(), child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "child"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LCR_CardReorderInject"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v2, :cond_88

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    if-ge v2, v3, :cond_88

    move v2, v7

    goto :goto_89

    :cond_88
    move v2, v14

    :goto_89
    if-eqz v2, :cond_a5

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v0, :cond_97

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    if-ge v0, v2, :cond_97

    move v0, v7

    goto :goto_98

    :cond_97
    move v0, v14

    :goto_98
    if-eqz v0, :cond_a5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->isInExtrusionList(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a5

    goto :goto_da

    :cond_a5
    iget-object v0, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v6, :cond_da

    if-eqz v12, :cond_ba

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_be

    :cond_ba
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_be
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v2, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x1c2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v14, v6

    move/from16 v6, v16

    move v8, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    invoke-virtual {v11, v14, v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_da
    :goto_da
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_30

    :cond_e1
    move v8, v7

    if-eqz p3, :cond_e7

    invoke-virtual {v11, v9, v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_e7
    return-void
.end method

.method public static final canRevertTempState(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p0

    if-eqz p0, :cond_27

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_27

    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public static final getViewMsg(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    instance-of v1, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_26

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_36

    :cond_24
    move-object v1, v2

    goto :goto_36

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_31

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_32

    :cond_31
    move-object v1, v2

    :goto_32
    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lp["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5c

    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5d

    :cond_5c
    move-object p0, v2

    :goto_5d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6e

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6f

    :cond_6e
    move-object v1, v2

    :goto_6f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7e

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7f

    :cond_7e
    move-object v1, v2

    :goto_7f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8e

    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_8f

    :cond_8e
    move-object p0, v2

    :goto_8f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], tmp["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a0

    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_a1

    :cond_a0
    move-object p0, v2

    :goto_a1
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b1

    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getViewsIntersectingRegion(Lcom/android/launcher3/ShortcutAndWidgetContainer;IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            "IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p7, :cond_9

    add-int p0, p2, p4

    add-int v0, p3, p5

    invoke-virtual {p7, p2, p3, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    invoke-virtual {p8}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Landroid/graphics/Rect;

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p3, :cond_63

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_60

    :cond_28
    invoke-static {v1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v3, :cond_39

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-nez v2, :cond_3d

    goto :goto_60

    :cond_3d
    if-eqz p9, :cond_42

    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_44

    :cond_42
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_44
    if-eqz p9, :cond_49

    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_4b

    :cond_49
    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_4b
    add-int v4, v3, p4

    add-int v5, v2, p5

    invoke-virtual {p2, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p0, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_60

    invoke-virtual {p7, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_63
    return-void
.end method

.method public static final isCard(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez v0, :cond_f

    instance-of p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static final isCard(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_e

    :cond_c
    instance-of v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :goto_e
    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_14

    :cond_12
    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_23

    :cond_17
    instance-of v0, p0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public static final isDragInLauncher(Lcom/android/launcher3/Workspace;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr p0, v2

    cmpg-float p0, v1, p0

    if-gez p0, :cond_28

    const/4 p0, 0x1

    move v0, p0

    :cond_28
    return v0
.end method

.method public static final isNearestDropLocationOccupied(Lcom/android/launcher3/CellLayout;IIIILandroid/view/View;[IZ)Z
    .registers 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "dragTargetLayout"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    const-string v1, "dragTargetLayout.shortcutsAndWidgets"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v9, v0, v1

    const/4 v2, 0x1

    aget v10, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v15

    const-string v0, "dragTargetLayout.intersectingViews"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_5e

    instance-of v3, v6, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_41

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v3

    if-ne v3, v2, :cond_58

    move v3, v2

    goto :goto_59

    :cond_58
    move v3, v1

    :goto_59
    if-eqz v3, :cond_5e

    move/from16 v16, v2

    goto :goto_60

    :cond_5e
    move/from16 v16, v1

    :goto_60
    const/4 v14, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v16}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewsIntersectingRegion(Lcom/android/launcher3/ShortcutAndWidgetContainer;IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public static final isShortSinceLastReorder(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p0, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    return v0

    :cond_b
    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide p0

    goto :goto_28

    :cond_26
    const-wide/16 p0, 0x0

    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x14

    cmp-long p0, v1, p0

    if-gez p0, :cond_34

    const/4 v0, 0x1

    :cond_34
    return v0
.end method

.method private final isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_c

    move v1, p0

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-nez v1, :cond_1d

    if-eqz p1, :cond_18

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_18

    move p1, p0

    goto :goto_19

    :cond_18
    move p1, v0

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move p0, v0

    :cond_1d
    :goto_1d
    return p0
.end method

.method public static final markCellsAsUnoccupiedForView(Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_93

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_93

    :cond_f
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.dragndrop.OplusDragView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    :cond_3a
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v0, :cond_45

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_45
    if-eqz v1, :cond_55

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_55
    return-void

    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    if-eq v0, v2, :cond_61

    return-void

    :cond_61
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_6c

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_6c
    if-eqz v1, :cond_93

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    instance-of p1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-nez p1, :cond_85

    return-void

    :cond_85
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_93
    :goto_93
    return-void
.end method

.method public static final onDragCardToAssistant(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDragCardToAssistant(), isDragCardByScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragCardByScroll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LCR_CardReorderInject"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_4d

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_41

    :cond_40
    move-object p0, v0

    :goto_41
    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p0

    if-eqz p0, :cond_4d

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->reorderInCompact(Landroid/view/View;Z)V

    :cond_4d
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p0

    if-eqz p0, :cond_56

    const/4 p0, -0x1

    sput p0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    :cond_56
    return-void
.end method

.method public static final onDragViewRemoved(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-ne v3, v1, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    if-eqz v3, :cond_2a

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    sput-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    :cond_2d
    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    if-eqz v0, :cond_34

    sput-boolean v2, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v3, :cond_4d

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragView;->isPendingCardType()Z

    move-result v0

    if-ne v0, v1, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    if-eqz v1, :cond_5b

    return-void

    :cond_5b
    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const-string v1, "launcher.workspace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6b

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_6c

    :cond_6b
    const/4 p1, -0x1

    :goto_6c
    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method

.method public static final onDragWidgetAdd(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pendingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    :cond_21
    return-void
.end method

.method public static final onFolderResize(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method

.method private final orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x0

    if-ge v3, p0, :cond_32

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v6, :cond_1e

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    :cond_1e
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->onPerformDone()V

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_32
    move v3, v2

    :goto_33
    if-ge v3, p0, :cond_6d

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v6, :cond_40

    check-cast v5, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_41

    :cond_40
    move-object v5, v4

    :goto_41
    if-nez v5, :cond_44

    goto :goto_6a

    :cond_44
    invoke-virtual {v5}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-virtual {v6, p2, p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->handleExtrusionList(II)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_50

    :cond_4f
    move-object v6, v4

    :goto_50
    if-nez v6, :cond_53

    goto :goto_5d

    :cond_53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_5d
    :goto_5d
    if-nez v6, :cond_60

    goto :goto_6a

    :cond_60
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_6d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_71
    :goto_71
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_87

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p3

    if-eqz p3, :cond_71

    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->onRevert()V

    goto :goto_71

    :cond_87
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8b
    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p3

    if-eqz p3, :cond_8b

    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->onDrop()V

    goto :goto_8b

    :cond_a1
    const/4 p2, -0x1

    sput p2, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    :goto_a4
    if-ge v2, p0, :cond_c9

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p3, :cond_b1

    check-cast p2, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_b2

    :cond_b1
    move-object p2, v4

    :goto_b2
    if-eqz p2, :cond_bf

    invoke-virtual {p2}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p2

    if-eqz p2, :cond_bf

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object p2

    goto :goto_c0

    :cond_bf
    move-object p2, v4

    :goto_c0
    if-nez p2, :cond_c3

    goto :goto_c6

    :cond_c3
    invoke-virtual {p2, v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->setDragView(Landroid/view/View;)V

    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_c9
    return-void
.end method

.method public static final reorderAlarmTime(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;[F)J
    .registers 24
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string/jumbo v2, "workspace"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cellLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dragCenter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    instance-of v2, v2, Lcom/android/launcher3/BubbleTextView;

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    if-eqz v2, :cond_23

    move-wide v4, v6

    goto/16 :goto_130

    :cond_23
    instance-of v2, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_2a

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v0

    if-eqz v0, :cond_130

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    aget v10, v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v11

    aget v11, v11, v2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x1

    aget v12, v1, v11

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v13

    aget v13, v13, v11

    int-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v12

    sub-long v12, v8, v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    const/16 v17, 0x0

    if-nez v16, :cond_70

    move/from16 v2, v17

    goto :goto_73

    :cond_70
    long-to-float v2, v12

    div-float v2, v10, v2

    :goto_73
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/OplusWorkspace;->getSpringLoadedDragController()Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->isAlarmPending()Z

    move-result v3

    if-eqz v3, :cond_7f

    :cond_7d
    :goto_7d
    move-wide v4, v6

    goto :goto_ba

    :cond_7f
    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v18

    cmp-long v14, v18, v14

    if-nez v14, :cond_88

    goto :goto_ba

    :cond_88
    const-wide/16 v14, 0x32

    cmp-long v14, v12, v14

    if-ltz v14, :cond_7d

    cmpg-float v14, v17, v2

    const/high16 v15, 0x3f800000  # 1.0f

    if-gtz v14, :cond_9a

    cmpg-float v14, v2, v15

    if-gtz v14, :cond_9a

    move v14, v11

    goto :goto_9b

    :cond_9a
    const/4 v14, 0x0

    :goto_9b
    if-eqz v14, :cond_9e

    goto :goto_7d

    :cond_9e
    cmpg-float v14, v15, v2

    if-gtz v14, :cond_aa

    const/high16 v14, 0x40200000  # 2.5f

    cmpg-float v14, v2, v14

    if-gtz v14, :cond_aa

    move v14, v11

    goto :goto_ab

    :cond_aa
    const/4 v14, 0x0

    :goto_ab
    if-eqz v14, :cond_ba

    const-wide v4, 0x4060aaaaaaaaaaabL  # 133.33333333333334

    int-to-float v11, v11

    sub-float v11, v2, v11

    float-to-double v14, v11

    mul-double/2addr v14, v4

    double-to-long v4, v14

    sub-long/2addr v6, v4

    goto :goto_7d

    :cond_ba
    :goto_ba
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v6

    if-eqz v6, :cond_130

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reorderAlarmTime(), isWorkspaceScrolling="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", curTime="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", preTime="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", prePixel="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "toString(this)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curPixel="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", distance="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", velocity="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", alarmTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_CardReorderInject"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_130
    :goto_130
    return-wide v4
.end method

.method private final safetyCheckGridOccupancy([ILcom/android/launcher3/util/GridOccupancy;)Z
    .registers 6

    const/4 p0, 0x0

    aget v0, p1, p0

    const/4 v1, 0x1

    if-ltz v0, :cond_27

    aget v0, p1, v1

    if-ltz v0, :cond_27

    aget v0, p1, p0

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->getCountX()I

    move-result v2

    if-ge v0, v2, :cond_27

    aget v0, p1, v1

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->getCountY()I

    move-result v2

    if-ge v0, v2, :cond_27

    iget-object p2, p2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget v0, p1, p0

    aget-object p2, p2, v0

    aget p1, p1, v1

    aget-boolean p1, p2, p1

    if-eqz p1, :cond_27

    move p0, v1

    :cond_27
    return p0
.end method

.method public static final showDragViewAfterCancel(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dragView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_34

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    instance-of v2, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_2a

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    :cond_2a
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->reorderInCompact(Landroid/view/View;Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method public static final stepMoveItemsToEmptyCell(Lcom/android/launcher3/OplusCellLayout;[IIILjava/util/List;ZZ)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "[III",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "cellLayout"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emptyCell"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "views"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    new-instance v15, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v15, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v4, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-eqz p5, :cond_30

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    move-object v7, v4

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v5, p2

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string/jumbo v9, "， from=, ["

    const-string/jumbo v10, "stepMoveItemsToEmptyCell(), child="

    const-string v11, "LCR_CardReorderInject"

    const-string v12, ", "

    if-eqz v6, :cond_14e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move/from16 v13, p6

    :goto_50
    sget-object v14, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-direct {v14, v0, v15}, Lcom/android/launcher3/card/reorder/CardReorderInject;->safetyCheckGridOccupancy([ILcom/android/launcher3/util/GridOccupancy;)Z

    move-result v14

    if-nez v14, :cond_120

    move/from16 v14, p3

    if-ne v5, v14, :cond_64

    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v16, v4

    goto/16 :goto_128

    :cond_64
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v2, v13, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_6f

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_70

    :cond_6f
    const/4 v13, 0x0

    :goto_70
    if-nez v13, :cond_75

    move-object/from16 v16, v4

    goto :goto_85

    :cond_75
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v16, v4

    instance-of v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v4, :cond_82

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :goto_83
    if-nez v2, :cond_8d

    :goto_85
    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 p2, v5

    goto/16 :goto_114

    :cond_8d
    if-eqz v7, :cond_aa

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    const/16 v17, 0x0

    move/from16 p2, v5

    aget v5, v0, v17

    const/16 v17, 0x1

    aget v14, v0, v17

    move/from16 v17, v1

    iget v1, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    move/from16 v18, v3

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {v4, v5, v14, v1, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_aa
    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 p2, v5

    :goto_b0
    const/4 v1, 0x0

    invoke-virtual {v15, v13, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    if-nez p5, :cond_107

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], to="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v4, v0, v1

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput-boolean v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    goto :goto_109

    :cond_107
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_109
    aget v10, v0, v3

    aget v11, v0, v1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :goto_114
    move/from16 v5, p2

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_38

    :cond_120
    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v13, p6

    :goto_128
    invoke-virtual {v8, v0, v13}, Lcom/android/launcher3/OplusCellLayout;->updateCellToNextPos([IZ)V

    if-eqz v13, :cond_135

    const/4 v1, 0x1

    aget v2, v0, v1

    move/from16 v3, v18

    if-lt v2, v3, :cond_13d

    return-void

    :cond_135
    move/from16 v3, v18

    const/4 v1, 0x1

    aget v2, v0, v1

    if-gez v2, :cond_13d

    return-void

    :cond_13d
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v1, v0, v1

    mul-int v1, v1, v17

    add-int v5, v1, v2

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move/from16 v1, v17

    goto/16 :goto_50

    :cond_14e
    if-eqz p5, :cond_254

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->generateReorderDelayMap(Landroid/util/ArrayMap;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object v13

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_161
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_259

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v6, :cond_177

    goto :goto_19b

    :cond_177
    const-string/jumbo v2, "map[view] ?: return@forEach"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_189

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v5, v2

    goto :goto_18a

    :cond_189
    move-object v5, v0

    :goto_18a
    if-nez v5, :cond_18d

    goto :goto_19b

    :cond_18d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v3, :cond_198

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_199

    :cond_198
    move-object v2, v0

    :goto_199
    if-nez v2, :cond_19f

    :goto_19b
    move-object/from16 v16, v7

    goto/16 :goto_250

    :cond_19f
    if-eqz v13, :cond_1a9

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1ae

    :cond_1a9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1ae
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f2

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], to=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] , delay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f2
    const/4 v0, 0x0

    invoke-virtual {v15, v5, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iput-boolean v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    move/from16 v16, v3

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v17, 0x1c2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v2

    move/from16 v2, v21

    move/from16 v23, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v24, v5

    move/from16 v5, v16

    move-object/from16 v25, v6

    move/from16 v6, v18

    move-object/from16 v16, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move/from16 v1, v23

    move-object/from16 v0, v24

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move/from16 v1, v22

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v2, v25

    iget v0, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 p1, v15

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    move-object/from16 v0, v20

    :goto_250
    move-object/from16 v7, v16

    goto/16 :goto_161

    :cond_254
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    :cond_259
    return-void
.end method

.method public static final updateClip(Lcom/android/launcher3/CellLayout;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public final isCellLayoutChild(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z
    .registers 7

    const-string p0, "cellLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p0

    :goto_e
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/LauncherDragView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.dragndrop.LauncherDragView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/dragndrop/LauncherDragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :cond_2a
    if-ne p0, p2, :cond_3e

    goto :goto_3f

    :cond_2d
    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :cond_3b
    if-ne p0, p2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    return v2
.end method

.method public final isFolderToBig(Landroid/view/View;)Z
    .registers 2

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final onAcceptDrop(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->getDropToLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method
