.class public final Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExpandItemUpdateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpandItemUpdateHelper.kt\ncom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,590:1\n1549#2:591\n1620#2,3:592\n1549#2:600\n1620#2,3:601\n37#3,2:595\n37#3,2:604\n13309#4,2:597\n1#5:599\n*S KotlinDebug\n*F\n+ 1 ExpandItemUpdateHelper.kt\ncom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper\n*L\n242#1:591\n242#1:592,3\n313#1:600\n313#1:601,3\n242#1:595,2\n313#1:604,2\n244#1:597,2\n*E\n"
    }
.end annotation


# static fields
.field private static final GOOGLE_SEARCH_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

.field private static final TAG:Ljava/lang/String; = "ExpandItemUpdateHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->updateExpandItems$lambda$2(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->updateExpandItems$lambda$2$lambda$1(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

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

    const-string v4, "ExpandItemUpdateHelper"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7b

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

    :cond_55
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "pkg"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    iget-boolean v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    if-nez v6, :cond_55

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_7b
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

    :goto_93
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

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

    goto :goto_93

    :cond_b4
    return-object v0
.end method

.method public static final buildReplaceExpandViews(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 10
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
    if-ge v2, v1, :cond_62

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    iget-boolean v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    if-nez v4, :cond_5f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildReplaceExpandItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hotseat_expand"

    const-string v6, "ExpandItemUpdateHelper"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_62
    return-object v0
.end method

.method public static final buildToBeExpandInViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
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

    if-eqz v1, :cond_f9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v3

    const-string v4, "ExpandItemUpdateHelper"

    const-string v5, "Hotseat_expand"

    if-eqz v3, :cond_54

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {p0, v2}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->addBgDataExpandDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V

    goto :goto_4f

    :cond_40
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    if-lez v1, :cond_4f

    invoke-static {p0, v2}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->addBgDataSubscribeDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V

    :cond_4f
    :goto_4f
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatItemsCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    goto :goto_b6

    :cond_54
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView(Z)Z

    move-result v3

    const-string v6, "buildToBeExpandInItem,add divider:"

    if-nez v3, :cond_87

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createExpandDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_87
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView(Z)Z

    move-result v2

    if-nez v2, :cond_b6

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->hasSubscribeItemInContainer()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createSubscribeDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_b6
    :goto_b6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ba
    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    iget-boolean v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mInvalidForCombineIcon:Z

    if-nez v3, :cond_ba

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildToBeExpandInItem:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_f9
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

    const-string v9, "ExpandItemUpdateHelper"

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
    sget-object v6, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

    iget-object v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string/jumbo v10, "user"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0, v7}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->makeExpandLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

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

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->setWorkIconBitmap(Landroid/content/Intent;Landroid/content/Context;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_49d
    :goto_49d
    return-object v2
.end method

.method private final isDirtyExpandData(Ljava/util/ArrayList;Lcom/android/launcher/Launcher;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher/Launcher;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExceptExpandItemsCount(Lcom/android/launcher3/Launcher;)I

    move-result p0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_36

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_10

    instance-of v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_10

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge p2, p0, :cond_10

    const-string p0, "Hotseat_expand"

    const-string p1, "ExpandItemUpdateHelper"

    const-string p2, "isDirtyExpandData,no need update,return"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_36
    const/4 p0, 0x0

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

.method private final setWorkIconBitmap(Landroid/content/Intent;Landroid/content/Context;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setWorkIconBitmap: itemInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExpandItemUpdateHelper"

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

.method public static final updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V
    .registers 9
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

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "ExpandItemUpdateHelper"

    const-string v2, "Hotseat_expand"

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateExpandItems"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",enableUpdateExpandFlag:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",isUpdateFromSwitch:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",launcherFinishBindFlag:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_79

    if-nez p2, :cond_79

    const-string p0, "launcher is not finish bind, return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    return-void

    :cond_79
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/hotseat/expand/h;

    const/4 v2, 0x0

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

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v2

    const-string v3, "ExpandItemUpdateHelper"

    const-string v4, "Hotseat_expand"

    if-nez v2, :cond_1d

    const-string v2, "expand switch off, return"

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2a
    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v8, "itemInfo"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_45
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "updateExpandItems,new pkg:"

    invoke-static {v8, v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v8, "updateExpandItems,old pkg:"

    invoke-static {v8, v5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-le v8, v9, :cond_7b

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v11, v9

    :goto_6f
    if-ge v11, v8, :cond_9f

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    :cond_7b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_9a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    move v11, v9

    :goto_8e
    if-ge v11, v8, :cond_9f

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8e

    :cond_9a
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    move v8, v10

    :cond_9f
    const/4 v11, 0x3

    if-gt v8, v11, :cond_1eb

    if-le v9, v11, :cond_a6

    goto/16 :goto_1eb

    :cond_a6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_b0
    if-ge v10, v9, :cond_128

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_117

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_ec

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isNeedUpdateAppConnectExpandItem(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_117

    :cond_ec
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_125

    if-eqz v12, :cond_125

    instance-of v13, v12, Lcom/android/quickstep/util/GroupTask;

    if-eqz v13, :cond_125

    sget-object v13, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    check-cast v12, Lcom/android/quickstep/util/GroupTask;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "getAppContext()"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v14}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->groupTaskContainUninstallApp(Lcom/android/quickstep/util/GroupTask;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_125

    :cond_117
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_125
    add-int/lit8 v10, v10, 0x1

    goto :goto_b0

    :cond_128
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_197

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toBeExpandPackages.size:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",toBeRemovedPackages.size:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",replaceNewPackages.size:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",replaceOldItems.size:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_197
    invoke-static {v1, v6}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->buildToBeExpandInViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v8, v11}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->buildReplaceExpandViews(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v1, v7}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->buildToBeRemovedViews(Lcom/android/launcher/Launcher;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_1ad

    if-eqz p2, :cond_1b5

    :cond_1ad
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->isDirtyExpandData(Ljava/util/ArrayList;Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    :cond_1b5
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerInBgData()Z

    move-result v0

    if-nez v0, :cond_1c4

    const-string v0, "exception state,setExpandDividerView null"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_1c4
    const-string v0, "enableUpdateExpandFlag is false, return"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    return-void

    :cond_1cd
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_1d7

    invoke-static {v1, v2, v5, v8, v7}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateExpandItemsInFoldedScreen(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_1d7
    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/launcher3/hotseat/expand/g;

    const/4 v9, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v3, v6

    move-object v4, v5

    move/from16 v5, p2

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/hotseat/expand/g;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_1eb
    :goto_1eb
    const/4 v0, 0x0

    const-string/jumbo v2, "updateExpandItems data size error,return.hotseatExpandAnimating="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v6

    if-eqz v6, :cond_201

    invoke-virtual {v6}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_231

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_222

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v0

    if-ne v0, v2, :cond_222

    move v10, v2

    :cond_222
    if-nez v10, :cond_231

    const-string/jumbo v0, "updateExpandItems hotseat expand layout error forceReload to recover!"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_231
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
