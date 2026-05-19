.class public final Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMarketItemUpdateTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketItemUpdateTask.kt\ncom/android/launcher/folder/download/model/MarketItemUpdateTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,261:1\n1855#2,2:262\n1855#2,2:264\n13309#3,2:266\n*S KotlinDebug\n*F\n+ 1 MarketItemUpdateTask.kt\ncom/android/launcher/folder/download/model/MarketItemUpdateTask\n*L\n234#1:262,2\n238#1:264,2\n255#1:266,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

.field public static final OP_ADD:I = 0x1

.field public static final OP_MARKET_UNINSTALL:I = 0x4

.field public static final OP_UPDATE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MarketItemUpdateTask"


# instance fields
.field private apiResponse:Ljava/lang/String;

.field private folders:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

.field private op:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->Companion:Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;",
            "Lcom/android/launcher/folder/download/model/MarketRecommendModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "folders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketRecommendModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    iput-object p2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iput-object p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iput-object p4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-void
.end method

.method private static final insertMarketInfoToDb$lambda$12(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->insertMarketInfoList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->insertMarketInfoToDb$lambda$12(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->parseData$lambda$11$lambda$10$lambda$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method private static final parseData$lambda$11$lambda$10$lambda$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 2

    const-string v0, "$workspaceItemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 11

    const-string v2, "app"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dataModel"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "apps"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute:op:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    const-string v5, "MarketItemUpdateTask"

    invoke-static {v2, v4, v5}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_68

    const/4 v4, 0x2

    const-string v5, "getAppContext()"

    if-eq v2, v4, :cond_52

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2e

    goto :goto_7a

    :cond_2e
    iget-object v2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->clearAllData()V

    sget-object v2, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteAllMarketInfo()Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    move-object v0, p1

    move-object v1, v2

    move-object v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    goto :goto_7a

    :cond_52
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    move-object v0, p1

    move-object v1, v2

    move-object v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    goto :goto_7a

    :cond_68
    iget-object v2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iget-object v3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->parseData(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->insertMarketInfoToDb()V

    iget-object v2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyle()V

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->updateFolder(Lcom/android/launcher3/LauncherAppState;)V

    :goto_7a
    return-void
.end method

.method public final getApiResponse()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-object p0
.end method

.method public final getFolders()Lcom/android/launcher3/util/IntSparseArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-object p0
.end method

.method public final getMarketRecommendModel()Lcom/android/launcher/folder/download/model/MarketRecommendModel;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    return-object p0
.end method

.method public final getOp()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    return p0
.end method

.method public final insertMarketInfoToDb()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/app/a;

    invoke-direct {v1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final parseData(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "marketRecommendModel"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_b
    const-string v3, "MarketItemUpdateTask"

    const-string/jumbo v4, "parseData"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4}, Lk7/k;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    :try_end_77
    .catchall {:try_start_b .. :try_end_77} :catchall_479

    if-eqz v2, :cond_477

    :try_start_79
    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "folder recommend dumpinfo:original push data from is: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    :goto_a4
    if-ge v5, v2, :cond_3bd

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "reqId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    const-string v9, "appDataList"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_c1
    if-ge v10, v9, :cond_3b9

    sget-object v11, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->Companion:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "jsonAppList.getJSONObject(j)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;->parseJson(Lorg/json/JSONObject;)Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_da
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_f7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v15}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    goto :goto_f8

    :cond_f7
    move-object v13, v14

    :goto_f8
    const/4 v4, 0x1

    if-eqz v13, :cond_fd

    move v12, v4

    goto :goto_fe

    :cond_fd
    const/4 v12, 0x0

    :goto_fe
    if-eqz v12, :cond_163

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v12

    if-eqz v12, :cond_10a

    sget-boolean v12, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v12, :cond_163

    :cond_10a
    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is exist in other folder \n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MarketItemUpdateTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseData:isExist: pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b5

    :cond_163
    sget-object v12, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    const-string v15, "getAppContext()"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d1

    const-string v4, "MarketItemUpdateTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseData:isInstalled: pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is installed \n"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3b5

    :cond_1d1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInDownloadAppList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23c

    const-string v4, "MarketItemUpdateTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseData:isDownLoading: pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " appName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is downLoading \n"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3b5

    :cond_23c
    const-string/jumbo v12, "reqId"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMReqId(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMStatus(I)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMLauncherMode(I)V

    invoke-virtual {v11, v14}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v12

    if-eqz p1, :cond_26a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v13

    if-eqz v13, :cond_26a

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v15, Lcom/android/launcher/folder/download/model/a;

    invoke-direct {v15, v12}, Lcom/android/launcher/folder/download/model/a;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v13, v12, v15}, Lcom/android/launcher3/icons/IconCache;->getRecommendIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;)V

    :cond_26a
    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v13, :cond_39a

    sget-object v15, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39a

    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v15, v13, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-nez v15, :cond_27e

    goto/16 :goto_39a

    :cond_27e
    iget-object v15, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-nez v15, :cond_283

    goto :goto_28c

    :cond_283
    const-string/jumbo v14, "workspaceItemInfo.bitmap"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMBitmapInfo(Lcom/android/launcher3/icons/BitmapInfo;)V

    :goto_28c
    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v13, :cond_295

    invoke-virtual {v13}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v14

    goto :goto_296

    :cond_295
    const/4 v14, 0x0

    :goto_296
    if-eqz v14, :cond_2b3

    const-string v13, "MarketItemUpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseData: mBitmapInfo != null , packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b3
    const-string v13, "biz_type"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x66

    if-ne v13, v14, :cond_2d3

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_373

    :cond_2d3
    const-string v13, "biz_type"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x65

    if-ne v13, v14, :cond_2f2

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_373

    :cond_2f2
    const-string v4, "biz_type"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v13, 0x67

    if-ne v4, v13, :cond_311

    const/4 v4, 0x3

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_373

    :cond_311
    const-string v4, "biz_type"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v13, 0x68

    if-ne v4, v13, :cond_330

    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_373

    :cond_330
    const-string v4, "biz_type"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v13, 0x6a

    if-ne v4, v13, :cond_34f

    const/4 v4, 0x6

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_373

    :cond_34f
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v4

    if-eqz v4, :cond_373

    const-string v4, "biz_type"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v13, 0xcd

    if-ne v4, v13, :cond_373

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v11, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_373
    :goto_373
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "MarketItemUpdateTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "parseData: marketRecommendAppInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " workspaceItemInfo:"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b5

    :cond_39a
    :goto_39a
    const-string v4, "MarketItemUpdateTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseData:workspaceItemInfo.bitmap is not right pkgName:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c1

    :cond_3b9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a4

    :cond_3bd
    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "after filter latest data from market is: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d0

    :cond_40d
    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "the data is  from market is showing is: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_421
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_477

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45d
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_45d} :catch_45e
    .catchall {:try_start_79 .. :try_end_45d} :catchall_479

    goto :goto_421

    :catch_45e
    move-exception v0

    move-object v2, v0

    :try_start_460
    const-string v3, "MarketItemUpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseData e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_477
    .catchall {:try_start_460 .. :try_end_477} :catchall_479

    :cond_477
    monitor-exit p2

    return-void

    :catchall_479
    move-exception v0

    move-object v2, v0

    monitor-exit p2

    throw v2
.end method

.method public final setApiResponse(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-void
.end method

.method public final setFolders(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-void
.end method

.method public final setMarketRecommendModel(Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    return-void
.end method

.method public final setOp(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    return-void
.end method

.method public final updateFolder(Lcom/android/launcher3/LauncherAppState;)V
    .registers 7

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 v0, 0x0

    array-length v1, p1

    :goto_10
    if-ge v0, v1, :cond_22

    aget-object v2, p1, v0

    instance-of v3, v2, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->updateRecommendFolder(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_22
    return-void
.end method
