.class public final Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFoldedScreenExpandHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldedScreenExpandHelper.kt\ncom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n766#2:316\n857#2,2:317\n1855#2:319\n1856#2:321\n1#3:320\n*S KotlinDebug\n*F\n+ 1 FoldedScreenExpandHelper.kt\ncom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper\n*L\n93#1:316\n93#1:317,2\n97#1:319\n97#1:321\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;

.field private static final TAG:Ljava/lang/String; = "FoldedScreenExpandHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addBgDataExpandDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addBgDataExpandDividerItemInFoldedScreen:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v0, "FoldedScreenExpandHelper"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final addBgDataSubscribeDividerItemInFoldedScreen(Lcom/android/launcher3/Launcher;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addBgDataSubscribeDividerItemInFoldedScreen:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v0, "FoldedScreenExpandHelper"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkAndRemoveExpandDivider(Lcom/android/launcher3/Launcher;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    :goto_2f
    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_42

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_42
    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    const-string p0, "Hotseat_expand"

    const-string v0, "FoldedScreenExpandHelper"

    const-string v1, "checkAndRemoveExpandDivider remove expand divider"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public static final updateBgDataExpandItemInFoldedScreen(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v3}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenExpandedFromDisplay()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v3

    if-nez v3, :cond_30

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    move v3, v4

    :goto_31
    const-string v5, "Hotseat_expand"

    const-string v6, "FoldedScreenExpandHelper"

    if-eqz v3, :cond_3d

    const-string v0, "checkHotseatItemDataAndUpdateDB,no need update,return"

    invoke-static {v5, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalApplicationItemPackages(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    add-int v8, v3, v0

    goto :goto_62

    :cond_60
    const/4 v0, 0x0

    move v8, v3

    :goto_62
    const-string v9, "checkHotseatItemDataAndUpdateDB,expandStartX:"

    const-string v10, ",curHotseatNormalAreaPkgs.size:"

    invoke-static {v9, v8, v10}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",curHotseatNormalItemCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",expandAndDividerItems.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_95
    :goto_95
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_103

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v13, "expandItem"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_e5

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->shouldFilterOutCombinationItem(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_95

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate Check item: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v13

    iget-object v13, v13, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-array v15, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_95

    :cond_e5
    const/4 v14, 0x0

    invoke-static {v2, v13}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_100

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v13

    iget-object v13, v13, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    new-array v1, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v12, v1, v14

    invoke-virtual {v13, v15, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_100
    move-object/from16 v1, p0

    goto :goto_95

    :cond_103
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_172

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarCombineIconDisable()Z

    move-result v1

    if-nez v1, :cond_172

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_127
    :goto_127
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_149

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    iget v14, v13, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v15, -0x65

    if-ne v14, v15, :cond_142

    invoke-static {v13}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v13

    if-eqz v13, :cond_142

    const/4 v13, 0x1

    goto :goto_143

    :cond_142
    const/4 v13, 0x0

    :goto_143
    if-eqz v13, :cond_127

    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_127

    :cond_149
    invoke-static {v4, v1}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_150
    :goto_150
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_166

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_150

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_150

    :cond_166
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    const-string v4, "launcher.model"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->notifyExpandDataChange(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/ArrayList;)V

    :cond_172
    const-string/jumbo v1, "repeatItems.size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1c9

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v9}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_1c9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v8, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v0, "checkHotseatItemDataAndUpdateDB,only divider,return"

    invoke-static {v5, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_223

    if-nez v3, :cond_1fe

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1fe

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerInBgData()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_223

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v4, v9, v10}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    const-string/jumbo v1, "remove subscribe divider"

    invoke-static {v5, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_223

    :cond_1fe
    if-lez v3, :cond_223

    if-lez v0, :cond_223

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_223

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v1, v10}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v8, 0x1

    const-string v1, "add subscribe divider"

    invoke-static {v5, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_223
    :goto_223
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2ac

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "expandAndDividerItems[0]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkHotseatItemDataAndUpdateDB,firstItem:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",hasExpandDividerItem:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_28f

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v8, v3, :cond_25e

    return-void

    :cond_25e
    if-ne v8, v0, :cond_261

    goto :goto_263

    :cond_261
    if-nez v8, :cond_265

    :goto_263
    const/4 v0, 0x1

    goto :goto_266

    :cond_265
    const/4 v0, 0x0

    :goto_266
    if-eqz v0, :cond_28b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    const-string/jumbo v0, "remove expand divider"

    invoke-static {v5, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateExpandItemCellX(Ljava/util/ArrayList;I)V

    goto :goto_2ac

    :cond_28b
    invoke-static {v7, v8}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateExpandItemCellX(Ljava/util/ArrayList;I)V

    goto :goto_2ac

    :cond_28f
    if-lez v3, :cond_2ac

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    const-string v0, "add expand divider"

    invoke-static {v5, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateExpandItemCellX(Ljava/util/ArrayList;I)V

    :cond_2ac
    :goto_2ac
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "finalExpandAndDividerItems.size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalExpandAndDividerItems.info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    :cond_2e9
    return-void
.end method

.method private static final updateExpandItemCellX(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "expandItems[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iput p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method public static final updateExpandItemsInFoldedScreen(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toBeExpandViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toReplaceViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceOldItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toBeRemovedPackages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v6, "expandItem"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p4, v6}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    new-array v5, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v3, v5, v4

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_5c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    if-eqz p4, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_95
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p4

    iget-object p4, p4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p4, v2, v3, v5}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_c8
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p4

    new-array v1, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p2, v1, v4

    invoke-virtual {p3, p4, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_ed
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v5, :cond_11b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_11b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-array p3, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p4, p3, v4

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_147

    :cond_11b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_147

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result p1

    if-nez p1, :cond_147

    const/16 p1, 0xcb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItem(Ljava/lang/Integer;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_147

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p3

    new-array p4, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p1, p4, v4

    invoke-virtual {p0, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_147
    :goto_147
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setFinishedUpdateExpandFlag(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setExpandUpdatingFlag(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isFoldScreenFolded,updateExpandItems just for bgData!!!,bgDataExpandItems.size:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string p2, "FoldedScreenExpandHelper"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
