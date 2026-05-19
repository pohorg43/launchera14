.class public final Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;,
        Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;,
        Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStorePreAssetLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorePreAssetLoader.kt\ncom/android/launcher/folder/download/utils/StorePreAssetLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,349:1\n1#2:350\n1855#3,2:351\n1855#3,2:353\n*S KotlinDebug\n*F\n+ 1 StorePreAssetLoader.kt\ncom/android/launcher/folder/download/utils/StorePreAssetLoader\n*L\n159#1:351,2\n210#1:353,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

.field private static final MAX_PRE_SIZE:I = 0x5

.field private static final META_DATA_KEY:Ljava/lang/String; = "launcher.preset.folder_recommend_apps_path"

.field private static final STORE_PKG:Ljava/lang/String; = "com.heytap.market"

.field private static final TAG:Ljava/lang/String; = "StorePreAssetLoader"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPreAssetPath:Ljava/lang/String;

.field public mPreData:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

.field private final mPreMarketAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreWorkSpaceItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion$sInstance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v0

    return-object v0
.end method

.method private final restoreSuggestedFolder(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v0, "title"

    const-string v4, "_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreSuggestedFolder mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StorePreAssetLoader"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/common/util/OplusLauncherDbUtils;->getItemTableUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreSuggestedFolder db table is not exit mode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x1

    :try_start_45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "recommendId = ? AND itemType = ?"

    const-string v8, "5"

    const-string v11, "3"

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5e} :catch_11a

    if-eqz v7, :cond_a3

    move v8, v14

    :goto_61
    :try_start_61
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreSuggestedFolder:folderId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_61 .. :try_end_94} :catchall_97

    goto :goto_61

    :cond_95
    move v12, v8

    goto :goto_a4

    :catchall_97
    move-exception v0

    move-object v4, v0

    :try_start_99
    throw v4
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    move-object v9, v0

    :try_start_9c
    invoke-static {v7, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a0} :catch_a0

    :catch_a0
    move-exception v0

    goto/16 :goto_11d

    :cond_a3
    move v12, v14

    :goto_a4
    const/4 v11, 0x0

    :try_start_a5
    invoke-static {v7, v11}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eq v12, v14, :cond_110

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "container = ? AND itemType = ?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v13

    const-string v4, "0"

    aput-object v4, v0, v15
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c1} :catch_114

    const/4 v4, 0x0

    move-object v8, v5

    move-object v13, v11

    move-object v11, v0

    move/from16 v16, v12

    move-object v12, v4

    :try_start_c8
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cc} :catch_10e

    if-eqz v4, :cond_101

    :try_start_ce
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_f3

    if-lez v0, :cond_101

    :try_start_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreSuggestedFolder:cursor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_d4 .. :try_end_ed} :catchall_ef

    move v7, v15

    goto :goto_103

    :catchall_ef
    move-exception v0

    move-object v7, v0

    move v8, v15

    goto :goto_f7

    :catchall_f3
    move-exception v0

    const/4 v7, 0x0

    move v8, v7

    move-object v7, v0

    :goto_f7
    :try_start_f7
    throw v7
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception v0

    move-object v9, v0

    :try_start_fa
    invoke-static {v4, v7}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fe} :catch_fe

    :catch_fe
    move-exception v0

    move v13, v8

    goto :goto_10b

    :cond_101
    const/4 v0, 0x0

    move v7, v0

    :goto_103
    :try_start_103
    invoke-static {v4, v13}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_109

    move/from16 v12, v16

    goto :goto_125

    :catch_109
    move-exception v0

    move v13, v7

    :goto_10b
    move/from16 v8, v16

    goto :goto_11d

    :catch_10e
    move-exception v0

    goto :goto_117

    :cond_110
    move/from16 v16, v12

    const/4 v7, 0x0

    goto :goto_125

    :catch_114
    move-exception v0

    move/from16 v16, v12

    :goto_117
    move/from16 v8, v16

    goto :goto_11c

    :catch_11a
    move-exception v0

    move v8, v14

    :goto_11c
    const/4 v13, 0x0

    :goto_11d
    const-string/jumbo v4, "restoreSuggestedFolder --- e = "

    invoke-static {v4, v0, v6}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v12, v8

    move v7, v13

    :goto_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSuggestedFolder folderId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasContent:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v12, v14, :cond_1c3

    if-nez v7, :cond_1c3

    sget-object v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "getAppContext()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v3

    invoke-virtual {v4, v7, v15, v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->loadPreMarketInfos(Landroid/content/Context;ZI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSuggestedFolder mPreMarketAppInfos.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->updatePreWorkSpaceItems(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_189
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "getAppContext().contentResolver"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "generate_new_item_id"

    invoke-static {v4, v7}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "value"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2, v3, v15, v5}, Lcom/android/launcher3/model/OplusModelWriter;->buildItemInsertOperation(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLandroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_189

    :cond_1b9
    invoke-static {v2, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v0

    const-string/jumbo v1, "restoreSuggestedFolder: success:"

    invoke-static {v1, v0, v6}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1c3
    return-void
.end method


# virtual methods
.method public final addSuggestedFolder(III)I
    .registers 12

    const-string v0, "StorePreAssetLoader"

    const-string v1, "addSuggestedFolder"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "generate_new_item_id"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mSuggestedFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    iput p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string/jumbo v2, "\u00a0Suggested Apps"

    iput-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v3, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mSuggestedFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/16 v4, -0x64

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :cond_4c
    return v0
.end method

.method public final getMPreAssetPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMPreData()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreData:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mPreData"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMPreMarketAppInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    return-object p0
.end method

.method public final getMPreWorkSpaceItemInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    return-object p0
.end method

.method public final getMSuggestedFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mSuggestedFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public final initPreAssetPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "StorePreAssetLoader"

    const v1, 0x7f120480

    :try_start_5
    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_19

    const/16 v3, 0x80

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v2

    :goto_1a
    if-nez p1, :cond_1d

    return-object v2

    :cond_1d
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "launcher.preset.folder_recommend_apps_path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPreAssetPath:mPreAssetPath:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception p1

    const-string v1, "initPreAssetPath e = "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_44
    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public final loadPreMarketInfos(Landroid/content/Context;ZI)V
    .registers 19

    move-object v0, p0

    move-object/from16 v2, p1

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    if-nez v1, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->initPreAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iput-object v1, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    :cond_15
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v7, "StorePreAssetLoader"

    if-nez v1, :cond_41

    const-string v0, "loadPreMarketInfos: isSupportRecommendApp:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sInstance.mPreAssetPath != null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    if-eqz v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v4

    :goto_3d
    invoke-static {v0, v3, v7}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_41
    sget-object v1, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchDisable()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "loadPreMarketInfos isWitchEnable is false"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4f
    iget-object v1, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide/16 v5, 0x0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :cond_60
    move-wide v8, v5

    const/4 v1, 0x0

    :try_start_62
    const-string v5, "com.heytap.market"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_70

    :catch_6a
    const-string v5, "loadPreMarketInfos not found app"

    invoke-static {v7, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_70
    :try_start_70
    iget-object v6, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    if-nez v6, :cond_7a

    const-string v0, "loadPreMarketInfos mPreAssetPath == null"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/app_mapping.json"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_94

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    goto :goto_95

    :cond_94
    move-object v5, v1

    :goto_95
    if-eqz v5, :cond_9c

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9b} :catch_111
    .catchall {:try_start_70 .. :try_end_9b} :catchall_10d

    goto :goto_9d

    :cond_9c
    move-object v10, v1

    :goto_9d
    :try_start_9d
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_10a
    .catchall {:try_start_9d .. :try_end_a2} :catchall_107

    :try_start_a2
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a7} :catch_105
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_153

    :try_start_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_ac
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    :cond_b6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadPreMarketInfos: jsonString = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " jsonPathString:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_d9

    goto :goto_da

    :cond_d9
    move v3, v4

    :goto_da
    if-eqz v3, :cond_f6

    iget-object v4, v0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "jsonString.toString()"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v5, v6

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->parseData(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_f6

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->updateRecommendModel()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_f6} :catch_102
    .catchall {:try_start_a7 .. :try_end_f6} :catchall_ff

    :cond_f6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    if-eqz v10, :cond_137

    goto :goto_134

    :catchall_ff
    move-exception v0

    move-object v1, v12

    goto :goto_154

    :catch_102
    move-exception v0

    move-object v1, v12

    goto :goto_114

    :catch_105
    move-exception v0

    goto :goto_114

    :catchall_107
    move-exception v0

    move-object v11, v1

    goto :goto_154

    :catch_10a
    move-exception v0

    move-object v11, v1

    goto :goto_114

    :catchall_10d
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    goto :goto_154

    :catch_111
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    :goto_114
    :try_start_114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPreMarketInfos e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_114 .. :try_end_128} :catchall_153

    if-eqz v1, :cond_12d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_12d
    if-eqz v11, :cond_132

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_132
    if-eqz v10, :cond_137

    :goto_134
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_137
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_152

    const-string v0, "loadPreMarketInfos: cost: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_152
    return-void

    :catchall_153
    move-exception v0

    :goto_154
    if-eqz v1, :cond_159

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_159
    if-eqz v11, :cond_15e

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_15e
    if-eqz v10, :cond_163

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_163
    throw v0
.end method

.method public final parseData(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const-string v0, "StorePreAssetLoader"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jsonString"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_10
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    invoke-virtual {v3, p4, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    const-string v3, "Gson().fromJson(jsonString, PreData::class.java)"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    invoke-virtual {p0, p4}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->setMPreData(Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreData()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->getAppInfos()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_10a

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreData()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->getAppInfos()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_41
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;

    iget-object v4, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_e3

    sget-object v4, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e3

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInDownloadAppList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e3

    new-instance v4, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-direct {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/icons/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getIconName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_94

    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_95

    :cond_94
    const/4 v6, 0x0

    :goto_95
    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMAppName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMPkgName(Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v7, v6, v8}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMBitmapInfo(Lcom/android/launcher3/icons/BitmapInfo;)V

    invoke-virtual {v4, p5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMLauncherMode(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreData()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->getJumpUrlPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMJumpUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    const-string v3, "-1"

    invoke-virtual {v4, v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMReqId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_e3
    invoke-virtual {v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->getPackageName()Ljava/lang/String;

    goto/16 :goto_41

    :cond_e8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "parseData:cost "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_102} :catch_103

    goto :goto_10a

    :catch_103
    move-exception p0

    const-string/jumbo p1, "parseData e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_10a
    :goto_10a
    return-void
.end method

.method public final restoreSuggestedFolder(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v0

    const-string v1, "StorePreAssetLoader"

    if-nez v0, :cond_31

    const-string/jumbo p0, "restoreSuggestedFolder:isSupportRecommendApp:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",sInstance.mPreAssetPath != null: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->Companion:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$Companion;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    invoke-static {p0, p1, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_31
    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo p0, "restoreSuggestedFolder isWitchEnable is false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->restoreSuggestedFolder(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->restoreSuggestedFolder(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)V

    return-void
.end method

.method public final setMPreAssetPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreAssetPath:Ljava/lang/String;

    return-void
.end method

.method public final setMPreData(Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreData:Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    return-void
.end method

.method public final setMSuggestedFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mSuggestedFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public final updatePreWorkSpaceItems(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_18

    const-string p0, "StorePreAssetLoader"

    const-string/jumbo p1, "updatePreWorkSpaceItems launcher is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    iget-object v3, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput p1, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    sget-object v5, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    if-eqz v2, :cond_49

    iget-object v3, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_49
    invoke-virtual {v5, v0, v3}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-static {v2}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_55
    iget-object v2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_5b
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    if-nez p1, :cond_62

    return-void

    :cond_62
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const-string v0, "appState.model.mBgDataModel.marketRecommendModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_70
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreWorkSpaceItemInfos:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_82

    monitor-exit p1

    return-void

    :catchall_82
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final updateRecommendModel()V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const-string v1, "appState.model.mBgDataModel.marketRecommendModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_15
    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->clearAllData()V

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->mPreMarketAppInfos:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_39

    monitor-exit v0

    sget-object p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->insertMarketInfoList(Ljava/util/List;)V

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method
