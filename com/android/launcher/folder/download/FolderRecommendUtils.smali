.class public final Lcom/android/launcher/folder/download/FolderRecommendUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderRecommendUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRecommendUtils.kt\ncom/android/launcher/folder/download/FolderRecommendUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1428:1\n1855#2,2:1429\n1855#2,2:1432\n1855#2,2:1434\n1855#2,2:1437\n1855#2,2:1440\n1855#2,2:1442\n1855#2,2:1444\n1855#2,2:1446\n1855#2,2:1448\n1855#2,2:1450\n1855#2,2:1452\n1855#2,2:1454\n1855#2,2:1456\n1855#2,2:1458\n1855#2,2:1460\n1855#2,2:1462\n1855#2,2:1464\n1855#2,2:1466\n1855#2,2:1468\n1855#2,2:1470\n1855#2,2:1472\n766#2:1474\n857#2,2:1475\n1855#2:1477\n1855#2,2:1478\n1855#2,2:1480\n1856#2:1482\n1855#2,2:1483\n1855#2,2:1485\n1855#2,2:1487\n1855#2:1489\n1855#2,2:1490\n1855#2,2:1492\n1856#2:1494\n1#3:1431\n13309#4:1436\n13310#4:1439\n*S KotlinDebug\n*F\n+ 1 FolderRecommendUtils.kt\ncom/android/launcher/folder/download/FolderRecommendUtils\n*L\n165#1:1429,2\n274#1:1432,2\n277#1:1434,2\n332#1:1437,2\n354#1:1440,2\n475#1:1442,2\n525#1:1444,2\n601#1:1446,2\n628#1:1448,2\n684#1:1450,2\n702#1:1452,2\n716#1:1454,2\n800#1:1456,2\n805#1:1458,2\n813#1:1460,2\n836#1:1462,2\n936#1:1464,2\n983#1:1466,2\n988#1:1468,2\n1007#1:1470,2\n1040#1:1472,2\n1046#1:1474\n1046#1:1475,2\n1070#1:1477\n1075#1:1478,2\n1082#1:1480,2\n1070#1:1482\n1187#1:1483,2\n1206#1:1485,2\n1305#1:1487,2\n1378#1:1489\n1384#1:1490,2\n1391#1:1492,2\n1378#1:1494\n329#1:1436\n329#1:1439\n*E\n"
    }
.end annotation


# static fields
.field public static final CALLER_DEPTH:I = 0x5

.field public static final DOWNLOAD_FROM_RECOMMEND_FOLDER:I = 0x2

.field public static final DOWNLOAD_FROM_STORE:I = 0x1

.field public static final EXP_STORE_CONTENT_RECOMMEND_ENABLE:Ljava/lang/String; = "exp_store_content_recommend_enable"

.field public static final EXP_STORE_VERSION:Ljava/lang/String; = "exp_store_version"

.field private static final FAST_CLICK_THRESHOLD:J = 0x320L

.field public static final FOLDER_CONTENT_RECOMMEND_CLOSE:I = 0x0

.field public static final FOLDER_CONTENT_RECOMMEND_DEFAULT:I = -0x3e7

.field public static final FOLDER_CONTENT_RECOMMEND_OPEN:I = 0x1

.field public static final FOLDER_CONTENT_RECOMMEND_SUPPORT:Ljava/lang/String; = "folder_content_recommend_support"

.field public static final FOLDER_CONTENT_RECOMMEND_SWITCH_PREF_KEY:Ljava/lang/String; = "folder_content_recommend_switch"

.field public static final INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

.field public static final RECOMMEND_APP_CLASSNAME:Ljava/lang/String; = "MarketRecommendAppClassName"

.field public static final RECOMMEND_ID_ALL:I = 0x5

.field public static final RECOMMEND_ID_MORE_APPS:I = 0x3

.field public static final RECOMMEND_ID_MUST_PLAY:I = 0x6

.field public static final RECOMMEND_ID_POPULAR_APPS:I = 0x2

.field public static final RECOMMEND_ID_TOOLS:I = 0x4

.field public static final RECOMMEND_ID_TOP_APPS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FolderRecommendUtils"

.field private static mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/folder/OplusFolderIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDumpInfo:Ljava/lang/StringBuilder;

.field private static sFastClickTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-direct {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sDumpInfo:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems$lambda$44$lambda$43(ZLcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public static final synthetic access$createSwitchJsonForAllRecommend(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->createSwitchJsonForAllRecommend(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAppStoreContentRecommendEnable(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommendEnable(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final addRecommendFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-gez v0, :cond_15

    return-void

    :cond_15
    sget-object v1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/launcher/folder/download/FolderRecommendUtils$addRecommendFolder$1;

    invoke-direct {v2, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$addRecommendFolder$1;-><init>(I)V

    new-instance v0, Lcom/android/launcher/folder/download/b;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final addRecommendFolder$lambda$56(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final addToDrawerMode(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isExistOnRecommendFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string p0, "FolderRecommendUtils"

    const-string p1, "addToDrawerMode: appState == null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)Lcom/android/launcher/model/data/PromiseAppInfo;

    new-instance p1, Lcom/android/launcher/folder/download/FolderRecommendUtils$addToDrawerMode$1;

    invoke-direct {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$addToDrawerMode$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_40
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo$lambda$21$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->addRecommendFolder$lambda$56(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final createStopSwitchJsonByFolder(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)Ljava/lang/String;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSwitchJsonForAllRecommend folderInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderRecommendUtils"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "folder_content_recommend_support"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_26
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
    :try_end_33
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_26 .. :try_end_33} :catch_5a

    :try_start_33
    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->getFolderStatus()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-virtual {v3}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->getRecommendId()I

    move-result v4

    iget v5, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-ne v4, v5, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setStatus(I)V

    goto :goto_3b

    :cond_54
    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateFolderRecommendEnable(Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;)V
    :try_end_57
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_33 .. :try_end_57} :catch_58

    goto :goto_71

    :catch_58
    move-exception p1

    goto :goto_5d

    :catch_5a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_5d
    const-string v1, "createSingleSwitchJson error: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    if-eqz p0, :cond_77

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_77
    return-object v0
.end method

.method private static final createSwitchJsonForAllRecommend(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "createSwitchJsonForAllRecommend folderStatus = "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FolderRecommendUtils"

    invoke-static {v3, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "folder_content_recommend_support"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_1b
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    invoke-virtual {v2, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
    :try_end_28
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1b .. :try_end_28} :catch_6a

    if-nez p0, :cond_2e

    :try_start_2a
    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->initFolderRecommendSwitchBean(I)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    move-result-object p0

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->setFolderRecommendEnable(I)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->getFolderStatus()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-virtual {v4}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->getRecommendId()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v1, :cond_56

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual {v4, v6}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setStatus(I)V

    goto :goto_39

    :cond_56
    invoke-virtual {v4}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->getRecommendId()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendFolderExist(I)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v4, p1}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setStatus(I)V

    goto :goto_39

    :cond_64
    invoke-virtual {v4, v6}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setStatus(I)V
    :try_end_67
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2a .. :try_end_67} :catch_68

    goto :goto_39

    :catch_68
    move-exception p1

    goto :goto_6d

    :catch_6a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_6d
    const-string v1, "createSingleSwitchJson error: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_87
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->filterDownloadChannel$lambda$59(Ljava/lang/String;)V

    return-void
.end method

.method public static final deleteDuplicatData(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findRecommendInfo(Ljava/lang/String;)Lh4/j;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterDownloadChannel: remove MarketRecommendAppInfo because from store download!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderRecommendUtils"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_34

    iget-object p0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItem(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)V

    goto :goto_38

    :cond_34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static final deleteDuplicationForRId(Ljava/lang/String;I)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    goto :goto_37

    :cond_36
    move-object v3, v1

    :goto_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1d

    iget v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-eq v5, p1, :cond_1d

    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v6, "info.contents"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v5

    :try_start_4a
    iget-object v6, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v7, "info.contents"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_55
    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v8, "info"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v8

    if-eqz v8, :cond_55

    iget-object v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v8}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_b2

    goto :goto_55

    :cond_7c
    monitor-exit v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_87
    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_87

    const-string/jumbo v7, "removeRecommendItem"

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_87

    :cond_9c
    sget-object v5, Lm7/y0;->a:Lm7/y0;

    sget-object v5, Lr7/v;->a:Lm7/b2;

    invoke-static {v5}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Lcom/android/launcher/folder/download/FolderRecommendUtils$deleteDuplicationForRId$1$1$3;

    invoke-direct {v9, v3, v4, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$deleteDuplicationForRId$1$1$3;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ll4/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto/16 :goto_1d

    :catchall_b2
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_b5
    return-void
.end method

.method public static final dumpFolderRecommendInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "prefix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FolderRecommendInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sDumpInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendFolder$lambda$57(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final filterDownloadChannel(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    sget-object p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchEnable()Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Landroidx/core/app/a;

    invoke-direct {p2, p1}, Landroidx/core/app/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_25
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result p0

    if-nez p0, :cond_32

    const/4 p0, 0x2

    if-eq p2, p0, :cond_80

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->deleteDuplicatData(Ljava/lang/String;)V

    goto :goto_80

    :cond_32
    const/16 p0, 0x65

    if-eq p2, p0, :cond_6c

    const/16 p0, 0x66

    if-eq p2, p0, :cond_57

    const/16 p0, 0xcd

    if-eq p2, p0, :cond_42

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->deleteDuplicatData(Ljava/lang/String;)V

    goto :goto_80

    :cond_42
    sget-object p2, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "TAIL_MAP_FOLDER.get(ApiC…nt.BizType.ALL_RECOMMEND)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->deleteDuplicationForRId(Ljava/lang/String;I)V

    goto :goto_80

    :cond_57
    sget-object p2, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "TAIL_MAP_FOLDER.get(ApiC…e.POPULAR_TAIL_RECOMMEND)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->deleteDuplicationForRId(Ljava/lang/String;I)V

    goto :goto_80

    :cond_6c
    sget-object p2, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "TAIL_MAP_FOLDER.get(ApiC…zType.TOP_TAIL_RECOMMEND)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->deleteDuplicationForRId(Ljava/lang/String;I)V

    :cond_80
    :goto_80
    return-void
.end method

.method private static final filterDownloadChannel$lambda$59(Ljava/lang/String;)V
    .registers 3

    const-string v0, "$packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static final findFolderIcon(Landroid/view/View;)Lcom/android/launcher3/folder/OplusFolder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "sourceView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_a
    if-eqz p0, :cond_18

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    return-object p0

    :cond_13
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_a

    :cond_18
    const-string p0, "FolderRecommendUtils"

    const-string v0, "findFolderIcon: view = null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findRecommendInfo(Ljava/lang/String;)Lh4/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string p0, "FolderRecommendUtils"

    const-string v0, "findRecommendInfo: appState == null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_15
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const-string/jumbo v2, "marketRecommendModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_26
    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    new-instance p0, Lh4/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_7c

    monitor-exit v0

    return-object p0

    :cond_50
    :try_start_50
    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    new-instance p0, Lh4/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_50 .. :try_end_78} :catchall_7c

    monitor-exit v0

    return-object p0

    :cond_7a
    monitor-exit v0

    goto :goto_7f

    :catchall_7c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7f
    :goto_7f
    return-object v1
.end method

.method public static final findRecommendList(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lh4/j;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ")",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v3

    :goto_18
    if-eqz v2, :cond_21

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v2, :cond_21

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    goto :goto_22

    :cond_21
    move-object v2, v3

    :goto_22
    if-eqz v2, :cond_2d

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_2d
    instance-of v2, v3, Lcom/android/launcher3/model/data/FolderInfo;

    const-string v4, "FolderRecommendUtils"

    if-eqz v2, :cond_79

    const-string v2, "findRecommendList: find folder = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", contents = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v3, "folderInfo.contents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_79
    const-string v0, "folderInfo is null"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    new-instance v0, Lh4/j;

    sget-object v2, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->INVERTED_TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getMaxFolderItemSize()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    const-string v1, "getIDP(LauncherApplication.getAppContext())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxFolderPages()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method public static final getPkgListForDeduplication(Lcom/android/launcher3/folder/Folder;)Ljava/lang/String;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "folder.mInfo.contents"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_3d
    const-string p0, "getPkgListForDeduplication: deduplication = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "chars"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const-string v8, ""

    if-ltz v7, :cond_76

    :goto_5f
    add-int/lit8 v9, v7, -0x1

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v2, v10}, Li4/k;->p([CC)Z

    move-result v10

    if-nez v10, :cond_71

    add-int/2addr v7, v1

    invoke-interface {v0, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_77

    :cond_71
    if-gez v9, :cond_74

    goto :goto_76

    :cond_74
    move v7, v9

    goto :goto_5f

    :cond_76
    :goto_76
    move-object v2, v8

    :goto_77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FolderRecommendUtils"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "deduplication.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v1, [C

    aput-char v4, v0, v3

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b5

    :goto_9e
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Li4/k;->p([CC)Z

    move-result v5

    if-nez v5, :cond_b0

    add-int/2addr v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_b5

    :cond_b0
    if-gez v4, :cond_b3

    goto :goto_b5

    :cond_b3
    move v2, v4

    goto :goto_9e

    :cond_b5
    :goto_b5
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getRecommendIdList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    aput-object v1, v6, v3

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v6}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3e

    :cond_2a
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3e
    return-object v0
.end method

.method public static final handleAppUri(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bitmapInfo"

    const-string v1, "finally e:"

    const-string v2, "FolderRecommendUtils"

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "uriString"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v4, 0x0

    :try_start_14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAppUri: uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils;->decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_56

    const-string p0, "handleAppUri: decodeFixedBitmap fail!!!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4f} :catch_8c
    .catchall {:try_start_14 .. :try_end_4f} :catchall_8a

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object v3

    :cond_56
    :try_start_56
    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_8c
    .catchall {:try_start_56 .. :try_end_5a} :catchall_8a

    :try_start_5a
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_64
    .catchall {:try_start_5a .. :try_end_5d} :catchall_8a

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object p0

    :catch_64
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_8d

    :cond_68
    :try_start_68
    const-string p0, "handleAppUri: imageFd == null || bitmap == null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_8c
    .catchall {:try_start_68 .. :try_end_6d} :catchall_8a

    if-eqz v4, :cond_b1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_72
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_b1

    :catch_76
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :catchall_8a
    move-exception p0

    goto :goto_b5

    :catch_8c
    move-exception p0

    :goto_8d
    :try_start_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppUri:e:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_8a

    if-eqz v4, :cond_b1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_a6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_b1

    :catch_aa
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7c

    :cond_b1
    :goto_b1
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :goto_b5
    if-eqz v4, :cond_d1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_ba
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_d1

    :catch_be
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    :goto_d1
    throw p0
.end method

.method public static final immediatelyUpdateFolder(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const-string v0, "cells"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_48

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/android/launcher3/OplusCellLayout;

    if-nez v3, :cond_1d

    instance-of v3, v2, Lcom/android/launcher3/OplusHotseat;

    if-eqz v3, :cond_45

    :cond_1d
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->findFolderIcon()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    instance-of v4, v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v4, :cond_27

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->executeRecommendChangeTask()V

    goto :goto_27

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_48
    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketRecommendModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->queryMarketInfoByLauncherMode(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "FolderRecommendUtils"

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init:from db marketInfoList.size:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " :\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10c

    goto :goto_f5

    :cond_10c
    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInDownloadAppList(Ljava/lang/String;)Z

    move-result v4

    if-nez v3, :cond_171

    if-eqz v4, :cond_12b

    goto :goto_171

    :cond_12b
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v3

    packed-switch v3, :pswitch_data_1a4

    goto :goto_f5

    :pswitch_141  #0x6
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :pswitch_149  #0x5
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :pswitch_151  #0x4
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :pswitch_159  #0x3
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :pswitch_161  #0x2
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :pswitch_169  #0x1
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :cond_171
    :goto_171
    const-string v5, "init: remove item = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_17f

    const-string v6, ""

    :cond_17f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", installed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDownLoading = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object v3, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    goto/16 :goto_f5

    :cond_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_169  #00000001
        :pswitch_161  #00000002
        :pswitch_159  #00000003
        :pswitch_151  #00000004
        :pswitch_149  #00000005
        :pswitch_141  #00000006
    .end packed-switch
.end method

.method public static final initFolderContentRecommendEnable(Landroid/content/Context;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v0

    const-string v1, "getInstance(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folder_content_recommend_switch"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    if-eq v3, v2, :cond_23

    if-eq v3, v4, :cond_23

    goto :goto_4f

    :cond_23
    const-string v2, "initFolderContentRecommendEnable folder recommend status is "

    const-string v6, "FolderRecommendUtils"

    invoke-static {v2, v3, v6}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->isRecommendEnable()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->initFolderRecommendSwitchBean(I)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    move-result-object v2

    goto :goto_3f

    :cond_3b
    invoke-static {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->initFolderRecommendSwitchBean(I)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    move-result-object v2

    :goto_3f
    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommendEnable(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    goto :goto_4f

    :cond_4a
    if-eq v3, v2, :cond_4f

    invoke-static {p0, v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public static final initFolderRecommendSwitchBean(I)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getRecommendIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v3, v2, p0, v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->getFolderRecommendSwitchBean(IILjava/util/ArrayList;)V

    goto :goto_d

    :cond_27
    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendFolderExist(I)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v3, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-direct {v3, v2, p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_36
    new-instance v3, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_40
    new-instance v1, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;-><init>(ILjava/util/ArrayList;)V

    invoke-static {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateFolderRecommendEnable(Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;)V

    return-object v1
.end method

.method public static final isExistOnRecommendFolder(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p0, :cond_b

    return v1

    :cond_b
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_3d
    return v1
.end method

.method public static final isFastClick()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sFastClickTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    const-string v1, "FolderRecommendUtils"

    if-lez v0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sFastClickTimestamp:J

    const-string v0, "isFastClick false"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_20
    const-string v0, "isFastClick true Click too fast, ignore..."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static final isRecommendFolder(I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    if-eq p0, v1, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x6

    if-ne p0, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public static final isRecommendFolder(Lcom/android/launcher3/model/data/FolderInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method private static final isRecommendFolderExist(I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_36

    monitor-enter v0

    :try_start_13
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    const-string v2, "folders"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_33

    if-ne v2, p0, :cond_1e

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_31
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return p0
.end method

.method public static final isRecommendItem(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "className"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "MarketRecommendAppClassName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public static final isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfoWithIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result p0

    return p0
.end method

.method public static final isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfoWithIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfoWithIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const/4 v3, 0x2

    const-string v4, "MarketRecommendAppClassName"

    invoke-static {v0, v4, v2, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    if-eqz p1, :cond_34

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz p0, :cond_33

    move v0, v1

    goto :goto_34

    :cond_33
    move v0, v2

    :cond_34
    :goto_34
    if-eqz p2, :cond_41

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    move v0, v1

    :cond_41
    return v0
.end method

.method public static synthetic isRecommendItemInfo$default(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x1

    if-eqz p4, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    move p2, v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final isRecommendItemInfoByIntent(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Intent;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_19
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "FolderRecommendUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecommendItemInfoByIntent: targetPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", targetCls = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_43

    return v1

    :cond_43
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const-string/jumbo v3, "marketRecommendModel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v2

    :try_start_58
    invoke-virtual {v2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string v5, "MarketRecommendAppClassName"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    iput-object v4, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;
    :try_end_80
    .catchall {:try_start_58 .. :try_end_80} :catchall_85

    const/4 p0, 0x1

    monitor-exit v2

    return p0

    :cond_83
    monitor-exit v2

    goto :goto_88

    :catchall_85
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_88
    :goto_88
    return v1
.end method

.method public static final isSupportAllAppsFolder()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreAssetPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getDisableFolderAllSuggest()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public static final isSupportFolderContentRecommend()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final jumpToDetail(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FolderRecommendUtils"

    if-nez v0, :cond_143

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_143

    :cond_1c
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMJumpUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    return v1

    :cond_29
    invoke-static {p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findRecommendList(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lh4/j;

    move-result-object v3

    iget-object v4, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    const-string p0, "jumpToDetail: marketRecommendAppInfo = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not find!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_51
    sget-object v4, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOnceGestureProcessing()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v4

    if-eqz v4, :cond_69

    const-string p0, "jumpToDetail launcher isGestureRecentAnimRunning"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_69
    sget-object v1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher/folder/download/ReportController;->reportAppClicked(ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v4}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMJumpUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    iget-object v5, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v8, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v8}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "appName"

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_9a

    :cond_c6
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "appInfoList"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "biz_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMReqId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "reqId"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jumpToDetail: junmpItem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", pkgs = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", biz_type = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reqId = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMReqId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", page = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const p1, 0x13461c1

    :try_start_128
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_12b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_141

    :catch_12c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "jumpToDetail: e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_141
    const/4 p0, 0x1

    return p0

    :cond_143
    :goto_143
    const-string p1, "jumpToDetail launcher.isPaused:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final needUpdateItemInfo(Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "marketInfoList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "needUpdateItemInfo:marketInfoList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " itemInfoList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRecommendUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3e

    return v2

    :cond_3e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_44
    if-ge v3, v0, :cond_7a

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6f

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v2, :cond_6f

    move v6, v2

    goto :goto_70

    :cond_6f
    move v6, v1

    :goto_70
    if-eqz v6, :cond_4a

    goto :goto_74

    :cond_73
    const/4 v5, 0x0

    :goto_74
    if-nez v5, :cond_77

    return v2

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_7a
    return v1
.end method

.method public static final removeMarketInfoByItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "移除itemInfo.targetPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRecommendUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v1, :cond_3e

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    goto :goto_3f

    :cond_3e
    move-object v1, v2

    :goto_3f
    if-eqz v1, :cond_44

    invoke-virtual {v1, v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg(Ljava/lang/String;)V

    :cond_44
    sget-object v1, Lm7/y0;->d:Lm7/f0;

    invoke-static {v1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeMarketInfoByItemInfo$1$1;

    invoke-direct {v6, v0, p1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeMarketInfoByItemInfo$1$1;-><init>(Ljava/lang/String;ZLl4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->resetMarketRecommendAppInfo()V

    :cond_59
    return-void
.end method

.method public static final removeMarketInfoByPkgName(Ljava/lang/String;Z)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_45

    :cond_44
    move-object v3, v1

    :goto_45
    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v3, :cond_5e

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg(Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->d:Lm7/f0;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeMarketInfoByPkgName$2$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeMarketInfoByPkgName$2$1;-><init>(Ljava/lang/String;ZLl4/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_5e
    return-void
.end method

.method public static final removeRecommendFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-gez p0, :cond_15

    return-void

    :cond_15
    sget-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;-><init>(I)V

    new-instance p0, Lcom/android/launcher/folder/download/c;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static final removeRecommendFolder$lambda$57(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final removeRecommendItem(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "marketRecommendAppInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    goto :goto_3f

    :cond_3e
    move-object v3, v1

    :goto_3f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_25

    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v6, "info.contents"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v5

    :try_start_4e
    iget-object v6, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v7, "info.contents"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_59
    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v8

    if-eqz v8, :cond_59

    iget-object v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v8}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_4e .. :try_end_83} :catchall_ba

    goto :goto_59

    :cond_84
    monitor-exit v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8f
    :goto_8f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_8f

    const-string/jumbo v7, "removeRecommendItem"

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_8f

    :cond_a4
    sget-object v5, Lm7/y0;->a:Lm7/y0;

    sget-object v5, Lr7/v;->a:Lm7/b2;

    invoke-static {v5}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendItem$1$1$3;

    invoke-direct {v9, v3, v4, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendItem$1$1$3;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ll4/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto/16 :goto_25

    :catchall_ba
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_bd
    return-void
.end method

.method public static final removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getRecommendIdList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRecommendItems:folderInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeleteMarketInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderRecommendUtils"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "folderInfo.contents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5f
    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    const-string/jumbo v4, "removeRecommendItems because settings close!!!"

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_5f

    :cond_7c
    iget-object p1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8a
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v3, "content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_a6
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/util/q;

    invoke-direct {v0, p2, p0}, Lcom/android/common/util/q;-><init>(ZLcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final removeRecommendItems$lambda$44$lambda$43(ZLcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "$folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByRecommendId(I)Z

    :cond_12
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    if-eqz p0, :cond_33

    monitor-enter p0

    :try_start_29
    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId(I)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_30

    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_33
    :goto_33
    return-void
.end method

.method public static final removeSingleMarketInfoByItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSingleMarketInfoByItemInfo.itemInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRecommendUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v1, :cond_3a

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    goto :goto_3b

    :cond_3a
    move-object v1, v2

    :goto_3b
    if-eqz v1, :cond_46

    iget-object v3, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId(Ljava/lang/String;I)V

    :cond_46
    sget-object v1, Lm7/y0;->d:Lm7/f0;

    invoke-static {v1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;

    invoke-direct {v6, v0, p0, p1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLl4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_58
    return-void
.end method

.method public static final setAppStoreContentRecommend(Landroid/content/Context;I)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->d:Lm7/f0;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;-><init>(ILandroid/content/Context;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method private static final setAppStoreContentRecommendEnable(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "setAppStoreRecommendContentEnable switchJson = "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderRecommendUtils"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_20

    return-void

    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "folder_content_recommend_support"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static final stopAppStoreContentRecommend(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendFolder(Lcom/android/launcher3/model/data/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->createStopSwitchJsonByFolder(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommendEnable(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public static final updateFolderContent(Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "folderInfo"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "newItems"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "removeItemInfos"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "oldRecommendIndexList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v4}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v7

    const-string v8, "getIDP(LauncherApplication.getAppContext())"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {v8, v7}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    const/4 v7, 0x0

    move v9, v7

    :goto_4b
    const-string v10, "FolderRecommendUtils"

    if-ge v9, v6, :cond_117

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const-string/jumbo v12, "updateFolderContent:remove:"

    if-ge v9, v11, :cond_b9

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_b9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_113

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v13, "oldRecommendIndexList[i]"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_113

    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " add:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    :cond_b9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-lt v9, v11, :cond_e5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_e5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_113

    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    :cond_e5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_113

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v9, v11, :cond_113

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_113

    const-string/jumbo v11, "updateFolderContent: add:"

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    :goto_113
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4b

    :cond_117
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    move v6, v7

    :goto_11c
    if-ge v6, v3, :cond_132

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v8, v9, v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_11c

    :cond_132
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_193

    const-string/jumbo v0, "updateFolderContent removeItemInfos.size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",addItemInfos.size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_176

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string/jumbo v5, "updateFolderContent: removeItem = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v3, v10}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_15d

    :cond_176
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_193

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string/jumbo v5, "updateFolderContent: newItem = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v3, v10}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_17a

    :cond_193
    if-eqz v4, :cond_1bf

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    if-eqz v0, :cond_1a0

    const-string v3, "delete old recommend folder content"

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_1a0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1a4
    if-ge v7, v2, :cond_1bf

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1bc

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v14, 0x0

    iget v15, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v11, v0

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :cond_1bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a4

    :cond_1bf
    return-void
.end method

.method public static final updateFolderFromStore(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;",
            "Lcom/android/launcher/folder/download/model/MarketRecommendModel;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folders"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketRecommendModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_78

    goto :goto_10

    :pswitch_24  #0x6
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_10

    :pswitch_30  #0x5
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_10

    :pswitch_42  #0x4
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_10

    :pswitch_4e  #0x3
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_10

    :pswitch_5a  #0x2
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_10

    :pswitch_66  #0x1
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V
    :try_end_71
    .catchall {:try_start_c .. :try_end_71} :catchall_74

    goto :goto_10

    :cond_72
    monitor-exit p1

    return-void

    :catchall_74
    move-exception p0

    monitor-exit p1

    throw p0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_5a  #00000002
        :pswitch_4e  #00000003
        :pswitch_42  #00000004
        :pswitch_30  #00000005
        :pswitch_24  #00000006
    .end packed-switch
.end method

.method private static final updateFolderRecommendEnable(Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->getFolderStatus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_45

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->getFolderStatus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-virtual {v4}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v4}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->isRecommendEnable()Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "FolderRecommendUtils"

    const-string/jumbo v5, "updateFolderRecommendEnable, recommend_ad is close, interrupt to close it"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->getFolderStatus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;

    invoke-virtual {v4, v1}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;->setStatus(I)V

    goto :goto_42

    :cond_40
    add-int/lit8 v3, v3, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_45
    if-nez v3, :cond_4a

    invoke-virtual {p0, v1}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->setFolderRecommendEnable(I)V

    :cond_4a
    return-void
.end method

.method public static final updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgDataModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketRecommendModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FolderRecommendUtils"

    const-string/jumbo v1, "updateItemInfoByMarketInfo"

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_106

    sget-object p4, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p4}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v0

    invoke-virtual {p4, p1, v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->queryMarketInfoByLauncherMode(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateItemInfoByMarketInfo:from db marketInfoList.size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_90
    const-string v1, "FolderRecommendUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    monitor-enter p3

    :try_start_9a
    new-instance v0, Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher/folder/download/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p4, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->clearAllData()V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_bd
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a4

    goto :goto_bd

    :pswitch_d1  #0x6
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :pswitch_d9  #0x5
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :pswitch_e1  #0x4
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :pswitch_e9  #0x3
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :pswitch_f1  #0x2
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :pswitch_f9  #0x1
    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catchall {:try_start_9a .. :try_end_100} :catchall_103

    goto :goto_bd

    :cond_101
    monitor-exit p3

    goto :goto_106

    :catchall_103
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_106
    :goto_106
    monitor-enter p2

    :try_start_107
    iget-object p4, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    const-string v0, "bgDataModel.folders"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_112
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    packed-switch v0, :pswitch_data_1b4

    goto :goto_112

    :pswitch_125  #0x6
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_112

    :pswitch_139  #0x5
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_112

    :pswitch_14d  #0x4
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_112

    :pswitch_161  #0x3
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_112

    :pswitch_175  #0x2
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_112

    :pswitch_189  #0x1
    const-string v0, "folderInfo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V
    :try_end_19c
    .catchall {:try_start_107 .. :try_end_19c} :catchall_1a0

    goto/16 :goto_112

    :cond_19e
    monitor-exit p2

    return-void

    :catchall_1a0
    move-exception p0

    monitor-exit p2

    throw p0

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_f9  #00000001
        :pswitch_f1  #00000002
        :pswitch_e9  #00000003
        :pswitch_e1  #00000004
        :pswitch_d9  #00000005
        :pswitch_d1  #00000006
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_189  #00000001
        :pswitch_175  #00000002
        :pswitch_161  #00000003
        :pswitch_14d  #00000004
        :pswitch_139  #00000005
        :pswitch_125  #00000006
    .end packed-switch
.end method

.method private static final updateItemInfoByMarketInfo$lambda$21$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final updateSingleFolderData(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfoList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketInfoList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "FolderRecommendUtils"

    if-eqz v0, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSingleFolderData:folderInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "itemInfoList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_79
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "marketInfoList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v3, "folderInfo.contents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d3
    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d3

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_114

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_110

    invoke-virtual {v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_111

    :cond_110
    move v7, v4

    :goto_111
    if-eqz v7, :cond_f4

    goto :goto_115

    :cond_114
    move-object v6, v3

    :goto_115
    check-cast v6, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    iput-object v6, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    if-eqz v4, :cond_128

    iget-object v4, v4, Lcom/android/launcher3/icons/IconCache;->mRecommendCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    if-eqz v4, :cond_128

    invoke-interface {v4, p0, v2}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    goto :goto_129

    :cond_128
    move-object v4, v3

    :goto_129
    sget-object v5, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    if-eqz v4, :cond_12f

    iget-object v3, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_12f
    invoke-virtual {v5, p0, v3}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_d3

    invoke-static {v3}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_d3

    :cond_13c
    invoke-static {p4, p3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->needUpdateItemInfo(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_145

    const/4 v0, 0x4

    if-ne p5, v0, :cond_1a5

    :cond_145
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_160

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needUpdateItemInfo is true folderInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_160
    invoke-interface {p3}, Ljava/util/List;->clear()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_167
    :goto_167
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    if-eqz v1, :cond_18b

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->mRecommendCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    if-eqz v1, :cond_18b

    invoke-interface {v1, p0, v2}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    goto :goto_18c

    :cond_18b
    move-object v1, v3

    :goto_18c
    sget-object v4, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    if-eqz v1, :cond_193

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_194

    :cond_193
    move-object v1, v3

    :goto_194
    invoke-virtual {v4, p0, v1}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_167

    invoke-static {v1}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_167

    :cond_1a1
    const/4 p0, 0x1

    invoke-virtual {p2, p3, p4, p0, p5}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    :cond_1a5
    return-void
.end method


# virtual methods
.method public final getMRecommendFolders()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/folder/OplusFolderIcon;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getSDumpInfo()Ljava/lang/StringBuilder;
    .registers 1

    sget-object p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sDumpInfo:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final setAppStoreContentRecommendWithOutSwitch(Landroid/content/Context;I)V
    .registers 9

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm7/y0;->d:Lm7/f0;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v3, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommendWithOutSwitch$1;

    const/4 p0, 0x0

    invoke-direct {v3, p2, p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommendWithOutSwitch$1;-><init>(ILandroid/content/Context;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final setMRecommendFolders(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/folder/OplusFolderIcon;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setSDumpInfo(Ljava/lang/StringBuilder;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->sDumpInfo:Ljava/lang/StringBuilder;

    return-void
.end method
