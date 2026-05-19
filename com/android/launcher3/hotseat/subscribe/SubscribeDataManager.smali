.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubscribeDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscribeDataManager.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeDataManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n766#2:90\n857#2,2:91\n*S KotlinDebug\n*F\n+ 1 SubscribeDataManager.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeDataManager\n*L\n84#1:90\n84#1:91,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

.field public static final SUBSCRIBE_ITEM_MAX_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SubscribeDataManager"

.field private static final mSettingsConfig$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager$mSettingsConfig$2;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager$mSettingsConfig$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->mSettingsConfig$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_47

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_47

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_47

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v3, 0x1

    :goto_3b
    if-eqz v3, :cond_1e

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_41
    invoke-static {v1, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-object p0, v0

    check-cast p0, Ljava/util/List;

    :cond_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final getSubscribeItemCount()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public static final getValidSubscribeItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_de

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_de

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result v3

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_5a

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object v2, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v2

    if-eqz v2, :cond_79

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string/jumbo v4, "subscribeType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_9f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c6

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataNormalAndExpandItemCount()I

    move-result v2

    if-gtz v2, :cond_bb

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c6

    :cond_bb
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    const-string v1, "getValidSubscribeItems,subscribeItems.size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taskbar"

    const-string v3, "SubscribeDataManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    :goto_de
    return-object v0
.end method


# virtual methods
.method public final getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->mSettingsConfig$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    return-object p0
.end method
