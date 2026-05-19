.class public final Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTabletExpandItemUpdateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabletExpandItemUpdateHelper.kt\ncom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1134:1\n1002#2,2:1135\n1002#2,2:1138\n1864#2,3:1140\n1549#2:1143\n1620#2,3:1144\n1549#2:1151\n1620#2,3:1152\n1#3:1137\n37#4,2:1147\n37#4,2:1155\n13309#5,2:1149\n*S KotlinDebug\n*F\n+ 1 TabletExpandItemUpdateHelper.kt\ncom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper\n*L\n275#1:1135,2\n428#1:1138,2\n429#1:1140,3\n544#1:1143\n544#1:1144,3\n619#1:1151\n619#1:1152,3\n544#1:1147,2\n619#1:1155,2\n546#1:1149,2\n*E\n"
    }
.end annotation


# static fields
.field public static final EXPAND_UPDATING_DELAY_SHORT:J = 0x32L

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

.field private static final TAG:Ljava/lang/String; = "TabletExpandItemUpdateHelper"

.field private static checkExpandChangeUpdataRunnable:Ljava/lang/Runnable;

.field private static dockerToOutUpdateExpandDate:Z

.field private static dragToOutAddExpandRunnable:Ljava/lang/Runnable;

.field private static isDragingUpdateExpandDataToInEnd:Z

.field private static final lastExpandItemCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->lastExpandItemCache:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandItems$lambda$2(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandItems$lambda$2$lambda$1(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static final buildLoadProcessHotseatExpandItems(Lcom/android/launcher/Launcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "buildLoadProcessHotseatExpandItems,lastFinalShownExpandList: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat_expand"

    const-string v4, "TabletExpandItemUpdateHelper"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_77

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExceptExpandItemsCount(Lcom/android/launcher3/Launcher;)I

    move-result v2

    const-string v5, "buildLoadProcessHotseatExpandItems,expendItemStartCellX: "

    invoke-static {v5, v2, v3, v4}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_51

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_51

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "pkg"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_77
    const-string p0, "buildLoadProcessHotseatExpandItems,expandItems: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildLoadProcessHotseatExpandItems,item: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :cond_b0
    return-object v0
.end method

.method public static final buildReplaceExpandItemInfo(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceOldItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceNewPackages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_53

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildReplaceExpandItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hotseat_expand"

    const-string v5, "TabletExpandItemUpdateHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_53
    return-object v0
.end method

.method public static final buildReplaceExpandViews(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceOldItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceNewPackages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_64

    sget-object v3, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildReplaceExpandItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Hotseat_expand"

    const-string v7, "TabletExpandItemUpdateHelper"

    invoke-static {v6, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->getComparedExpandViewTagAndBgdataCellXItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_64
    return-object v0
.end method

.method public static final buildToBeExpandInItemInfos(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandInPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildToBeExpandInItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hotseat_expand"

    const-string v5, "TabletExpandItemUpdateHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_59
    return-object v0
.end method

.method public static final buildToBeExpandInViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandInPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_12e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v4

    const-string v5, "TabletExpandItemUpdateHelper"

    const-string v6, "Hotseat_expand"

    if-eqz v4, :cond_5d

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->addBgDataExpandDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V

    goto :goto_57

    :cond_48
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    if-lez v1, :cond_57

    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->addBgDataSubscribeDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V

    :cond_57
    :goto_57
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatItemsCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    goto/16 :goto_ea

    :cond_5d
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView(Z)Z

    move-result v4

    const-string v7, "buildToBeExpandInItem,add divider:"

    if-nez v4, :cond_a4

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createExpandDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v4

    if-eqz v4, :cond_e8

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v10, 0xc9

    if-ne v9, v10, :cond_78

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_91
    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_a4
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView(Z)Z

    move-result v4

    if-nez v4, :cond_ea

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->hasSubscribeItemInContainer()Z

    move-result v4

    if-eqz v4, :cond_ea

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createSubscribeDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v4

    if-eqz v4, :cond_e8

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bd
    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v10, 0xcb

    if-ne v9, v10, :cond_bd

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_d6
    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    :goto_e8
    add-int/lit8 v1, v1, 0x1

    :cond_ea
    :goto_ea
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ee
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/2addr v1, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildToBeExpandInItem:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, p0, v3}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->getComparedExpandViewTagAndBgdataCellXItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_12e
    return-object v0
.end method

.method public static final buildToBeRemovedItemInfos(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "removePackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_5c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_5c
    const-string/jumbo p0, "toBeRemovedViews.size:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",hasExpandDividerView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final buildToBeRemovedViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "removePackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_1e
    if-ge v5, v2, :cond_58

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_55

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_55

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_54
    move v6, v3

    :cond_55
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_58
    const-string/jumbo p1, "toBeRemovedViews.size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isNeedRemoveDividerView:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hasExpandDividerView:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Hotseat_expand"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_b5

    if-eqz v6, :cond_b5

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    if-eqz p1, :cond_9c

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p0

    if-eqz p0, :cond_b5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_9c
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    if-eqz p1, :cond_b5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p0

    if-nez p0, :cond_b5

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p0

    if-eqz p0, :cond_b5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    :goto_b5
    return-object v0
.end method

.method public static synthetic c(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragToOutAddExpandItemRunnable$lambda$24(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final checkDragToInFolderExpandChangeWhenDrop(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    const-string v1, "checkDragToInFolderExpandChangeWhenDrop,isTaskbarExpandAreaSettingEnable: false"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandChangeRunnable(Z)V

    :cond_32
    return-void
.end method

.method public static final checkDragToOutAddExpandItemRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_17

    const-string p0, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    const-string v1, "checkDragToOutAddExpandItemRunnable enableUpdateExpandFlag false return"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v0, Landroidx/core/widget/a;

    invoke-direct {v0, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dragToOutAddExpandRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dragToOutAddExpandRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final checkDragToOutAddExpandItemRunnable$lambda$24(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const-string v0, "$itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dockerToOutUpdateExpandDate:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDragToOutAddExpandItemRunnable update pkg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    const-string v1, "TabletExpandItemUpdateHelper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemDelay(J)V

    :cond_2f
    return-void
.end method

.method public static final checkDragWhenDrop(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDropToLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.OplusHotseat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p0

    const-string/jumbo p1, "oplusHotseat.isDragingUpdateExpandData"

    const/4 v1, 0x1

    if-nez p0, :cond_76

    iget-object p0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p3, -0x65

    const-string v2, "d.originalDragInfo"

    const-string/jumbo v3, "oplusHotseat.isFinishDragToInToOut"

    if-ne p0, p3, :cond_4d

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isFinishDragToInToOut()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_49

    sget-object p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragToOutExpandChangeWhenDrop(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_8a

    :cond_49
    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkfinishDragToInToOutExpandChangeWhenDrop(Z)V

    goto :goto_8a

    :cond_4d
    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isDragingUpdateExpandData()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8a

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isFinishDragToInToOut()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_72

    sget-object p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragToOutExpandChangeWhenDrop(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_8a

    :cond_72
    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkfinishDragToInToOutExpandChangeWhenDrop(Z)V

    goto :goto_8a

    :cond_76
    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isDragingUpdateExpandData()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isDragingUpdateExpandDataToInEnd:Z

    if-eqz p0, :cond_8a

    if-eqz p3, :cond_8a

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkfinishDragToInToOutExpandChangeWhenDrop(Z)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static final checkExpandChangeIsUpdate(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    const-string v1, "checkExpandChangeIsUpdate,isTaskbarExpandAreaSettingEnable: false"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandChangeRunnable(Z)V

    return-void
.end method

.method public static final checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v0, "checkExpandDataRepeat,removeItem: package:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",CellX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "TabletExpandItemUpdateHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_48

    :cond_8a
    return-void
.end method

.method public static final checkfinishDragToInToOutExpandChangeWhenDrop(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    const-string v1, "checkfinishDragToInToOutExpandChangeWhenDrop,isTaskbarExpandAreaSettingEnable: false"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandChangeRunnable(Z)V

    :cond_32
    return-void
.end method

.method public static final createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "srcContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getUserId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 v3, 0xca

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, -0x65

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v5, 0x4

    invoke-static {p1, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v6

    const/16 v7, 0xa

    const-string v8, ""

    const-string v9, "TabletExpandItemUpdateHelper"

    if-eqz v6, :cond_196

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18e

    instance-of v6, v0, Lcom/android/quickstep/util/GroupTask;

    if-eqz v6, :cond_18e

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v6

    const-string/jumbo v10, "|_splitScreen/"

    const/16 v11, 0x5f

    if-eqz v6, :cond_db

    iget-object v6, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_74

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_75

    :cond_74
    const/4 v7, 0x0

    :goto_75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_86

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_87

    :cond_86
    const/4 v7, 0x0

    :goto_87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v7, :cond_a2

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_a2

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a3

    :cond_a2
    const/4 v7, 0x0

    :goto_a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_b6

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    :cond_b6
    const/4 v0, 0x0

    :goto_b7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getIndexFromPkg(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v0, "createExpandItemInfo--hasMultipleTasks:mPkgNamesForExpandItem is "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    invoke-static {v0, v6, v9}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d3

    :cond_db
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v6

    if-eqz v6, :cond_186

    sget-object v6, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v6}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v6

    if-eqz v6, :cond_186

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v6

    if-eqz v6, :cond_186

    iget-object v6, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v12, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object v12, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    invoke-virtual {v6}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_122

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10e

    :cond_122
    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_13d

    array-length v8, v6

    move v12, v3

    :goto_133
    if-ge v12, v8, :cond_13d

    aget-object v13, v6, v12

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_133

    :cond_13d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v8, :cond_14f

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_150

    :cond_14f
    const/4 v8, 0x0

    :goto_150
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_161

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_162

    :cond_161
    const/4 v0, 0x0

    :goto_162
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getIndexFromPkg(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    const-string v0, "createExpandItemInfo--hasEmbedded:init mPkgNamesForExpandItem "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    invoke-static {v0, v6, v9}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    :cond_186
    const-string v0, "createExpandItemInfo--error: not hasEmbedded and not hasMultipleTasks!!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    goto :goto_1d3

    :cond_18e
    const-string v0, "createExpandItemInfo--error: can\'t find group task!!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    goto :goto_1d3

    :cond_196
    sget-object v6, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    iget-object v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string/jumbo v10, "user"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0, v7}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->makeExpandLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    :try_start_1a6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1bc
    .catchall {:try_start_1a6 .. :try_end_1bc} :catchall_1bd

    goto :goto_1c2

    :catchall_1bd
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c2
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_1ca

    move-object v8, v0

    goto :goto_1cf

    :cond_1ca
    const-string v0, "get package info failure, e="

    invoke-static {v0, v6, v9}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1cf
    check-cast v8, Ljava/lang/CharSequence;

    iput-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_1d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createExpendItemInfo,packageName:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",itemInfo:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Hotseat_expand"

    invoke-static {v6, v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_23e

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getAppConnectDataItemMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;

    if-eqz p0, :cond_211

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_211

    invoke-static {p1}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    goto :goto_212

    :cond_211
    const/4 p1, 0x0

    :goto_212
    iput-object p1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p0, :cond_21b

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_21c

    :cond_21b
    const/4 p0, 0x0

    :goto_21c
    iput-object p0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string p0, "createExpendItemInfo use app connect bitmap="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49d

    :cond_23e
    invoke-static {p1, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v5

    const-string v6, "context"

    if-eqz v5, :cond_444

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_43c

    instance-of v1, p1, Lcom/android/quickstep/util/GroupTask;

    if-eqz v1, :cond_43c

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v5, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v5, v5

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_2d7

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "groupTask.task1.key.packageName"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v3

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "groupTask.task2!!.key.packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v4

    invoke-static {p0, v0, v4}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2a1

    invoke-static {p0, v5}, Lcom/android/common/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_29e

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_29f

    :cond_29e
    const/4 p0, 0x0

    :goto_29f
    iput-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_2a1
    iget-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b2

    const-string p0, "createExpandItemInfo-icon--hasMultipleTasks:  icon null !!"

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    :cond_2b2
    const-string p0, "createExpandItemInfo-icon--hasMultipleTasks: taskId="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mInvalidForCombineIcon ? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".mInvalidForCombineIcon"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49d

    :cond_2d7
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_434

    sget-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v0

    if-eqz v0, :cond_434

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v0

    if-eqz v0, :cond_434

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_2f9

    move v0, v4

    goto :goto_2fa

    :cond_2f9
    move v0, v3

    :goto_2fa
    const-string v1, "groupTask.task1"

    if-eqz v0, :cond_343

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_316
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_316

    :cond_32a
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_34d

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_34d

    :cond_343
    const/4 v0, 0x0

    iget-object v7, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v7}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_34d
    :goto_34d
    const-string v1, "createExpandItemInfo-icon--isPocketStudioTask: taskId="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , icon null ? "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_364

    move v3, v4

    :cond_364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->groupTaskContainUninstallApp(Lcom/android/quickstep/util/GroupTask;Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v3, "shouldForceUpdateWhenPackageUninstall includeUninstallPackage is "

    invoke-static {v3, v1, v9}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_396

    if-nez v1, :cond_396

    invoke-static {v0, v5}, Lcom/android/common/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_391

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_392

    :cond_391
    const/4 p0, 0x0

    :goto_392
    iput-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto/16 :goto_422

    :cond_396
    const-string v0, "createExpandItemInfo--isPocketStudioTask: icon is null, get default!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    if-eqz v0, :cond_3ae

    check-cast p0, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    goto :goto_3af

    :cond_3ae
    const/4 p0, 0x0

    :goto_3af
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v3, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_406

    if-eqz p0, :cond_3e4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskIconCache;->getDefaultDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    invoke-virtual {p0, v1, v5, v3, v0}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_3e5

    :cond_3e4
    const/4 p0, 0x0

    :goto_3e5
    if-eqz p0, :cond_3ea

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_3eb

    :cond_3ea
    const/4 v0, 0x0

    :goto_3eb
    const-string v1, "get default, task="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", info="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_418

    :cond_406
    if-eqz p0, :cond_413

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_414

    :cond_413
    const/4 p0, 0x0

    :goto_414
    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_418
    if-eqz v0, :cond_41f

    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_420

    :cond_41f
    const/4 p0, 0x0

    :goto_420
    iput-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_422
    iget-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object p1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49d

    const-string p0, "createExpandItemInfo-isPocketStudioTask:  no icon return!"

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    goto :goto_49d

    :cond_434
    const-string p0, "createExpandItemInfo-icon: neither hasEmbedded or hasMultipleTasks "

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    goto :goto_49d

    :cond_43c
    const-string p0, "createExpandItemInfo-icon: error: can\'t find group task!! "

    invoke-static {v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    goto :goto_49d

    :cond_444
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_459

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :cond_459
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_47b

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    :cond_47b
    if-nez v0, :cond_49d

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aer/ProvisionManager;->getWorkProfile()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49d

    const-string v0, "createExpandItemInfo-icon: Unable to obtain Google Workspace ActivityInfo"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->setWorkIconBitmap(Landroid/content/Intent;Landroid/content/Context;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_49d
    :goto_49d
    return-object v2
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandChangeRunnable$lambda$25()V

    return-void
.end method

.method public static final getComparedExpandViewTagAndBgdataItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_16

    const-string p0, "getComparedExpandViewTagAndBgdataItemInfo: package:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",CellX: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v1, "TabletExpandItemUpdateHelper"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "item"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_6e
    return-object p1
.end method

.method public static final isCompareExpandDataChangedToUpdate(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "finalToShowExpandPackages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compareList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private final makeExpandLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getLauncherActivityForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final refreshExapandBgData(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finalToShowExpandPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v6, 0xca

    if-ne v5, v6, :cond_25

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_4a

    new-instance v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper$refreshExapandBgData$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper$refreshExapandBgData$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4a
    sget-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->lastExpandItemCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isDragingUpdateExpandDataToInEnd:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_82

    if-nez p2, :cond_82

    sput-boolean v5, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isDragingUpdateExpandDataToInEnd:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p2, p1, :cond_81

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-array p2, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v0, p2, v5

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_81
    return-void

    :cond_82
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_97

    move v6, v7

    :cond_97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a2

    move v7, v8

    :cond_a2
    move v8, v5

    :goto_a3
    const-string/jumbo v9, "oldItems[index]"

    if-ge v8, v6, :cond_ea

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d9

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isNeedUpdateAppConnectExpandItem(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e7

    :cond_d9
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    add-int/lit8 v8, v8, 0x1

    goto :goto_a3

    :cond_ea
    invoke-static {p0, p2, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildReplaceExpandItemInfo(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "itemInfo"

    if-le v8, v10, :cond_1af

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_152

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v0

    if-nez v0, :cond_11e

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :cond_11e
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v0

    if-nez v0, :cond_133

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->hasSubscribeItemInContainer()Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_131
    add-int/lit8 p2, p2, 0x1

    :cond_133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_137
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_295

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/2addr p2, v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    :cond_152
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_157
    if-ge v6, v7, :cond_163

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_157

    :cond_163
    invoke-static {p0, v8}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildToBeExpandInItemInfos(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_181

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16b

    :cond_181
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_185
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_185

    :cond_19b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_295

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    :cond_1af
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_267

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_225

    :goto_1c5
    if-ge v6, v7, :cond_1dc

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d9

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c5

    :cond_1dc
    invoke-static {p0, v8}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildToBeRemovedItemInfos(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1e4

    :cond_1f7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1fb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_211

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1fb

    :cond_211
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_215
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_295

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_215

    :cond_225
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    if-eqz p1, :cond_241

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    if-eqz p1, :cond_263

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_263

    :cond_241
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    if-eqz p1, :cond_263

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p1

    if-nez p1, :cond_263

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p1

    if-eqz p1, :cond_263

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_263
    :goto_263
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_295

    :cond_267
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_281

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandDataRepeat(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    :cond_281
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_285
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_295

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_285

    :cond_295
    :goto_295
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_299
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, ",CellX: "

    const-string v1, "TabletExpandItemUpdateHelper"

    const-string v3, "Hotseat_expand"

    if-eqz p2, :cond_2da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v6, "refreshExapandBgData,removeItem: package:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v3, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p2, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_299

    :cond_2da
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2de
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_315

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v2, "refreshExapandBgData,addItems: package:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, p2, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_2de

    :cond_315
    return-void
.end method

.method public static final refreshExpandNotShowCellX(Lcom/android/launcher3/Launcher;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_26
    const/16 v7, 0xc9

    const/16 v8, 0xca

    const/4 v9, 0x1

    if-ge v5, v3, :cond_56

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_53

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_53

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v11, v8, :cond_4d

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_4d
    if-ne v11, v7, :cond_53

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v9

    :cond_53
    :goto_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v5, v8, :cond_71

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_71
    if-eqz v6, :cond_5a

    if-ne v5, v7, :cond_5a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_96

    new-instance v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper$refreshExpandNotShowCellX$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper$refreshExpandNotShowCellX$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_96
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v4, 0x1

    if-ltz v4, :cond_cf

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    add-int/2addr v4, p0

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const-string/jumbo v3, "refreshNotShowExpandBgData,updataItemInfo: package:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",CellX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const-string v4, "Hotseat_expand"

    const-string v5, "TabletExpandItemUpdateHelper"

    invoke-static {v3, v1, v4, v5}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_9a

    :cond_cf
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_d4
    return-void
.end method

.method private final resetToLastExpandBgData(Lcom/android/launcher/Launcher;)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ",CellX: "

    const-string v3, "TabletExpandItemUpdateHelper"

    const-string v4, "Hotseat_expand"

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v5, "resetToLastExpandBgData,removeItem: package:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v1, v1, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_2b

    :cond_6e
    sget-object p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->lastExpandItemCache:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v5, "resetToLastExpandBgData,addItem: package:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_74

    :cond_ab
    return-void
.end method

.method private final setWorkIconBitmap(Landroid/content/Intent;Landroid/content/Context;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setWorkIconBitmap: itemInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabletExpandItemUpdateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    instance-of p2, p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    check-cast p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    goto :goto_34

    :cond_33
    move-object p1, v0

    :goto_34
    if-eqz p0, :cond_50

    if-eqz p1, :cond_48

    invoke-virtual {p1, p0}, Lcom/android/quickstep/TaskIconCache;->getDefaultDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, -0x1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    invoke-virtual {p1, p2, p3, v1, p0}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_49

    :cond_48
    move-object p0, v0

    :goto_49
    if-eqz p0, :cond_4e

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_5c

    :cond_4e
    move-object p0, v0

    goto :goto_5c

    :cond_50
    if-eqz p1, :cond_57

    invoke-virtual {p1, p3}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_58

    :cond_57
    move-object p0, v0

    :goto_58
    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_5c
    if-eqz p0, :cond_62

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    :cond_62
    iput-object v0, p4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public static final updateExpandChangeRunnable(Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    const-string v1, "checkRemoveNormalItemAddExpandRunnable enableUpdateExpandFlag false return"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    sget-object v0, Lcom/android/launcher3/e3;->c:Lcom/android/launcher3/e3;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeUpdataRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_20

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1d
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeUpdataRunnable:Ljava/lang/Runnable;

    :cond_20
    return-void
.end method

.method private static final updateExpandChangeRunnable$lambda$25()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "TabletExpandItemUpdateHelper"

    const-string v2, "checkRemoveNormalItemAddExpandRunnable updateChange"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemDelay(J)V

    return-void
.end method

.method public static final updateExpandItemWhenDragEnd()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeUpdataRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeUpdataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newExpandPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateExpandItems, enableUpdateExpandFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUpdateFromSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", launcherFinishBindFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Hotseat_expand"

    const-string v3, "TabletExpandItemUpdateHelper"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_4f

    if-nez p2, :cond_4f

    const-string p0, "launcher is not finish bind, return"

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    return-void

    :cond_4f
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/hotseat/expand/h;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/android/launcher3/hotseat/expand/h;-><init>(Ljava/util/List;Lcom/android/launcher/Launcher;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateExpandItems$lambda$2(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$newExpandPackages"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v6, "itemInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "updateExpandItems,newExpandPackages.size:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",oldExpandPackages.size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hotseat_expand"

    const-string v8, "TabletExpandItemUpdateHelper"

    invoke-static {v7, v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "updateExpandItems,new pkg:"

    invoke-static {v6, v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v6, "updateExpandItems,old pkg:"

    invoke-static {v6, v3}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-le v6, v9, :cond_91

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v11, v9

    :goto_85
    if-ge v11, v6, :cond_b5

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_85

    :cond_91
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_b0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    move v11, v9

    :goto_a4
    if-ge v11, v6, :cond_b5

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a4

    :cond_b0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    move v6, v10

    :cond_b5
    const/4 v11, 0x3

    const/4 v12, 0x1

    if-gt v6, v11, :cond_195

    if-le v9, v11, :cond_bd

    goto/16 :goto_195

    :cond_bd
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v13, v10

    :goto_c8
    if-ge v13, v9, :cond_10b

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_fa

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_108

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isNeedUpdateAppConnectExpandItem(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_108

    :cond_fa
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    add-int/lit8 v13, v13, 0x1

    goto :goto_c8

    :cond_10b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toBeExpandPackages.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toBeRemovedPackages.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",replaceNewPackages.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",replaceOldItems.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildToBeExpandInViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v6, v11}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildReplaceExpandViews(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    sget-boolean v3, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dockerToOutUpdateExpandDate:Z

    if-eqz v3, :cond_158

    sput-boolean v10, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dockerToOutUpdateExpandDate:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_158

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_158

    invoke-static {v12}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandChangeRunnable(Z)V

    return-void

    :cond_158
    invoke-static {v1, v5}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->buildToBeRemovedViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v9}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->checkItemInfoEffectiveness(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_17a

    const-string/jumbo v2, "updateExpandItems,checkItemInfoEffectiveness:Error"

    invoke-static {v7, v8, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->resetToLastExpandBgData(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    return-void

    :cond_17a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-static {v1, v2, v4, v6, v5}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateExpandItemsInFoldedScreen(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_184
    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/launcher3/hotseat/expand/g;

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/hotseat/expand/g;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_195
    :goto_195
    const-string/jumbo v0, "updateExpandItems data size error,return.hotseatExpandAnimating="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_1ab

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1ac

    :cond_1ab
    const/4 v2, 0x0

    :goto_1ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_1db

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_1cc

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v0

    if-ne v0, v12, :cond_1cc

    move v10, v12

    :cond_1cc
    if-nez v10, :cond_1db

    const-string/jumbo v0, "updateExpandItems hotseat expand layout error forceReload to recover!"

    invoke-static {v7, v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_1db
    return-void
.end method

.method private static final updateExpandItems$lambda$2$lambda$1(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 6

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toBeExpandViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toBeRemovedViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toReplaceViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/OplusHotseat;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public final checkDragToOutExpandChangeWhenDrop(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 5

    const-string p0, "itemInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "Hotseat_expand"

    const-string p1, "TabletExpandItemUpdateHelper"

    const-string p2, "checkDragToOutExpandChangeWhenDrop,isTaskbarExpandAreaSettingEnable: false"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    if-eqz p2, :cond_38

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result p0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p0, p2, :cond_4e

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragToOutAddExpandItemRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_4e

    :cond_38
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x3

    if-ge p0, p2, :cond_4e

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    if-le p2, p0, :cond_4e

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragToOutAddExpandItemRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final checkFinalToShowExpandPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "finalToShowExpandPackages"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object p0
.end method

.method public final checkNeedUpdateExpandItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "finalToShowExpandPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "oldExpandPackages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_29

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkFinalToShowExpandPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isCompareExpandDataChangedToUpdate(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    goto :goto_4e

    :cond_29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkFinalToShowExpandPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isCompareExpandDataChangedToUpdate(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    goto :goto_4e

    :cond_42
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    move-result p0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p0, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :cond_4e
    :goto_4e
    return v2
.end method

.method public final getComparedExpandViewTagAndBgdataCellXItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 7

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_16

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_16

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_16

    const-string p0, "getComparedExpandViewTagAndBgdataCellXItemInfo: package:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",CellX: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Hotseat_expand"

    const-string v0, "TabletExpandItemUpdateHelper"

    invoke-static {p2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_74
    return-object p2
.end method

.method public final getDockerToOutUpdateExpandDate()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dockerToOutUpdateExpandDate:Z

    return p0
.end method

.method public final isDragingUpdateExpandDataToInEnd()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isDragingUpdateExpandDataToInEnd:Z

    return p0
.end method

.method public final setDockerToOutUpdateExpandDate(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->dockerToOutUpdateExpandDate:Z

    return-void
.end method

.method public final setDragingUpdateExpandDataToInEnd(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->isDragingUpdateExpandDataToInEnd:Z

    return-void
.end method
