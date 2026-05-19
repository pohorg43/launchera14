.class public final Lcom/android/launcher3/card/reorder/CardNeighbor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardNeighbor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardNeighbor.kt\ncom/android/launcher3/card/reorder/CardNeighbor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,260:1\n1855#2,2:261\n215#3,2:263\n215#3,2:265\n215#3,2:267\n215#3,2:270\n1#4:269\n*S KotlinDebug\n*F\n+ 1 CardNeighbor.kt\ncom/android/launcher3/card/reorder/CardNeighbor\n*L\n86#1:261,2\n118#1:263,2\n143#1:265,2\n213#1:267,2\n253#1:270,2\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_CardNeighbor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private dragViewCellX:I

.field private dragViewCellY:I

.field private mCollectInRow:Z

.field private mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

.field private final neighborBounding:Landroid/graphics/Rect;

.field private final neighborMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final neighborViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final perfectDragResult:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->Companion:Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V
    .registers 3

    const-string v0, "mInspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborBounding:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_28

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    return-void

    :array_28
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final calculateRowOrColumn(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v6

    aget v6, v6, v3

    add-int/2addr v6, v2

    invoke-direct {v4, v0, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v2, "solution.map"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_3e

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v8, v6

    iget v9, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v4, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3e

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v7}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    const-string v8, "child"

    const-string v9, "LCR_CardNeighbor"

    const-string v10, "Card"

    if-ne v6, v7, :cond_a9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_a6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateRowOrColumn(), mCollectInRow false, child="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void

    :cond_a9
    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    if-ne v2, v6, :cond_3e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_d8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateRowOrColumn(), mCollectInRow true, child="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    iput-boolean v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void

    :cond_db
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object p1

    aget p1, p1, v1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e8

    if-ne p1, v3, :cond_e9

    :cond_e8
    move v1, v3

    :cond_e9
    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void
.end method

.method private final getViewFromSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;II)Landroid/view/View;
    .registers 6

    iget-object p0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo p1, "solution.map"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne p2, v1, :cond_10

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne p3, p1, :cond_10

    return-object v0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private final isDragViewFullInRow()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    if-eq v0, v3, :cond_48

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    if-ne v0, p0, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :cond_48
    :goto_48
    return v1
.end method

.method private final loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    :goto_d
    if-ge v6, v3, :cond_101

    move v7, v4

    :goto_10
    if-ge v7, v5, :cond_fd

    invoke-direct {v0, v1, v6, v7}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getViewFromSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;II)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1a

    goto/16 :goto_f9

    :cond_1a
    iget-object v9, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v9}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v9

    if-eq v8, v9, :cond_f9

    iget-object v9, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v9, :cond_2e

    goto/16 :goto_f9

    :cond_2e
    invoke-static {v8}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v10

    const-string v11, "LCR_CardNeighbor"

    const-string v12, "Card"

    if-eqz v10, :cond_a8

    iget-boolean v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v10, :cond_50

    iget v10, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ge v10, v2, :cond_41

    goto :goto_42

    :cond_41
    move v10, v2

    :goto_42
    iget v13, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v14, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int v15, v13, v14

    if-le v15, v5, :cond_4c

    add-int/2addr v13, v14

    goto :goto_4d

    :cond_4c
    move v13, v3

    :goto_4d
    move v15, v3

    move v14, v4

    goto :goto_64

    :cond_50
    iget v10, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ge v10, v4, :cond_56

    move v13, v10

    goto :goto_57

    :cond_56
    move v13, v4

    :goto_57
    iget v14, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int v15, v10, v14

    if-le v15, v5, :cond_5f

    add-int/2addr v10, v14

    goto :goto_60

    :cond_5f
    move v10, v5

    :goto_60
    move v15, v10

    move v14, v13

    move v10, v2

    move v13, v3

    :goto_64
    if-ne v10, v2, :cond_6c

    if-ne v13, v3, :cond_6c

    if-ne v14, v4, :cond_6c

    if-eq v15, v5, :cond_a8

    :cond_6c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "loopTogetherViews(), old=[ "

    const-string v7, ", "

    invoke-static {v6, v2, v7, v3, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], new=[ "

    invoke-static {v2, v4, v7, v5, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v2, v10, v7, v13, v7}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v11, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/reorder/CardNeighbor;->loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V

    return-void

    :cond_a8
    iget v10, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-gt v2, v10, :cond_b2

    if-ge v10, v3, :cond_b2

    move v10, v13

    goto :goto_b3

    :cond_b2
    move v10, v14

    :goto_b3
    if-eqz v10, :cond_f9

    iget v10, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-gt v4, v10, :cond_bc

    if-ge v10, v5, :cond_bc

    goto :goto_bd

    :cond_bc
    move v13, v14

    :goto_bd
    if-eqz v13, :cond_f9

    iget-object v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f9

    iget-object v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v10}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v10, v9, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_f4

    const-string v10, "loopNeighborViews(), add "

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", c="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v11, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4
    iget-object v9, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    :goto_f9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10

    :cond_fd
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    :cond_101
    return-void
.end method


# virtual methods
.method public final collectAllNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "collectSolution"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->isDragViewFullInRow()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->clear()V

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2c

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    iget-object v4, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v4

    iget-object v5, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-static {v7, v0, v1, v4, v5}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v2, :cond_77

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_77

    new-instance v0, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v4

    aget v4, v4, v3

    iget-object v5, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    iget-object v8, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v8}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v8

    aget v3, v8, v3

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    :goto_75
    move-object v8, v0

    goto :goto_b1

    :cond_77
    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v2, :cond_216

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_216

    new-instance v0, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v4

    aget v4, v4, v3

    iget-object v5, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    iget-object v8, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v8}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v8

    aget v3, v8, v3

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    goto :goto_75

    :goto_b1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/card/reorder/CardNeighbor;->calculateRowOrColumn(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget v0, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    iget v2, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v2, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget-boolean v2, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v2, :cond_c2

    move v9, v0

    goto :goto_c3

    :cond_c2
    move v9, v1

    :goto_c3
    if-eqz v2, :cond_c9

    iget v2, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v0, v2

    goto :goto_d3

    :cond_c9
    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    :goto_d3
    move v10, v0

    iget-boolean v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v0, :cond_d9

    goto :goto_db

    :cond_d9
    iget v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    :goto_db
    move v11, v1

    if-eqz v0, :cond_e9

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    goto :goto_ee

    :cond_e9
    iget v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget v1, v8, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v1

    :goto_ee
    move v12, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v13, "LCR_CardNeighbor"

    const-string v14, "Card"

    if-eqz v0, :cond_10d

    const-string v0, "collectAllNeighborViews(), start, collectSolution="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/reorder/CardNeighbor;->loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v2, :cond_137

    move-object/from16 v16, v0

    goto :goto_153

    :cond_137
    const-string v3, "collectSolution.map[v] ?: return@forEach"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v15, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move-object/from16 v16, v0

    iget v0, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v4, v5, v15, v0, v2}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->remove(Landroid/view/View;)V

    :goto_153
    move-object/from16 v0, v16

    goto :goto_11e

    :cond_156
    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    iget-boolean v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v1, :cond_166

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_169

    :cond_166
    const/4 v2, 0x0

    iget v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    :goto_169
    aput v1, v0, v2

    iget-object v0, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    iget-boolean v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v1, :cond_175

    iget v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    const/4 v2, 0x1

    goto :goto_17e

    :cond_175
    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    :goto_17e
    aput v1, v0, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_216

    const-string v0, "collectAllNeighborViews(), end, mCollectInRow="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preValidResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dragViewLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dragSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endX="

    const-string v3, ", startY="

    invoke-static {v0, v9, v1, v10, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", endY="

    const-string v3, ", size="

    invoke-static {v0, v11, v1, v12, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", perfectDragResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOccupied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collectSolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_216
    return-void
.end method

.method public final getDragViewCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    return p0
.end method

.method public final getDragViewCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    return p0
.end method

.method public final getNeighborBounding()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborBounding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getNeighborMaps()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getNeighborViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getPerfectDragResult()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    return-object p0
.end method

.method public final hasPerfectDragResult()Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-ltz v1, :cond_d

    aget p0, p0, v2

    if-ltz p0, :cond_d

    move v0, v2

    :cond_d
    return v0
.end method

.method public final isOverlapping()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v3

    aget v3, v3, v2

    if-ne v0, v3, :cond_22

    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object p0

    aget p0, p0, v1

    if-eq v0, p0, :cond_23

    :cond_22
    move v1, v2

    :cond_23
    return v1
.end method

.method public final restoreNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 11

    const-string/jumbo v0, "solution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v4, "solution.map"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v7, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v8, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreNeighborViews(), "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Card"

    const-string v3, "LCR_CardNeighbor"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_76
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final updateWillGoLocation(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "solution"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    aget v2, v2, v4

    iget v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    goto :goto_25

    :cond_1b
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    aget v2, v2, v3

    iget v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    :goto_25
    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_119

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    iget-boolean v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-eqz v10, :cond_63

    add-int/2addr v11, v2

    :cond_63
    if-eqz v10, :cond_68

    iget v10, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_6b

    :cond_68
    iget v10, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v10, v2

    :goto_6b
    if-ltz v11, :cond_70

    if-gt v11, v5, :cond_70

    goto :goto_71

    :cond_70
    move v3, v4

    :goto_71
    const-string v4, " to ["

    const-string/jumbo v12, "view"

    const-string v13, "LCR_CardNeighbor"

    const-string v14, "Card"

    const-string v15, ", "

    if-eqz v3, :cond_df

    iget v3, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int v0, v11, v3

    if-gt v0, v5, :cond_df

    if-ltz v10, :cond_8a

    if-gt v10, v6, :cond_8a

    const/4 v0, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    if-eqz v0, :cond_df

    add-int/2addr v3, v10

    if-le v3, v6, :cond_91

    goto :goto_df

    :cond_91
    iget-object v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v3, "solution.map"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/util/CellAndSpan;

    iget v1, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v8, v8, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v3, v11, v10, v1, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_111

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWillGoLocation(), animate, diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_111

    :cond_df
    :goto_df
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_111

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWillGoLocation(), diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], invalid."

    invoke-static {v0, v1, v14, v13}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_111
    :goto_111
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_44

    :cond_119
    return-void
.end method
