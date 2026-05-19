.class public Lcom/android/common/util/LauncherLayoutUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;,
        Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;
    }
.end annotation


# static fields
.field public static final DO_S_FILL:Z = true

.field private static final LOG_CURRENT_MODE:Ljava/lang/String; = ", curLauncherMode = "

.field private static final LOG_USER:Ljava/lang/String; = ", user = "

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "BR-Launcher_LauncherLayoutUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "intent"

    const-string v3, "container"

    const-string/jumbo v4, "screen"

    const-string v5, "cellX"

    const-string v6, "cellY"

    const-string/jumbo v7, "spanX"

    const-string/jumbo v8, "spanY"

    const-string v9, "itemType"

    const-string v10, "appWidgetId"

    const-string v11, "appWidgetProvider"

    const-string v12, "iconPackage"

    const-string v13, "iconResource"

    const-string/jumbo v14, "restored"

    const-string/jumbo v15, "profileId"

    const-string/jumbo v16, "rank"

    const-string/jumbo v17, "options"

    const-string/jumbo v18, "user_id"

    const-string v19, "card_type"

    const-string/jumbo v20, "service_id"

    const-string v21, "card_category"

    const-string v22, "editable_attributes"

    const-string/jumbo v23, "theme_card_identification"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherLayoutUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$resizeCardSpanXY$6(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private static addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V
    .registers 2
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private static addNonNullItems(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-void
.end method

.method private static arrangeBigFoldersOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/GridOccupancy;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arrangeBigFoldersOnScreen compact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    if-nez p2, :cond_40

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    if-eqz v4, :cond_40

    goto/16 :goto_f1

    :cond_40
    const/4 v4, 0x2

    new-array v5, v4, [I

    new-array v4, v4, [I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6d

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p1, v5, v6, v8}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v6, v4, v7

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v6, v4, v3

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_6d

    :cond_6b
    move v6, v7

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v6, v3

    :goto_6e
    if-eqz v6, :cond_f0

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v9, v5, v7

    if-ne v8, v9, :cond_7c

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v9, v5, v3

    if-eq v8, v9, :cond_e8

    :cond_7c
    const-string v8, "Cell changed: "

    const-string/jumbo v9, "old: ["

    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] -> new: ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v3

    const-string v11, "], "

    const-string/jumbo v12, "oldSpan: ["

    invoke-static {v8, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    aget v10, v4, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] - newSpan: ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "item: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "component: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    aget v4, v5, v7

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v3, v5, v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_f0
    move v3, v6

    :goto_f1
    if-eqz v3, :cond_105

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_105
    const-string p0, "arrangeBigFoldersOnScreen not found "

    invoke-static {p0, v2, v1}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_10a
    return-object v0
.end method

.method private static arrangeCardsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/GridOccupancy;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arrangeCardsOnScreen compact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    if-nez p2, :cond_40

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    if-eqz v4, :cond_40

    goto/16 :goto_f1

    :cond_40
    const/4 v4, 0x2

    new-array v5, v4, [I

    new-array v4, v4, [I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6d

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p1, v5, v6, v8}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v6, v4, v7

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v6, v4, v3

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_6d

    :cond_6b
    move v6, v7

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v6, v3

    :goto_6e
    if-eqz v6, :cond_f0

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v9, v5, v7

    if-ne v8, v9, :cond_7c

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v9, v5, v3

    if-eq v8, v9, :cond_e8

    :cond_7c
    const-string v8, "Cell changed: "

    const-string/jumbo v9, "old: ["

    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] -> new: ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v3

    const-string v11, "], "

    const-string/jumbo v12, "oldSpan: ["

    invoke-static {v8, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    aget v10, v4, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] - newSpan: ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "item: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "component: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    aget v4, v5, v7

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v3, v5, v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_f0
    move v3, v6

    :goto_f1
    if-eqz v3, :cond_105

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_105
    const-string p0, "arrangeCardsOnScreen not found "

    invoke-static {p0, v2, v1}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_10a
    return-object v0
.end method

.method private static arrangeDesktopLayouts(Landroid/content/Context;IIIIZZZZLjava/util/List;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIZZZZ",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v6, p5

    move/from16 v0, p7

    move/from16 v7, p8

    move-object/from16 v11, p9

    invoke-static {v8, v6, v0, v7}, Lcom/android/common/util/LauncherLayoutUtils;->loadAllFavoriteItems(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-virtual {v1}, Lcom/android/launcher/bean/WorkSpaceScreenData;->isHotSeat()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/common/util/LauncherLayoutUtils;->resizeWidgetSpanXY(Landroid/content/Context;Ljava/util/ArrayList;IIIIZZ)V

    invoke-static {v8, v12, v9, v10}, Lcom/android/common/util/LauncherLayoutUtils;->resizeCardSpanXY(Landroid/content/Context;Ljava/util/ArrayList;II)V

    invoke-static {v8, v12, v9, v10}, Lcom/android/common/util/LauncherLayoutUtils;->resizeBigFolderSpanXY(Landroid/content/Context;Ljava/util/ArrayList;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    if-eqz p6, :cond_62

    const-string v2, "arrangeItemsOnScreens for doFullSFill."

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v9, v10}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeItemsOnScreens(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_80

    :cond_62
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-static {v3, v9, v10}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeItemsOnScreen(Lcom/android/launcher/bean/WorkSpaceScreenData;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_66

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_66

    :cond_80
    :goto_80
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v2, :cond_90

    goto :goto_a5

    :cond_90
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    if-eqz v11, :cond_a4

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a4
    move-object v0, v3

    :goto_a5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v7

    const/4 v12, 0x2

    if-eqz v7, :cond_c8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_c8

    const/4 v4, 0x1

    :cond_c8
    const-string v7, "item: "

    const-string v8, "], "

    const-string v12, "] -> new: ["

    const-string/jumbo v14, "old: ["

    const-string v15, ", "

    if-eqz v13, :cond_1d6

    iget-object v11, v13, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v16, 0x0

    :goto_dd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1cf

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p0, v11

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    move/from16 p1, v2

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v10, -0x65

    if-ne v2, v10, :cond_1bb

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ge v2, v9, :cond_1af

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v9, :cond_1a8

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v10, 0x3

    if-ne v2, v10, :cond_110

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    const-string v2, "component: "

    if-eqz v4, :cond_160

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    sub-int v10, v9, v10

    move/from16 p2, v4

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-nez v4, :cond_128

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v4, v10, :cond_123

    goto :goto_128

    :cond_123
    move-object/from16 p5, v0

    move-object/from16 v17, v13

    goto :goto_15e

    :cond_128
    :goto_128
    const-string/jumbo v4, "target vertical Hotseat Cell changed: "

    invoke-static {v4, v14}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 p5, v0

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-static {v4, v0, v12, v13, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15e
    const/4 v0, 0x0

    goto :goto_1a3

    :cond_160
    move-object/from16 p5, v0

    move/from16 p2, v4

    move-object/from16 v17, v13

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v4, v0, :cond_170

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eqz v4, :cond_1a2

    :cond_170
    const-string/jumbo v4, "target horizontal Hotseat Cell changed: "

    invoke-static {v4, v14}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v4, v10, v12, v0, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a2
    const/4 v10, 0x0

    :goto_1a3
    iput v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_1b8

    :cond_1a8
    move-object/from16 p5, v0

    move/from16 p2, v4

    move-object/from16 v17, v13

    goto :goto_1b8

    :cond_1af
    move-object/from16 p5, v0

    move/from16 p2, v4

    move-object/from16 v17, v13

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b8
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c1

    :cond_1bb
    move-object/from16 p5, v0

    move/from16 p2, v4

    move-object/from16 v17, v13

    :goto_1c1
    move-object/from16 v11, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v10, p4

    move-object/from16 v0, p5

    move-object/from16 v13, v17

    goto/16 :goto_dd

    :cond_1cf
    move-object/from16 p5, v0

    move/from16 p1, v2

    move-object/from16 v17, v13

    goto :goto_1de

    :cond_1d6
    move-object/from16 p5, v0

    move/from16 p1, v2

    move-object/from16 v17, v13

    const/16 v16, 0x0

    :goto_1de
    move/from16 v0, v16

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, "arrangeHotSeatItems: New cell countX: "

    const-string v10, ", current hotseat item count: "

    const-string v11, ", hotseatOuttargetCellXItems: "

    invoke-static {v4, v9, v10, v0, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_286

    new-array v2, v9, [Z

    const/4 v4, 0x0

    :goto_1fd
    if-ge v4, v9, :cond_21a

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_203
    :goto_203
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_217

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v11, v4, :cond_203

    const/4 v11, 0x1

    aput-boolean v11, v2, v4

    goto :goto_203

    :cond_217
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fd

    :cond_21a
    add-int/lit8 v4, v9, -0x1

    :goto_21c
    if-ltz v4, :cond_286

    aget-boolean v10, v2, v4

    if-nez v10, :cond_27f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_27f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iput v4, v10, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    sget-object v11, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v11}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v11

    if-eqz v11, :cond_276

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v11

    if-eqz v11, :cond_276

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rectifyHotseatItemCellX,beforeCellX:"

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v16, v2

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v2, v0}, Lcom/android/common/util/LauncherLayoutUtils;->rectifyHotseatItemCellXByScreenId(II)I

    move-result v2

    iput v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const-string v2, ",after,item:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_278

    :cond_276
    move-object/from16 v16, v2

    :goto_278
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_281

    :cond_27f
    move-object/from16 v16, v2

    :goto_281
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, v16

    goto :goto_21c

    :cond_286
    const/16 v2, -0x64

    if-le v0, v9, :cond_419

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_294
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v5, v17

    iget-object v6, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2ac
    :goto_2ac
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v11, v4, :cond_2ac

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ac

    :cond_2c0
    move-object/from16 v17, v5

    goto :goto_294

    :cond_2c3
    move-object/from16 v5, v17

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v6, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2c9

    :cond_2db
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2fc

    const/4 v3, 0x1

    move-object/from16 v4, p5

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/bean/WorkSpaceScreenData;

    goto :goto_2ff

    :cond_2fc
    move-object/from16 v4, p5

    const/4 v3, 0x0

    :goto_2ff
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_303
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget v10, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v11, -0x65

    if-ne v10, v11, :cond_40d

    iput v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    move/from16 v10, p4

    invoke-static {v2, v3, v9, v10}, Lcom/android/launcher/bean/WorkSpaceScreenData;->findFirstEmptyCell([ILcom/android/launcher/bean/WorkSpaceScreenData;II)Z

    move-result v11

    if-eqz v11, :cond_36f

    iget v11, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v13, 0x0

    aget v13, v2, v13

    if-ne v11, v13, :cond_330

    iget v11, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v13, 0x1

    aget v13, v2, v13

    if-eq v11, v13, :cond_366

    :cond_330
    const-string/jumbo v11, "put to current screen, remained Hotseat Cell changed: "

    invoke-static {v11, v14}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    aget v13, v2, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_366
    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 p0, v0

    move v0, v11

    move-object/from16 v11, p9

    goto/16 :goto_3ff

    :cond_36f
    new-instance v3, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {v3}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, p1

    if-ge v11, v13, :cond_38b

    const-string v11, "Add a new screen"

    invoke-static {v1, v11}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p9

    move-object/from16 p0, v0

    goto :goto_3ab

    :cond_38b
    move-object/from16 v11, p9

    move-object/from16 p0, v0

    if-eqz v11, :cond_3ab

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v13

    const-string v13, "Add item to a screen to be deleted: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3ad

    :cond_3ab
    :goto_3ab
    move/from16 p1, v13

    :goto_3ad
    invoke-static {v2, v3, v9, v10}, Lcom/android/launcher/bean/WorkSpaceScreenData;->findFirstEmptyCell([ILcom/android/launcher/bean/WorkSpaceScreenData;II)Z

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v13, 0x0

    aget v13, v2, v13

    if-ne v0, v13, :cond_3c4

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v13, 0x1

    aget v13, v2, v13

    if-eq v0, v13, :cond_3bf

    goto :goto_3c4

    :cond_3bf
    const/4 v0, 0x1

    move v13, v0

    move-object/from16 p2, v3

    goto :goto_3fc

    :cond_3c4
    :goto_3c4
    const-string/jumbo v0, "put to new screen, remained Hotseat Cell changed: "

    invoke-static {v0, v14}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    move-object/from16 p2, v3

    aget v3, v2, v13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3fc
    const/4 v0, 0x0

    move-object/from16 v3, p2

    :goto_3ff
    aget v0, v2, v0

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v0, v2, v13

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v0, v3, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_413

    :cond_40d
    move/from16 v10, p4

    move-object/from16 v11, p9

    move-object/from16 p0, v0

    :goto_413
    const/16 v2, -0x64

    move-object/from16 v0, p0

    goto/16 :goto_303

    :cond_419
    move-object/from16 v4, p5

    move-object/from16 v5, v17

    :cond_41d
    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_422
    if-ge v0, v1, :cond_46f

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-virtual {v2, v0}, Lcom/android/launcher/bean/WorkSpaceScreenData;->setScreenId(I)V

    invoke-virtual {v2, v0}, Lcom/android/launcher/bean/WorkSpaceScreenData;->setScreenRank(I)V

    iget-object v3, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_44b

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_43c

    :cond_44b
    iget-object v2, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46c

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_457
    :goto_457
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x64

    if-ne v6, v7, :cond_457

    iput v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_457

    :cond_46c
    add-int/lit8 v0, v0, 0x1

    goto :goto_422

    :cond_46f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method public static arrangeItemsOnScreen(Lcom/android/launcher/bean/WorkSpaceScreenData;II)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/common/util/b0;->b:Lcom/android/common/util/b0;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/common/util/d0;->b:Lcom/android/common/util/d0;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/common/util/a0;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/common/util/a0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_5d

    :cond_5c
    return-object v0

    :cond_5d
    :goto_5d
    new-instance p0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {p0}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    new-instance v5, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v5, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "BR-Launcher_LauncherLayoutUtils"

    if-nez v7, :cond_ca

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_78

    move v7, v8

    goto :goto_79

    :cond_78
    move v7, v6

    :goto_79
    invoke-static {v1, v5, v7}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeWidgetsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v7

    iget-object v10, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b6

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_b2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arrangeItemsOnScreen, arrange widgets success: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    invoke-interface {v1, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_b6
    const-string v7, "left widgets: "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_123

    new-instance v7, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v7}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e0

    move v7, v8

    goto :goto_e1

    :cond_e0
    move v7, v6

    :goto_e1
    invoke-static {v3, v5, v7}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeCardsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v7

    iget-object v10, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10f

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_10b

    const-string v11, "arrangeItemsOnScreen, arrange cards success: "

    invoke-static {v11, v10, v9}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_10b
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f4

    :cond_10f
    const-string v7, "left cards: "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_123
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17b

    new-instance v7, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v7}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_138

    goto :goto_139

    :cond_138
    move v8, v6

    :goto_139
    invoke-static {v4, v5, v8}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeBigFoldersOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_167

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_147
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_167

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v10, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_163

    const-string v10, "arrangeItemsOnScreen, arrange bigFolders success: "

    invoke-static {v10, v8, v9}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_163
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_147

    :cond_167
    const-string v7, "left bigFolders: "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1cb

    new-instance v7, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v7}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v2, v5}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeNonWidgetItemsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_1b3

    const-string v8, "arrangeItemsOnScreen, arrange workspaceItems success: "

    invoke-static {v8, v7, v9}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_1b3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19c

    :cond_1b7
    const-string v5, "left workspaceItems: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cb
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43
.end method

.method public static arrangeItemsOnScreens(Ljava/util/ArrayList;II)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "BR-Launcher_LauncherLayoutUtils"

    if-eqz v5, :cond_232

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/bean/WorkSpaceScreenData;

    iget-object v8, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    sget-object v10, Lcom/android/common/util/c0;->b:Lcom/android/common/util/c0;

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iget-object v10, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v11, Lcom/android/common/util/e0;->b:Lcom/android/common/util/e0;

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/common/util/z;

    invoke-direct {v12, v11, v6}, Lcom/android/common/util/z;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move v5, v6

    :goto_65
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_18

    :cond_7d
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher/bean/WorkSpaceScreenData;

    if-nez v12, :cond_8d

    new-instance v12, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {v12}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8d
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/GridOccupancy;

    if-nez v13, :cond_a2

    new-instance v13, Lcom/android/launcher3/util/GridOccupancy;

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct {v13, v14, v15}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    invoke-virtual {v2, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a6

    :cond_a2
    move/from16 v14, p1

    move/from16 v15, p2

    :goto_a6
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    goto :goto_c4

    :cond_b3
    move-object/from16 v16, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v17, v4

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4, v4}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v2

    if-nez v2, :cond_c9

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_c4
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_65

    :cond_c9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_130

    invoke-static {v8, v13, v5}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeWidgetsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v2

    iget-object v4, v12, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_119

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_119

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v18

    if-eqz v18, :cond_10d

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "arrangeItemsOnScreens, arrange widgets success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_111

    :cond_10d
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    :goto_111
    invoke-interface {v8, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_e2

    :cond_119
    move-object/from16 v19, v3

    const-string v2, "left widgets: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_132

    :cond_130
    move-object/from16 v19, v3

    :goto_132
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_182

    new-instance v2, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v2}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v10, v13, v5}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeCardsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, v12, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_153
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_16a

    const-string v4, "arrangeItemsOnScreens, arrange cards success: "

    invoke-static {v4, v3, v7}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_16a
    invoke-interface {v10, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_16e
    const-string v2, "left cards: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1cc

    new-instance v2, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v2}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v11, v13, v5}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeBigFoldersOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_198
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v12, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1b4

    const-string v4, "arrangeItemsOnScreens, arrange bigFolders success: "

    invoke-static {v4, v3, v7}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_1b4
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_198

    :cond_1b8
    const-string v2, "left bigFolders: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cc
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21c

    new-instance v2, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;

    invoke-direct {v2}, Lcom/android/common/util/LauncherLayoutUtils$CellXYPositionComparator;-><init>()V

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v9, v13}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeNonWidgetItemsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v12, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_208

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_208

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_204

    const-string v4, "arrangeItemsOnScreens, arrange workspaceItems success: "

    invoke-static {v4, v3, v7}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_204
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1ed

    :cond_208
    const-string v2, "left workspaceItems: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21c
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_228

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22a

    :cond_228
    const/4 v2, 0x1

    move v5, v2

    :cond_22a
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_65

    :cond_232
    :goto_232
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_244

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_232

    :cond_244
    const-string v2, "arrangeItemsOnScreens, change screen size from "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static arrangeNonWidgetItemsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v5, :cond_25

    goto :goto_14

    :cond_25
    if-eqz v4, :cond_14

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_14

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v5, v5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    if-eqz v6, :cond_b3

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v7, 0x0

    aget v8, v0, v7

    if-ne v6, v8, :cond_41

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v8, v0, v5

    if-eq v6, v8, :cond_8d

    :cond_41
    const-string v6, "Cell changed: "

    const-string/jumbo v8, "old: ["

    invoke-static {v6, v8}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] -> new: ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "item: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "component: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v8, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    aget v6, v0, v7

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v6, v0, v5

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v9, v0, v7

    aget v10, v0, v5

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_ae

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_b3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_bd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v4, v0, :cond_d1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_e5
    return-object v2

    :array_e6
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static arrangeWidgetsOnScreen(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher3/util/GridOccupancy;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arrangeWidgetsOnScreen compact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    if-nez p2, :cond_40

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    if-eqz v4, :cond_40

    goto/16 :goto_f1

    :cond_40
    const/4 v4, 0x2

    new-array v5, v4, [I

    new-array v4, v4, [I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6d

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p1, v5, v6, v8}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v6, v4, v7

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v6, v4, v3

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_6d

    :cond_6b
    move v6, v7

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v6, v3

    :goto_6e
    if-eqz v6, :cond_f0

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v9, v5, v7

    if-ne v8, v9, :cond_7c

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v9, v5, v3

    if-eq v8, v9, :cond_e8

    :cond_7c
    const-string v8, "Cell changed: "

    const-string/jumbo v9, "old: ["

    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] -> new: ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v3

    const-string v11, "], "

    const-string/jumbo v12, "oldSpan: ["

    invoke-static {v8, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    aget v10, v4, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] - newSpan: ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "item: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "component: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    aget v4, v5, v7

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v3, v5, v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_f0
    move v3, v6

    :goto_f1
    if-eqz v3, :cond_105

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "arrangeWidgetsOnScreen not found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    return-object v0
.end method

.method private static autoArrangeDesktopItems(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BR-Launcher_LauncherLayoutUtils"

    if-eqz v0, :cond_f

    const-string p0, "autoArrangeDesktopItems failed, workSpaceScreenData is empty."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getGlobalLayoutSettings()[I

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/bean/WorkSpaceScreenData;

    if-eqz v4, :cond_20

    iget-object v5, v4, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    new-instance v5, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v6, 0x0

    aget v6, v0, v6

    aget v7, v0, v1

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v6, v4, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/launcher/bean/WorkSpaceScreenData;->fillOccupied(Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;)V

    iget-object v6, v4, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4b
    :goto_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v8, v7, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v8, :cond_61

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {v5, v7}, Lcom/android/launcher/bean/WorkSpaceScreenData;->fillOccupiedForCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/card/LauncherCardInfo;)V

    goto :goto_4b

    :cond_61
    invoke-static {v7}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_4b

    check-cast v7, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v5, v7}, Lcom/android/launcher/bean/WorkSpaceScreenData;->fillOccupiedForBigFolder(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_4b

    :cond_6d
    iget-object v4, v4, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/android/common/util/LauncherLayoutUtils;->getItemsToRearrangePosition(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-static {v3, v5}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    goto :goto_7f

    :cond_8f
    const-string p1, "autoArrangeDesktopItems update "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " items:all changedLayouts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    const-string p1, "autoArrangeDesktopItems result: "

    invoke-static {p1, p0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static synthetic b(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreen$5(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static buildFavoritesItemCellXYUpdateOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;
    .registers 6

    const-string v0, "buildFavoritesItemCellXYUpdateOperation, info: "

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cellX"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cellY"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_49
    return-object v0
.end method

.method private static buildFavoritesItemDeleteOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v0
.end method

.method private static buildFavoritesItemUpdateOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;
    .registers 8

    const-string v0, "buildFavoritesItemUpdateOperation, info: "

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_86

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "container"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "spanX"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "spanY"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v4, "cellY"

    const-string v5, "cellX"

    const-string/jumbo v6, "screen"

    if-lez v3, :cond_4d

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_4d
    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_68
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_86
    return-object v0
.end method

.method private static buildScreenInsertOperations(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_33

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "screenRank"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    return-object v0
.end method

.method private static buildScreenItemsUpdateOperations(Lcom/android/launcher/bean/WorkSpaceScreenData;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v2}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemUpdateOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    goto :goto_b

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemUpdateOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    goto :goto_25

    :cond_39
    return-object v0
.end method

.method public static synthetic c(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreens$2(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static changeCellsLayout(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/16 v1, 0x10

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static clearEmptyFolderItem(Landroid/content/Context;II)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "screen_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, -0x65

    if-ne p2, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string/jumbo v2, "only_hot_seat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "delete_specific_screen_empty_folders"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    :cond_2c
    const-string p0, "clearEmptyFolderItem: Screen: "

    const-string v0, "BR-Launcher_LauncherLayoutUtils"

    if-eqz v2, :cond_4c

    array-length v1, v2

    if-lez v1, :cond_4c

    const-string v1, ", container: "

    const-string v3, ", empty folders: "

    invoke-static {p0, p1, v1, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_4c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", no empty folders."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method private static clearEmptyFolderItemOnHotseat(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    const/16 v1, -0x65

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItem(Landroid/content/Context;II)V

    return-void
.end method

.method private static clearEmptyFolderItemOnScreen(Landroid/content/Context;I)V
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItem(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreens$0(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static doAutoFill(Landroid/content/Context;)Z
    .registers 10

    const-string v0, "BR-Launcher_LauncherLayoutUtils"

    const-string v1, "doAutoFill."

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->loadAllScreens(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItemOnHotseat(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-virtual {v4}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItemOnScreen(Landroid/content/Context;I)V

    const/16 v5, -0x64

    const/4 v6, 0x0

    new-instance v7, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/common/util/LauncherLayoutUtils;->loadFavoriteItemsOnScreenOrHotSeat(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IZLandroid/util/Pair;Lh4/j;)V

    goto :goto_17

    :cond_3b
    invoke-static {p0, v0}, Lcom/android/common/util/LauncherLayoutUtils;->autoArrangeDesktopItems(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static doAutoFill(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 10

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    if-ne p1, v0, :cond_10

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->doAutoFill(Landroid/content/Context;)Z

    move-result p0

    goto/16 :goto_9b

    :cond_10
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getLastLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAutoFill: lastLauncherMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", curLauncherMode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", autoFill "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " start!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->doAutoFill(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/mode/LauncherModeManager;->setLastLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getLastLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9b
    return p0
.end method

.method public static doAutoFill(Landroid/content/Context;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher/mode/LauncherMode;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_26

    :cond_a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherLayoutUtils;->doAutoFill(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_26

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->doAutoFill(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_26
    :goto_26
    return v0
.end method

.method public static synthetic e(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreen$3(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreen$4(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->lambda$arrangeItemsOnScreens$1(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static generateBackupLayoutData(Landroid/content/Context;II)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateBackupLayoutData: targetCellCountX-Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_31

    aget v2, v0, v3

    if-ne p2, v2, :cond_31

    invoke-static {p0, v3, v1, v1}, Lcom/android/common/util/LauncherLayoutUtils;->loadAllFavoriteItems(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_31
    aget v1, v0, v1

    aget v2, v0, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v9}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeDesktopLayouts(Landroid/content/Context;IIIIZZZZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getItemsToRearrangePosition(Ljava/util/List;Lcom/android/launcher3/util/GridOccupancy;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_c4

    instance-of v6, v5, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v6, :cond_12

    invoke-static {v5}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_12

    :cond_2b
    invoke-virtual {p1, v0, v3, v3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v4

    const-string v6, "BR-Launcher_LauncherLayoutUtils"

    if-eqz v4, :cond_a4

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v7, v0, v2

    if-ne v4, v7, :cond_3f

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v7, v0, v3

    if-eq v4, v7, :cond_98

    :cond_3f
    const-string v4, "autoArrange, Cell changed: "

    const-string/jumbo v7, "old: ["

    invoke-static {v4, v7}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] -> new: ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "item: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "component: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v4, v0, v2

    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v4, v0, v3

    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemCellXYUpdateOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    aget v6, v0, v2

    aget v7, v0, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_c4

    :cond_a4
    const-string v4, "getItemsToRearrangePosition can not find cell for: "

    invoke-static {v4, v5, v6}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemDeleteOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemsToRearrangePosition -- can not find cell for info: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    move v4, v3

    goto/16 :goto_12

    :cond_c7
    if-nez v4, :cond_cb

    const/4 p0, 0x0

    return-object p0

    :cond_cb
    return-object v1

    :array_cc
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static getWidgetResizeMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)I
    .registers 4

    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeWidgetSpanXY resizeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static synthetic lambda$arrangeItemsOnScreen$3(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-gt p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method private static synthetic lambda$arrangeItemsOnScreen$4(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$arrangeItemsOnScreen$5(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private static synthetic lambda$arrangeItemsOnScreens$0(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-gt p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method private static synthetic lambda$arrangeItemsOnScreens$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$arrangeItemsOnScreens$2(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private static synthetic lambda$resizeBigFolderSpanXY$7(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private static synthetic lambda$resizeCardSpanXY$6(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static loadAllFavoriteItems(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->loadAllScreens(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p2, :cond_f

    if-nez p3, :cond_f

    const-string v1, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;)Lh4/j;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-virtual {v3}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItemOnScreen(Landroid/content/Context;I)V

    const/16 v4, -0x64

    new-instance v6, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, p0

    move v5, p1

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/common/util/LauncherLayoutUtils;->loadFavoriteItemsOnScreenOrHotSeat(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IZLandroid/util/Pair;Lh4/j;)V

    goto :goto_14

    :cond_3e
    new-instance v8, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {v8}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/launcher/bean/WorkSpaceScreenData;->setHotSeat(Z)V

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->clearEmptyFolderItemOnHotseat(Landroid/content/Context;)V

    const/16 v4, -0x65

    new-instance v6, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v6, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, v8

    move v5, p1

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/common/util/LauncherLayoutUtils;->loadFavoriteItemsOnScreenOrHotSeat(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IZLandroid/util/Pair;Lh4/j;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static loadAllScreens(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/common/util/LauncherLayoutUtils;->loadWorkspaceScreens(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;

    new-instance v2, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {v2}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    iget v3, v1, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher/bean/WorkSpaceScreenData;->setScreenId(I)V

    iget v1, v1, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;->mRank:I

    invoke-virtual {v2, v1}, Lcom/android/launcher/bean/WorkSpaceScreenData;->setScreenRank(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_32
    return-object v0
.end method

.method private static loadFavoriteItemsOnScreenOrHotSeat(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IZLandroid/util/Pair;Lh4/j;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            "IZ",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lh4/j<",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    const-string v5, "BR-Launcher_LauncherLayoutUtils"

    sget-object v6, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenId()I

    move-result v8

    if-ltz v3, :cond_20

    const-string/jumbo v9, "rank"

    goto :goto_22

    :cond_20
    const-string v9, "cellY, cellX"

    :goto_22
    move-object v12, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ")"

    const-string v11, "itemType"

    const-string v13, " WHERE "

    const-string v14, " FROM "

    const-string v15, "_id"

    const-string v4, "SELECT "

    const-string v2, " IN ("

    move-object/from16 v16, v5

    const-string v5, " OR "

    move-object/from16 v17, v6

    const-string v6, " AND "

    const-string v1, "container"

    move-object/from16 v18, v12

    const-string v12, "="

    move-object/from16 v19, v7

    const/16 v7, -0x65

    if-ne v3, v7, :cond_70

    invoke-static {v9, v1, v12, v3, v5}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9, v1, v2, v4, v15}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, -0x64

    invoke-static {v9, v1, v6, v11, v12}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    :cond_70
    const/16 v7, -0x64

    if-ne v3, v7, :cond_a2

    const-string/jumbo v7, "screen"

    invoke-static {v9, v7, v12, v8, v6}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9, v1, v12, v3, v5}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9, v1, v2, v4, v15}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v8, v6, v1, v12}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x64

    invoke-static {v9, v1, v6, v11, v12}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a2
    :goto_a2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/bean/WorkSpaceScreenData;->clear()V

    :try_start_a5
    new-instance v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;

    sget-object v8, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/common/util/LauncherLayoutUtils;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, v19

    move-object v9, v2

    move-object/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher/db/LayoutDataLoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_be} :catch_389
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_be} :catch_37e
    .catchall {:try_start_a5 .. :try_end_be} :catchall_37a

    :try_start_be
    iget-object v2, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_cc
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_cc} :catch_376
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cc} :catch_372
    .catchall {:try_start_be .. :try_end_cc} :catchall_36f

    if-eqz v5, :cond_e6

    :try_start_ce
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    move-object/from16 v6, v17

    invoke-virtual {v6, v5}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_dd
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_dd} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_dd} :catch_e0
    .catchall {:try_start_ce .. :try_end_dd} :catchall_36f

    move-object/from16 v17, v6

    goto :goto_c8

    :catch_e0
    move-exception v0

    move-object v2, v0

    goto :goto_111

    :catch_e3
    move-exception v0

    move-object v2, v0

    goto :goto_115

    :cond_e6
    :try_start_e6
    invoke-static/range {p0 .. p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    const/4 v4, 0x0

    :goto_eb
    invoke-virtual {v1}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_393

    const v5, 0x40000002  # 2.0000005f

    invoke-virtual {v1, v5}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_156

    if-eqz p3, :cond_156

    iget v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mItemType:I

    if-nez v5, :cond_156

    invoke-virtual {v1}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_156

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_10a
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_10a} :catch_376
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_10a} :catch_372
    .catchall {:try_start_e6 .. :try_end_10a} :catchall_36f

    if-eqz v6, :cond_119

    :try_start_10c
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_110
    .catch Ljava/lang/RuntimeException; {:try_start_10c .. :try_end_110} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_110} :catch_e0
    .catchall {:try_start_10c .. :try_end_110} :catchall_36f

    goto :goto_11d

    :goto_111
    move-object/from16 v6, v16

    goto/16 :goto_383

    :goto_115
    move-object/from16 v6, v16

    goto/16 :goto_38e

    :cond_119
    :try_start_119
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    :goto_11d
    if-eqz v6, :cond_156

    invoke-virtual {v2, v6}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v6

    if-eqz v6, :cond_156

    iget-object v7, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v7}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v7

    if-eqz v7, :cond_156

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Don\'t load downloading app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", downloadInfo, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", intent: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_150
    .catch Ljava/lang/RuntimeException; {:try_start_119 .. :try_end_150} :catch_376
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_150} :catch_372
    .catchall {:try_start_119 .. :try_end_150} :catchall_36f

    move-object/from16 v6, v16

    :try_start_152
    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_171

    :cond_156
    move-object/from16 v6, v16

    iget v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mItemType:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_19b

    if-eq v5, v7, :cond_19b

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1ee

    const/4 v9, 0x5

    if-eq v5, v9, :cond_1a1

    const/4 v9, 0x6

    if-eq v5, v9, :cond_19b

    const/16 v7, 0x63

    if-eq v5, v7, :cond_1a1

    const/16 v7, 0x64

    if-eq v5, v7, :cond_174

    :goto_171
    move-object/from16 v9, p1

    goto :goto_197

    :cond_174
    invoke-virtual {v1, v1}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->queryCardInfo(Lcom/android/launcher/db/LayoutDataLoaderCursor;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_192

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load card info = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_192
    move-object/from16 v9, p1

    invoke-virtual {v9, v5, v8}, Lcom/android/launcher/bean/WorkSpaceScreenData;->addItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :goto_197
    move-object/from16 v10, p4

    goto/16 :goto_365

    :cond_19b
    move-object/from16 v9, p1

    move-object/from16 v10, p4

    goto/16 :goto_21a

    :cond_1a1
    move-object/from16 v9, p1

    if-nez v4, :cond_1a9

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    :cond_1a9
    move-object/from16 v10, p4

    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->getAppWidgetInfo(Ljava/util/Map;Z)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v5

    if-eqz v5, :cond_1d8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_1d3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load appWidget info = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d3
    invoke-virtual {v9, v5, v8}, Lcom/android/launcher/bean/WorkSpaceScreenData;->addItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto/16 :goto_365

    :cond_1d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load appWidget info == null! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_365

    :cond_1ee
    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mId:I

    invoke-virtual {v9, v5}, Lcom/android/launcher/bean/WorkSpaceScreenData;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->updateFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_215

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load folder info = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_215
    invoke-virtual {v9, v5, v8}, Lcom/android/launcher/bean/WorkSpaceScreenData;->addItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto/16 :goto_365

    :goto_21a
    invoke-virtual {v1, v5}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->getShortCutInfo(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_238

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load app|shortcut info = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_238
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_238} :catch_36c
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_238} :catch_369
    .catchall {:try_start_152 .. :try_end_238} :catchall_36f

    :cond_238
    const-string v8, ", user = "

    if-eqz v5, :cond_2b9

    :try_start_23c
    iget-object v11, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_2b9

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_24b

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    goto :goto_24f

    :cond_24b
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    :goto_24f
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v13

    iget-object v14, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    iget v15, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v13, v11, v14, v15}, Lcom/android/launcher3/OplusAppFilter;->shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v13
    :try_end_25b
    .catch Ljava/lang/RuntimeException; {:try_start_23c .. :try_end_25b} :catch_36c
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_25b} :catch_369
    .catchall {:try_start_23c .. :try_end_25b} :catchall_36f

    if-nez v13, :cond_2b9

    const-string v7, ", pkg = "

    const-string v13, "app should not show, "

    if-eqz v12, :cond_297

    :try_start_263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v5

    iget-object v7, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v12, v7}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_365

    :cond_297
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_365

    :cond_2b9
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2f1

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2f1

    invoke-static {v5}, Lcom/android/launcher/backup/util/ShortcutUtils;->isSplitScreenCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v11

    if-eqz v11, :cond_2f1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app is splitScreen shortcut, can\'t show when isFromRestoreNotCompact: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_365

    :cond_2f1
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_35f

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_35f

    iget v11, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mItemType:I

    if-ne v11, v7, :cond_35f

    invoke-virtual {v1}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_316

    iget-object v11, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-static {v7, v11}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7

    goto :goto_317

    :cond_316
    const/4 v7, 0x0

    :goto_317
    if-eqz p5, :cond_35f

    invoke-virtual/range {p5 .. p5}, Lh4/j;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-virtual/range {p5 .. p5}, Lh4/j;->b()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseArray;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_35f

    if-eqz v7, :cond_35f

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_35f

    iget-wide v13, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mSerialNumber:J

    invoke-virtual {v12, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_35f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pinnedShortcut is null, can\'t show when isFromRestoreNotCompact: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher/db/LayoutDataLoaderCursor;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_365

    :cond_35f
    if-eqz v5, :cond_365

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Lcom/android/launcher/bean/WorkSpaceScreenData;->addItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    :try_end_365
    .catch Ljava/lang/RuntimeException; {:try_start_263 .. :try_end_365} :catch_36c
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_365} :catch_369
    .catchall {:try_start_263 .. :try_end_365} :catchall_36f

    :cond_365
    :goto_365
    move-object/from16 v16, v6

    goto/16 :goto_eb

    :catch_369
    move-exception v0

    :goto_36a
    move-object v2, v0

    goto :goto_383

    :catch_36c
    move-exception v0

    :goto_36d
    move-object v2, v0

    goto :goto_38e

    :catchall_36f
    move-exception v0

    move-object v2, v0

    goto :goto_397

    :catch_372
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_36a

    :catch_376
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_36d

    :catchall_37a
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_39c

    :catch_37e
    move-exception v0

    move-object/from16 v6, v16

    move-object v2, v0

    const/4 v1, 0x0

    :goto_383
    :try_start_383
    const-string v3, "loadFavoriteItemsOnScreenOrHotseat Exception "

    invoke-static {v6, v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_393

    :catch_389
    move-exception v0

    move-object/from16 v6, v16

    move-object v2, v0

    const/4 v1, 0x0

    :goto_38e
    const-string v3, "loadFavoriteItemsOnScreenOrHotseat RuntimeException = "

    invoke-static {v6, v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_393
    .catchall {:try_start_383 .. :try_end_393} :catchall_36f

    :cond_393
    :goto_393
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_397
    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    :goto_39c
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static loadWorkspaceScreens(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    const-string/jumbo v3, "screenRank"

    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "screenRank"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_48

    if-eqz p0, :cond_42

    :goto_1f
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_38

    goto :goto_1f

    :catchall_38
    move-exception v1

    :try_start_39
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p0

    :try_start_3e
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v1

    :cond_42
    if-eqz p0, :cond_50

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception p0

    const-string v1, "loadWorkspaceScreens --- e = "

    const-string v2, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v1, p0, v2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-object v0
.end method

.method private static rectifyHotseatItemCellXByScreenId(II)I
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-le p1, p0, :cond_14

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p0

    return p1

    :cond_14
    return p0
.end method

.method public static resizeBigFolderSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V
    .registers 4

    return-void
.end method

.method private static resizeBigFolderSpanXY(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-static {p0, v0, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeBigFolderSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static resizeCardSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V
    .registers 5

    iget-object p1, p1, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/common/util/f0;->b:Lcom/android/common/util/f0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/launcher3/card/LauncherCardInfo;->resizeSpanXY(Landroid/content/Context;II)V

    goto :goto_21

    :cond_33
    return-void
.end method

.method private static resizeCardSpanXY(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-static {p0, v0, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeCardSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static resizeWidgetSpanWithRatio(FFIILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 6

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1a

    iget p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p1, p4, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_33

    :cond_1a
    cmpg-float p0, p0, p1

    if-gez p0, :cond_33

    iget p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p4, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    :cond_33
    :goto_33
    return-void
.end method

.method public static resizeWidgetSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IIIIZZ)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    if-eqz v1, :cond_4c5

    iget-object v2, v1, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_4c5

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resizeWidgetSpanXY: layout ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] -> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-static {v2, v9, v12, v10, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "arrangeForOplus32: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " of screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v13, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v15, :cond_6a

    goto :goto_5a

    :cond_6a
    const-string v6, " oldSpan ["

    const-string v5, " at position: ["

    const-string v4, " minSpan: ["

    const-string v3, " span: ["

    const-string v2, " of "

    const-string v1, " x "

    move-object/from16 p1, v14

    const-string v14, "]"

    if-eqz p7, :cond_e6

    iget v11, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v16, v13

    iget v13, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    move-object/from16 v17, v2

    iget v2, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v15, v7, v8, v9, v10}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetSpanAndMinSpanForOta(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;IIII)Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "resizeWidgetSpanXY: isFromOtaCompat final:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v9, v3, v14, v4}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v9, v1, v14, v5}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " oldMinSpan ["

    invoke-static {v9, v12, v0, v14, v1}, Lcom/android/common/util/h0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v13, v12, v2, v14}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v16

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, p4

    move/from16 v11, p5

    move-object v2, v12

    goto/16 :goto_4b5

    :cond_e6
    move-object v0, v2

    move-object v9, v13

    iget-object v2, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    const/4 v10, 0x0

    move-object/from16 v11, p0

    invoke-static {v11, v2, v10}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v11, v7, v8}, Lcom/android/launcher/CellLayoutHelper;->getWidgetCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v10

    iget v13, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v16, v4

    iget v4, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v17, v1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v18, "resizeWidgetSpanXY: ---curCellSize: "

    const/16 v19, 0x0

    aput-object v18, v1, v19

    const/16 v18, 0x1

    aput-object v10, v1, v18

    const/4 v10, 0x2

    aput-object v0, v1, v10

    iget-object v10, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    const/16 v18, 0x3

    aput-object v10, v1, v18

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minWidth:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v10

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v1

    iget v1, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minHeight:I

    move-object/from16 v18, v0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const/16 v20, 0xa

    const-string/jumbo v21, "resizeWidgetSpanXY:"

    const/16 v22, 0x8

    const/16 v23, 0x7

    const/16 v24, 0x5

    if-eqz v1, :cond_1a3

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v21, v1, v19

    const-string v25, " minWidth: "

    const/16 v26, 0x1

    aput-object v25, v1, v26

    move-object/from16 v25, v3

    iget v3, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v26, 0x2

    aput-object v3, v1, v26

    const-string v3, ", minHeight: "

    const/16 v26, 0x3

    aput-object v3, v1, v26

    iget v3, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v26, 0x4

    aput-object v3, v1, v26

    const-string v3, ", left: "

    aput-object v3, v1, v24

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v26, 0x6

    aput-object v3, v1, v26

    const-string v3, ", right: "

    aput-object v3, v1, v23

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v22

    const-string v3, ", top: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v26, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v1, v5

    const-string v3, ", bottom: "

    aput-object v3, v1, v20

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v1, v5

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a7

    :cond_1a3
    move-object/from16 v25, v3

    move-object/from16 v26, v5

    :goto_1a7
    invoke-virtual {v15}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getMinResize()[I

    move-result-object v1

    if-nez v1, :cond_1af

    move v5, v10

    goto :goto_1b8

    :cond_1af
    aget v3, v1, v19

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    move v5, v3

    :goto_1b8
    if-nez v1, :cond_1bc

    move v3, v0

    goto :goto_1c6

    :cond_1bc
    const/4 v3, 0x1

    aget v1, v1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    move v3, v1

    :goto_1c6
    iget v2, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v8, v1

    move-object/from16 v7, v17

    move/from16 v1, p2

    move/from16 v17, v2

    move-object/from16 v27, v18

    move/from16 v2, p3

    move-object/from16 v18, v15

    move-object/from16 v28, v25

    move v15, v3

    move v3, v13

    move-object/from16 v13, v16

    move/from16 v16, v5

    move-object/from16 v29, v26

    move v5, v10

    move-object/from16 v30, v6

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/CellLayoutHelper;->rectToCell(IIIIII)[I

    move-result-object v1

    aget v6, v1, v19

    const/4 v2, 0x1

    aget v5, v1, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_282

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "resizeWidgetSpanXY: "

    aput-object v3, v1, v19

    const-string v3, " curSpan: ["

    aput-object v3, v1, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v7, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, ", curMinSpan: ["

    invoke-static {v2, v6}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v24

    const/4 v2, 0x6

    aput-object v7, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v23

    const-string v2, ", curWidthHeight: ["

    aput-object v2, v1, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    aput-object v12, v1, v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    const-string v3, ", minResizeWidthHeight: ["

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object v12, v1, v2

    const/16 v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_282
    if-eqz p6, :cond_29d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v10, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->rectToCellColorsOS32(Landroid/content/res/Resources;II)[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v4, v16

    invoke-static {v1, v4, v15}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->rectToCellColorsOS32(Landroid/content/res/Resources;II)[I

    move-result-object v1

    move v10, v6

    move-object/from16 v16, v12

    move-object/from16 v25, v13

    move v13, v5

    goto :goto_2df

    :cond_29d
    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v4, v16

    invoke-static {v11, v3, v2}, Lcom/android/launcher/CellLayoutHelper;->getWidgetCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v1

    iget v11, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v16, v12

    iget v12, v1, Landroid/graphics/Point;->y:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeWidgetSpanXY: newCellSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p4

    move/from16 v3, p5

    move/from16 v2, p5

    move-object/from16 v25, v13

    move/from16 v13, p4

    move v3, v11

    move/from16 v26, v4

    move v4, v12

    move v13, v5

    move v5, v10

    move v10, v6

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/CellLayoutHelper;->rectToCell(IIIIII)[I

    move-result-object v0

    move/from16 v5, v26

    move v6, v15

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/CellLayoutHelper;->rectToCell(IIIIII)[I

    move-result-object v1

    :goto_2df
    aget v2, v0, v19

    move-object/from16 v3, v18

    iput v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aget v0, v1, v19

    iput v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    aget v0, v1, v2

    iput v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_339

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v21, v0, v19

    const-string v1, " targetSpan: ["

    aput-object v1, v0, v2

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object v7, v0, v1

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "] "

    aput-object v1, v0, v24

    const-string v1, " targetMinSpan: ["

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v23

    aput-object v7, v0, v22

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    aput-object v14, v0, v20

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_339
    move/from16 v0, v17

    if-eq v0, v10, :cond_33f

    const/4 v1, 0x1

    goto :goto_341

    :cond_33f
    move/from16 v1, v19

    :goto_341
    if-eq v8, v13, :cond_345

    const/4 v2, 0x1

    goto :goto_347

    :cond_345
    move/from16 v2, v19

    :goto_347
    if-nez v1, :cond_34b

    if-eqz v2, :cond_39b

    :cond_34b
    invoke-static {v3}, Lcom/android/common/util/LauncherLayoutUtils;->getWidgetResizeMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)I

    move-result v4

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    int-to-float v5, v5

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_392

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v21, v6, v19

    const-string v11, " xResized: "

    const/4 v12, 0x1

    aput-object v11, v6, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v6, v12

    const-string v11, ", yResized: "

    const/4 v12, 0x3

    aput-object v11, v6, v12

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v6, v12

    const-string v11, ", resizeMode: "

    aput-object v11, v6, v24

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v6, v12

    const-string v11, ", oldRatio: "

    aput-object v11, v6, v23

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v6, v22

    invoke-static {v9, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_392
    const/4 v6, 0x1

    if-eq v4, v6, :cond_443

    const/4 v6, 0x2

    if-eq v4, v6, :cond_426

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3a4

    :cond_39b
    move/from16 v4, p4

    move/from16 v11, p5

    move v6, v13

    move-object/from16 v13, v27

    goto/16 :goto_45f

    :cond_3a4
    if-eqz v1, :cond_3fb

    if-eqz v2, :cond_3fb

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    move/from16 v4, p4

    move v6, v13

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v11, p5

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v12, "resizeWidgetSpanXY: oldRatio: "

    aput-object v12, v1, v19

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v1, v13

    const-string v12, ", newRatio: "

    const/4 v13, 0x2

    aput-object v12, v1, v13

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v1, v13

    const/4 v12, 0x4

    move-object/from16 v13, v27

    aput-object v13, v1, v12

    aput-object v3, v1, v24

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v5, v4, v11, v3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeWidgetSpanWithRatio(FFIILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    goto :goto_45f

    :cond_3fb
    move/from16 v4, p4

    move/from16 v11, p5

    move v6, v13

    move-object/from16 v13, v27

    if-eqz v2, :cond_415

    iput v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_45f

    :cond_415
    iput v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    goto :goto_45f

    :cond_426
    move/from16 v4, p4

    move/from16 v11, p5

    move v6, v13

    move-object/from16 v13, v27

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_45f

    :cond_443
    move/from16 v4, p4

    move/from16 v11, p5

    move v6, v13

    move-object/from16 v13, v27

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    :goto_45f
    const-string/jumbo v1, "resizeWidgetSpanXY: final:"

    move-object/from16 v2, v28

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v5, v25

    invoke-static {v1, v2, v14, v5}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move-object/from16 v5, v29

    invoke-static {v1, v2, v14, v5}, Landroidx/constraintlayout/core/widgets/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldMinSpan ["

    invoke-static {v1, v2, v8, v14, v0}, Lcom/android/common/util/h0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v10, v2, v6, v14}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b5
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object v12, v2

    move-object v13, v9

    move v10, v11

    move/from16 v11, p6

    move v9, v4

    goto/16 :goto_5a

    :cond_4c5
    :goto_4c5
    return-void
.end method

.method private static resizeWidgetSpanXY(Landroid/content/Context;Ljava/util/ArrayList;IIIIZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;IIIIZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher/bean/WorkSpaceScreenData;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/common/util/LauncherLayoutUtils;->resizeWidgetSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IIIIZZ)V

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public static switchCellsLayout(Landroid/content/Context;IIZ)Z
    .registers 7

    invoke-static {p0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v1, v0, p3, v2}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ)Z

    move-result p0

    return p0
.end method

.method public static switchCellsLayout(Landroid/content/Context;[IZ)Z
    .registers 5

    invoke-static {p0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ)Z

    move-result p0

    return p0
.end method

.method public static switchCellsLayout(Landroid/content/Context;[I[I)Z
    .registers 4
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ)Z

    move-result p0

    return p0
.end method

.method public static switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[Z)Z
    .registers 21
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ[Z)Z

    move-result v0

    goto/16 :goto_b3

    :cond_1c
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getLastLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchCellsLayout: lastLauncherMode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", curLauncherMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", switch "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " start!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v8, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static/range {v9 .. v14}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ[Z)Z

    move-result v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v9

    invoke-virtual {v9, v2, v4, v4}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher/mode/LauncherModeManager;->setLastLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getLastLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :goto_b3
    return v0
.end method

.method public static switchCellsLayout(Landroid/content/Context;[I[ILjava/util/List;ZZ)Z
    .registers 13
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[I",
            "Ljava/util/List<",
            "Lcom/android/launcher/mode/LauncherMode;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v6, v0, [Z

    const/4 v0, 0x0

    aput-boolean p4, v6, v0

    const/4 p4, 0x1

    aput-boolean p5, v6, p4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILjava/util/List;Z[Z)Z

    move-result p0

    return p0
.end method

.method private static switchCellsLayout(Landroid/content/Context;[I[ILjava/util/List;Z[Z)Z
    .registers 13
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[I",
            "Ljava/util/List<",
            "Lcom/android/launcher/mode/LauncherMode;",
            ">;Z[Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_32

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_32

    :cond_a
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher/mode/LauncherMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[Z)Z

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_32

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/android/launcher/mode/LauncherMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[Z)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_32
    :goto_32
    return v0
.end method

.method public static switchCellsLayout(Landroid/content/Context;[I[IZ)Z
    .registers 5
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ)Z

    move-result p0

    return p0
.end method

.method private static switchCellsLayout(Landroid/content/Context;[I[IZZ)Z
    .registers 12
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v6, v0, [Z

    const/4 v0, 0x0

    aput-boolean p4, v6, v0

    const/4 p4, 0x1

    aput-boolean v0, v6, p4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZZ[Z)Z

    move-result p0

    return p0
.end method

.method private static switchCellsLayout(Landroid/content/Context;[I[IZZ[Z)Z
    .registers 20
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    move-object/from16 v1, p2

    const-string/jumbo v2, "switchCellsLayout: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", doSFill = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFromRestoreNotCompact = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-boolean v5, p5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFromOtaCompat = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-boolean v6, p5, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "BR-Launcher_LauncherLayoutUtils"

    invoke-static {v6, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v7, v6, v2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    array-length v7, v1

    if-ne v2, v7, :cond_9b

    array-length v2, v0

    const/4 v7, 0x2

    if-eq v2, v7, :cond_64

    goto :goto_9b

    :cond_64
    aget v2, v0, v4

    aget v7, v1, v4

    if-ne v2, v7, :cond_79

    aget v2, v0, v5

    aget v7, v1, v5

    if-ne v2, v7, :cond_79

    if-nez p3, :cond_79

    const-string/jumbo v0, "switchCellsLayout: target is same as original, and backAction is null!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget v6, v1, v4

    aget v1, v1, v5

    aget v7, v0, v4

    aget v8, v0, v5

    const/4 v9, 0x0

    aget-boolean v11, p5, v4

    aget-boolean v12, p5, v5

    move-object v4, p0

    move v5, v6

    move v6, v1

    move/from16 v10, p4

    move-object v13, v2

    invoke-static/range {v4 .. v13}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeDesktopLayouts(Landroid/content/Context;IIIIZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    invoke-static {p0, v0, v2}, Lcom/android/common/util/LauncherLayoutUtils;->updateNewDesktopLayoutsToDatabase(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_9b
    :goto_9b
    const-string/jumbo v0, "switchCellsLayout: invalid params, return false!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private static updateNewDesktopLayoutsToDatabase(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/android/common/util/LauncherLayoutUtils;->buildScreenInsertOperations(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItems(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-static {v1}, Lcom/android/common/util/LauncherLayoutUtils;->buildScreenItemsUpdateOperations(Lcom/android/launcher/bean/WorkSpaceScreenData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_23

    :cond_37
    const-string p1, "BR-Launcher_LauncherLayoutUtils"

    if-eqz p2, :cond_af

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/bean/WorkSpaceScreenData;

    iget-object v2, v1, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNewDesktopLayoutsToDatabase delete when out of pageSize, widgetInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemDeleteOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    goto :goto_57

    :cond_80
    iget-object v1, v1, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNewDesktopLayoutsToDatabase delete when out of pageSize, itemInfo= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/common/util/LauncherLayoutUtils;->buildFavoritesItemDeleteOperation(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/util/LauncherLayoutUtils;->addNonNullItem(Ljava/util/List;Landroid/content/ContentProviderOperation;)V

    goto :goto_86

    :cond_af
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNewDesktopLayoutsToDatabase update/delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " items:all newLayouts/noPositionItems"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteAndUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    const-string/jumbo p2, "updateNewDesktopLayoutsToDatabase result: "

    invoke-static {p2, p0, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method
