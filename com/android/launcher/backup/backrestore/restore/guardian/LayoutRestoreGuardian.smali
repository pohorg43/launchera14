.class public final Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayoutRestoreGuardian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutRestoreGuardian.kt\ncom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1072:1\n1#2:1073\n59#3:1074\n76#3,4:1075\n59#3:1079\n76#3,2:1081\n79#3:1085\n59#3:1089\n76#3,4:1092\n76#3,4:1096\n59#3:1100\n59#3:1101\n76#3,4:1102\n76#3,4:1106\n76#3,4:1110\n76#3,4:1114\n76#3,2:1129\n79#3:1133\n59#3:1139\n76#3,4:1140\n76#3,4:1144\n1855#4:1080\n1855#4,2:1083\n1855#4,2:1086\n1856#4:1088\n1855#4,2:1090\n1855#4,2:1118\n1855#4,2:1120\n1855#4,2:1122\n1855#4,2:1124\n1855#4,2:1126\n1855#4:1128\n1855#4,2:1131\n1856#4:1134\n1855#4:1135\n1855#4,2:1136\n1856#4:1138\n*S KotlinDebug\n*F\n+ 1 LayoutRestoreGuardian.kt\ncom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian\n*L\n179#1:1074\n211#1:1075,4\n215#1:1079\n276#1:1081,2\n276#1:1085\n318#1:1089\n329#1:1092,4\n332#1:1096,4\n432#1:1100\n437#1:1101\n455#1:1102,4\n542#1:1106,4\n589#1:1110,4\n770#1:1114,4\n855#1:1129,2\n855#1:1133\n1035#1:1139\n1037#1:1140,4\n1040#1:1144,4\n262#1:1080\n286#1:1083,2\n297#1:1086,2\n262#1:1088\n319#1:1090,2\n776#1:1118,2\n807#1:1120,2\n811#1:1122,2\n821#1:1124,2\n835#1:1126,2\n850#1:1128\n859#1:1131,2\n850#1:1134\n887#1:1135\n893#1:1136,2\n887#1:1138\n*E\n"
    }
.end annotation


# static fields
.field private static final DELAY_DETACH_TIME:J = 0x1388L

.field private static final DO_NOT_USE_STAGE2:Z = true

.field public static final INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

.field public static final LOG_DEBUG:Z = false

.field private static SIMULATE_DB_OR_VIEW_LOSE:Z = false

.field public static final TAG:Ljava/lang/String; = "LayoutRestoreGuardian"

.field private static mDatabaseModeLayout:[I

.field private static mIsRestoreGuarding:Z

.field private static mIsSafeMode:Z

.field private static mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

.field private static mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostDesktopItemsToDb$lambda$28(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final addLostDesktopItemsToDb(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/ShortcutManager;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "AddCardManager"

    invoke-static {v0, v8}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getNoNotifyUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v0, 0x0

    move v15, v0

    :goto_21
    const-string v7, "LayoutRestoreGuardian"

    if-ge v15, v14, :cond_b3

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    :try_start_2f
    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_c8

    goto/16 :goto_ac

    :pswitch_39  #0x6
    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v0

    invoke-static {v0, v3, v13}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateUrlShortcutInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ac

    :pswitch_46  #0x5
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    if-eqz v1, :cond_ac

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v4

    aget v0, v1, v0

    aget v1, v1, v2

    invoke-static {v4, v3, v13, v0, v1}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateCardInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    :pswitch_5a  #0x4
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    if-eqz v1, :cond_ac

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v4

    aget v6, v1, v0

    aget v0, v1, v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_66} :catch_a5

    move-object/from16 v1, p1

    move v2, v4

    move-object v4, v13

    move-object v5, v12

    move-object v9, v7

    move v7, v0

    :try_start_6d
    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateWidgetInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    :pswitch_75  #0x3
    move-object v9, v7

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v0

    invoke-static {v0, v3, v13, v12}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateFolderInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    :pswitch_82  #0x2
    move-object v9, v7

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v2

    move-object/from16 v1, p1

    move-object v4, v13

    move-object v5, v12

    move-object v6, v11

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateDeepShortcutInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    :pswitch_96  #0x1
    move-object v9, v7

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v0

    invoke-static {v8, v0, v3, v13}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateApplicationInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a2} :catch_a3

    goto :goto_ac

    :catch_a3
    move-exception v0

    goto :goto_a7

    :catch_a5
    move-exception v0

    move-object v9, v7

    :goto_a7
    const-string v1, "addLostDesktopItemsToDb e: "

    invoke-static {v1, v0, v9}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_ac
    :goto_ac
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    move-object/from16 v9, p2

    goto/16 :goto_21

    :cond_b3
    move-object v9, v7

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, v8, v10}, Landroidx/core/content/res/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    move-result v0

    const-string v1, "addLostDesktopItemsToDb: executeResult: "

    invoke-static {v1, v0, v9}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_96  #00000001
        :pswitch_82  #00000002
        :pswitch_75  #00000003
        :pswitch_5a  #00000004
        :pswitch_46  #00000005
        :pswitch_39  #00000006
    .end packed-switch
.end method

.method private static final addLostDesktopItemsToDb$lambda$28(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dbOperations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    return-void
.end method

.method private final addLostDesktopItemsToDbSamePlace(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/ShortcutManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostDesktopItemsToDb(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/ShortcutManager;)V

    return-void
.end method

.method private final addLostItemsToDb(Landroid/content/Context;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbDesktopItemPositions$default(Landroid/content/Context;[IZILjava/lang/Object;)Lh4/o;

    move-result-object v0

    iget-object v2, v0, Lh4/o;->a:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lh4/o;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    invoke-direct {p0, p2, v7}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->queryCanPlaceSamePositionItems(Landroid/util/SparseArray;Ljava/util/HashMap;)Landroid/util/Pair;

    move-result-object p2

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ShortcutManager;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "canPlaceResult.first"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    move v0, v3

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    const-string/jumbo v4, "sm"

    if-eqz v0, :cond_45

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/util/SparseArray;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v8}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostDesktopItemsToDbSamePlace(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/ShortcutManager;)V

    :cond_45
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "canPlaceResult.second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_55

    move v1, v3

    :cond_55
    if-eqz v1, :cond_67

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Landroid/util/SparseArray;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostOtherItemsToDbLastPosition(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;Ljava/util/HashMap;Landroid/content/pm/ShortcutManager;)V

    :cond_67
    return-void
.end method

.method private final addLostOtherItemsToDbLastPosition(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;Ljava/util/HashMap;Landroid/content/pm/ShortcutManager;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "LayoutRestoreGuardian"

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v0, 0x0

    move v7, v0

    move v8, v7

    :goto_11
    if-ge v7, v6, :cond_2f8

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    :try_start_1c
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_28

    move v10, v8

    goto :goto_2a

    :cond_28
    add-int/lit8 v10, v9, -0x1

    :goto_2a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preferredScreenIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", screenCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v10, v9, :cond_2df

    invoke-virtual {v3, v10}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_6f

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    if-eqz v11, :cond_6f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/android/launcher3/util/LogableGridOccupancy;

    aget v15, v11, v8

    aget v11, v11, v12

    invoke-direct {v14, v15, v11}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/util/LogableGridOccupancy;

    :cond_6f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2df

    const/4 v11, 0x2

    new-array v11, v11, [I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v12, :cond_99

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v13

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v14

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/launcher3/util/GridOccupancy;->findLastVacantCell([III)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_9a

    :cond_99
    const/4 v12, 0x0

    :goto_9a
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_a0} :catch_2e4

    const-string v12, ", screenId:"

    const-string v14, "found space "

    const-string v15, "generate_new_item_id"

    move/from16 v16, v6

    const-string/jumbo v6, "value"

    const-string v2, ", item:"

    if-eqz v8, :cond_11f

    const/4 v8, 0x0

    :try_start_b0
    aget v8, v11, v8
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b2} :catch_11a

    :try_start_b2
    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    const/4 v8, 0x1

    aget v8, v11, v8

    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    invoke-virtual {v0, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    const/16 v8, -0x64

    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v15}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v17, :cond_f6

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v18

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v19

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v20

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v21

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_f6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e7

    :catch_11a
    move-exception v0

    :goto_11b
    move/from16 v18, v7

    goto/16 :goto_2e9

    :cond_11f
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v8

    if-ne v9, v8, :cond_1ee

    add-int/lit8 v8, v8, -0x1

    :goto_12b
    const/4 v9, -0x1

    if-ge v9, v8, :cond_1e7

    invoke-virtual {v3, v8}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v10, :cond_14f

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v13

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-virtual {v10, v11, v13, v1}, Lcom/android/launcher3/util/GridOccupancy;->findLastVacantCell([III)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_150

    :cond_14f
    const/4 v1, 0x0

    :goto_150
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_156} :catch_2da

    if-eqz v1, :cond_1c5

    const/4 v8, 0x0

    :try_start_159
    aget v1, v11, v8
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15b} :catch_1bf

    :try_start_15b
    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    invoke-virtual {v0, v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_178} :catch_2da

    move v10, v7

    int-to-long v6, v1

    :try_start_17a
    invoke-virtual {v0, v6, v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v17, :cond_1a0

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v18

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v19

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v20

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v21

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_1a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e8

    :catch_1bf
    move-exception v0

    move v10, v7

    move/from16 v18, v10

    goto/16 :goto_2e9

    :cond_1c5
    move v10, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found fail1, screenId:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    move v7, v10

    goto/16 :goto_12b

    :cond_1e7
    :goto_1e7
    move v10, v7

    :goto_1e8
    const/4 v0, 0x0

    move v8, v0

    move/from16 v18, v10

    goto/16 :goto_2ee

    :cond_1ee
    move v10, v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "generate_new_screen_id"

    invoke-static {v1, v7}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_225

    sget-object v7, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    if-eqz v7, :cond_225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/util/LogableGridOccupancy;
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_211} :catch_2d6

    const/16 v17, 0x0

    move/from16 v18, v10

    :try_start_215
    aget v10, v7, v17

    const/16 v17, 0x1

    aget v7, v7, v17

    invoke-direct {v9, v10, v7}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/LogableGridOccupancy;

    goto :goto_227

    :cond_225
    move/from16 v18, v10

    :goto_227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v7, :cond_244

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v9

    invoke-virtual {v7, v11, v8, v9}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_245

    :cond_244
    const/4 v7, 0x0

    :goto_245
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_249} :catch_2d4

    if-eqz v7, :cond_2b1

    const/4 v7, 0x0

    :try_start_24c
    aget v8, v11, v7

    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    const/4 v8, 0x1

    aget v8, v11, v8

    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    const/16 v8, -0x64

    invoke-virtual {v0, v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v15}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v19, :cond_292

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v20

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v21

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v22

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v23

    const/16 v24, 0x1

    invoke-virtual/range {v19 .. v24}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cc

    :cond_2b1
    const/4 v7, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found fail2, screenId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2cc
    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_2cf} :catch_2d1

    move v8, v7

    goto :goto_2ee

    :catch_2d1
    move-exception v0

    move v8, v7

    goto :goto_2e9

    :catch_2d4
    move-exception v0

    goto :goto_2dd

    :catch_2d6
    move-exception v0

    move/from16 v18, v10

    goto :goto_2dd

    :catch_2da
    move-exception v0

    move/from16 v18, v7

    :goto_2dd
    const/4 v8, 0x0

    goto :goto_2e9

    :cond_2df
    move/from16 v16, v6

    move/from16 v18, v7

    goto :goto_2ee

    :catch_2e4
    move-exception v0

    move/from16 v16, v6

    goto/16 :goto_11b

    :goto_2e9
    const-string v1, "addLostOtherItemsToDbLastPosition e:"

    invoke-static {v1, v0, v5}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2ee
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, v16

    goto/16 :goto_11

    :cond_2f8
    const/4 v0, 0x4

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v3, v1, v0, v1}, Lcom/android/launcher3/ota/AddCardUtils;->updateWorkspaceScreenOrder$default(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel;ILjava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostDesktopItemsToDb(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/ShortcutManager;)V

    return-void
.end method

.method private final adjustBackupDataAliasComponent(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/util/LongSparseArray;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroid/content/pm/LauncherActivityInfo;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p3

    invoke-static {v11, v2, v0, v1, v12}, Lcom/android/launcher/LaunchComponentAliasVerifier;->getNewComponents(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    const-string v3, ", cn:"

    const-string v13, "LayoutRestoreGuardian"

    if-ge v2, v1, :cond_45

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustBackupDataAliasComponent found new cn, replaced currentItemId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v0, :cond_103

    :try_start_5c
    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x0

    :goto_6c
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result v5

    if-eqz v5, :cond_91

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz v5, :cond_91

    sget-object v5, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v5}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result v5

    if-eqz v5, :cond_91

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    move-object/from16 v7, p4

    goto :goto_9d

    :cond_91
    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v5
    :try_end_95
    .catchall {:try_start_5c .. :try_end_95} :catchall_ff

    move-object/from16 v7, p4

    :try_start_97
    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    :goto_9d
    if-nez v5, :cond_b7

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustBackupDataAliasComponent userHandle is null, deleted invalidItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    :cond_b7
    if-eqz v4, :cond_105

    invoke-static {v11, v0, v4, v5, v12}, Lcom/android/launcher/LaunchComponentAliasVerifier;->replaceComponent(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_e1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustBackupDataAliasComponent found replace cn, replaced currentItem:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_105

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustBackupDataAliasComponent can\'t found cn, deleted invalidItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    :catchall_ff
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_109

    :cond_103
    move-object/from16 v7, p4

    :cond_105
    :goto_105
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_107
    .catchall {:try_start_97 .. :try_end_107} :catchall_108

    goto :goto_10d

    :catchall_108
    move-exception v0

    :goto_109
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_10d
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_115

    goto/16 :goto_4e

    :cond_115
    const-string v4, "adjustBackupDataAliasComponent found replace cn, e:"

    invoke-static {v4, v0, v13}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4e

    :cond_11c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_120

    :cond_130
    invoke-static/range {p2 .. p2}, Lcom/android/launcher/LaunchComponentAliasVerifier;->getBackupInvalidDeepShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "illegalItems"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_161

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustBackupDataAliasComponent can\'t found shortcuts, deleted invalidItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    :cond_161
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v9

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_17a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_204

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v0, :cond_1e6

    :try_start_188
    const-string/jumbo v1, "mode"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launcherApps"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "downloadAppsManager"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v7

    const-string v1, "item.intent"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v1

    long-to-int v8, v1

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v17

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v18
    :try_end_1b2
    .catchall {:try_start_188 .. :try_end_1b2} :catchall_1e0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v18

    :try_start_1bf
    invoke-static/range {v1 .. v10}, Lcom/android/common/util/LauncherModeUtil;->getNeedDeleteIndex(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/download/DownloadAppsManager;JLjava/lang/String;III)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1ea

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustBackupDataAliasComponent get invalid index, deleted invalidItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ea

    :catchall_1e0
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto :goto_1ee

    :cond_1e6
    move-object/from16 v19, v9

    move-object/from16 v17, v10

    :cond_1ea
    :goto_1ea
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_1ec
    .catchall {:try_start_1bf .. :try_end_1ec} :catchall_1ed

    goto :goto_1f2

    :catchall_1ed
    move-exception v0

    :goto_1ee
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1f2
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1f9

    goto :goto_1fe

    :cond_1f9
    const-string v1, "adjustBackupDataAliasComponent get invalid index, e:"

    invoke-static {v1, v0, v13}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1fe
    move-object/from16 v10, v17

    move-object/from16 v9, v19

    goto/16 :goto_17a

    :cond_204
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_208
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_208

    :cond_218
    return-void
.end method

.method private final detectLostItems(Landroid/content/Context;Z)Landroid/util/SparseArray;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p1

    const-string v8, "detectLostItems e:"

    const-string v9, "LayoutRestoreGuardian"

    const/4 v10, 0x0

    :try_start_7
    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    :goto_16
    if-eqz v0, :cond_1e

    const-string v0, "detectLostItems failed, mRestoreDataList.isNullOrEmpty!"

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1e
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_149

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_30
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_229

    :try_start_3c
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v2

    if-nez v2, :cond_145

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    if-ne v3, v2, :cond_145

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->getAllAliasConfigComponent(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->getAllUsers(Landroid/content/Context;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v0

    const-string v5, "it.layoutMap"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v14, v10

    move-object v15, v14

    :goto_72
    if-ge v6, v5, :cond_ba

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v10, :cond_b3

    const/4 v0, 0x2

    if-eq v10, v0, :cond_8e

    const/4 v0, 0x4

    if-eq v10, v0, :cond_89

    goto :goto_92

    :cond_89
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v15

    goto :goto_92

    :cond_8e
    invoke-static {v9, v7}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;)Lh4/j;

    move-result-object v14

    :goto_92
    if-eqz v16, :cond_b3

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b3

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9f
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9f

    instance-of v10, v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v10, :cond_9f

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_b3
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto :goto_72

    :cond_ba
    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    const-string/jumbo v1, "metaMap"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "allUsers"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, v2, v3, v4}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->adjustBackupDataAliasComponent(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/util/LongSparseArray;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ce
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_da} :catch_132
    .catchall {:try_start_3c .. :try_end_da} :catchall_229

    if-eqz v0, :cond_10a

    :try_start_dc
    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v3
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_106

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v16, v10

    move-object v10, v6

    move-object v6, v15

    :try_start_eb
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isItemShouldShow(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lh4/j;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_10c

    if-nez p2, :cond_fd

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result v1

    invoke-direct {v10, v1, v0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isAppViewNotVisible(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_10c

    :cond_fd
    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v11, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10c

    :catchall_106
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_110

    :cond_10a
    move-object/from16 v16, v10

    :cond_10c
    :goto_10c
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_10e
    .catchall {:try_start_eb .. :try_end_10e} :catchall_10f

    goto :goto_114

    :catchall_10f
    move-exception v0

    :goto_110
    :try_start_110
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_114
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_11d

    :goto_11a
    move-object/from16 v10, v16

    goto :goto_ce

    :cond_11d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add needCheckItem e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_131} :catch_132
    .catchall {:try_start_110 .. :try_end_131} :catchall_229

    goto :goto_11a

    :catch_132
    move-exception v0

    :try_start_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    const/4 v1, 0x1

    const/4 v10, 0x0

    goto/16 :goto_30

    :cond_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------queryItemMap.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_169

    const/4 v0, 0x1

    goto :goto_16a

    :cond_169
    const/4 v0, 0x0

    :goto_16a
    if-eqz v0, :cond_1a2

    invoke-static {v7, v11}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbExistItemIds(Landroid/content/Context;Landroid/util/SparseArray;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_174
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_180
    .catchall {:try_start_133 .. :try_end_180} :catchall_229

    const-string v2, "id"

    if-eqz p2, :cond_18f

    :try_start_184
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_174

    :cond_18f
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_174

    :cond_1a2
    if-eqz p2, :cond_1e3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db lost.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1c1
    if-ge v1, v0, :cond_224

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db lost, can not find db item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c1

    :cond_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view lost.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_201
    if-ge v1, v0, :cond_224

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "view lost, find db item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_221
    .catchall {:try_start_184 .. :try_end_221} :catchall_229

    add-int/lit8 v1, v1, 0x1

    goto :goto_201

    :cond_224
    if-eqz p2, :cond_227

    goto :goto_228

    :cond_227
    move-object v11, v12

    :goto_228
    return-object v11

    :catchall_229
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_235

    goto :goto_238

    :cond_235
    invoke-static {v8, v0, v9}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_238
    const/4 v1, 0x0

    return-object v1
.end method

.method private final generateBackupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/mode/LauncherMode;Ljava/util/Map;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;"
        }
    .end annotation

    new-instance p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-direct {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;-><init>()V

    const/4 v8, 0x0

    :try_start_6
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v1, v0

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v5, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v6, v0

    goto :goto_19

    :cond_18
    move v6, v5

    :goto_19
    const/4 v7, 0x0

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v9, v0

    goto :goto_25

    :cond_24
    move v9, v5

    :goto_25
    move-object v0, p0

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->initBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;JIIIII)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, v8

    :goto_3a
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IILjava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_45
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v10, "generateBackupItemInfo e:"

    const-string v11, "LayoutRestoreGuardian"

    if-nez v0, :cond_50

    goto :goto_6a

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", init: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_dc

    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_dc

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_85

    iget-object p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz p2, :cond_84

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    goto :goto_85

    :cond_84
    move-object p3, v8

    :cond_85
    :goto_85
    if-eqz p3, :cond_8c

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_8d

    :cond_8c
    move-object p2, v8

    :goto_8d
    if-eqz p3, :cond_94

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    goto :goto_95

    :cond_94
    move-object p3, v8

    :goto_95
    invoke-static {p2, p3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    :try_start_9d
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eqz p3, :cond_a6

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a7

    :cond_a6
    move-object v1, v8

    :goto_a7
    if-eqz p3, :cond_ad

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    :cond_ad
    invoke-static {p0, v0, v1, v8, p2}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateApplicationBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_b2
    .catchall {:try_start_9d .. :try_end_b2} :catchall_b3

    goto :goto_b8

    :catchall_b3
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_b8
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_c0

    goto/16 :goto_269

    :cond_c0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", app: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_dc
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_173

    :cond_e2
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_173

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f9

    iget-object p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz p2, :cond_f8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_f9

    :cond_f8
    move-object v0, v8

    :cond_f9
    :goto_f9
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_101

    :cond_100
    move-object p2, v8

    :goto_101
    if-eqz v0, :cond_108

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    :cond_108
    move-object v0, v8

    :goto_109
    invoke-static {p2, v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_119

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_11a

    :cond_119
    move-object v2, v8

    :goto_11a
    :try_start_11a
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v4, 0x0

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p2, :cond_128

    iget-object p2, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object v5, p2

    goto :goto_129

    :cond_128
    move-object v5, v8

    :goto_129
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p2, :cond_134

    iget-object p2, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object v6, p2

    goto :goto_135

    :cond_134
    move-object v6, v8

    :goto_135
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p2, :cond_13e

    iget-object v8, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_13e
    invoke-static {v8}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    move-object v0, p0

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/util/Map;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_149
    .catchall {:try_start_11a .. :try_end_149} :catchall_14a

    goto :goto_14f

    :catchall_14a
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_14f
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_157

    goto/16 :goto_269

    :cond_157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", shortcut: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_173
    const/4 p3, 0x3

    if-ne v0, p3, :cond_1b2

    instance-of p3, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p3, :cond_1b2

    :try_start_17a
    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-static {p0, p2, p3, v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;III)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_188
    .catchall {:try_start_17a .. :try_end_188} :catchall_189

    goto :goto_18e

    :catchall_189
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_18e
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_196

    goto/16 :goto_269

    :cond_196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", folder: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_1b2
    const/4 p2, 0x5

    if-ne v0, p2, :cond_1fc

    instance-of p2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_1fc

    :try_start_1b9
    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1cd

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    :cond_1cd
    invoke-static {p0, p2, p3, v0, v8}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateWidgetBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_1d2
    .catchall {:try_start_1b9 .. :try_end_1d2} :catchall_1d3

    goto :goto_1d8

    :catchall_1d3
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_1d8
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1e0

    goto/16 :goto_269

    :cond_1e0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", widget: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_1fc
    const/16 p2, 0x64

    if-ne v0, p2, :cond_269

    instance-of p2, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p2, :cond_269

    :try_start_204
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v3, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v4, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v5, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v6, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    if-eqz p2, :cond_229

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    goto :goto_22a

    :cond_229
    move-object v7, v8

    :goto_22a
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-boolean p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-boolean p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateCardBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_242
    .catchall {:try_start_204 .. :try_end_242} :catchall_243

    goto :goto_248

    :catchall_243
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_248
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_24f

    goto :goto_269

    :cond_24f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", card: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_269
    :goto_269
    return-object p0
.end method

.method private final getQueryDbSelection(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result p0

    const-string v0, " AND title="

    const-string v1, "itemType="

    packed-switch p0, :pswitch_data_7a

    const/4 p0, 0x0

    return-object p0

    :pswitch_d  #0x5
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND card_type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x4
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND appWidgetProvider="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x3
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5f  #0x1, 0x2, 0x6
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5f  #00000001
        :pswitch_5f  #00000002
        :pswitch_45  #00000003
        :pswitch_29  #00000004
        :pswitch_d  #00000005
        :pswitch_5f  #00000006
    .end packed-switch
.end method

.method private final isAppShouldShow(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v1, "can not find system validApp: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", item: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutRestoreGuardian"

    invoke-static {p1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    return v0
.end method

.method private final isAppViewNotVisible(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string v1, "LayoutRestoreGuardian"

    invoke-static {p1, p2, v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostView(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_25

    move p0, v0

    :cond_25
    return p0
.end method

.method private final isCardShouldShow(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not find system validCard: not supportCard, item: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutRestoreGuardian"

    invoke-static {p1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final isDbHasTargetItem(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p1, 0x0

    if-nez p0, :cond_4

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getMapKey()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_94

    goto/16 :goto_93

    :pswitch_f  #0x5
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p2

    if-ne p4, p2, :cond_93

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result p0

    if-ne p6, p0, :cond_93

    :goto_1b
    move p1, v0

    goto/16 :goto_93

    :pswitch_1e  #0x4
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p2

    if-ne p4, p2, :cond_93

    if-eqz p5, :cond_2f

    invoke-static {p5}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_30

    :cond_2f
    move-object p2, v1

    :goto_30
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-static {p0}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_1b

    :pswitch_45  #0x3
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p3

    if-ne p4, p3, :cond_93

    if-eqz p2, :cond_56

    invoke-static {p2}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_57

    :cond_56
    move-object p2, v1

    :goto_57
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_65

    invoke-static {p0}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_65
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_1b

    :pswitch_6c  #0x1, 0x2, 0x6
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p3

    if-ne p4, p3, :cond_93

    if-eqz p2, :cond_7d

    invoke-static {p2}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_7e

    :cond_7d
    move-object p2, v1

    :goto_7e
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8c

    invoke-static {p0}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8c
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_1b

    :cond_93
    :goto_93
    return p1

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_6c  #00000001
        :pswitch_6c  #00000002
        :pswitch_45  #00000003
        :pswitch_1e  #00000004
        :pswitch_f  #00000005
        :pswitch_6c  #00000006
    .end packed-switch
.end method

.method private final isDeepShortcutShouldShow(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/Map;Landroid/util/LongSparseArray;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->isPackageShouldShow(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {p2}, Lcom/android/launcher/LaunchComponentAliasVerifier;->toDeepShortcut(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    const-string/jumbo v4, "toDeepShortcut(item)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/common/util/PackageUtils$Companion;->isIllegalDeepShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "LayoutRestoreGuardian"

    if-eqz v1, :cond_82

    if-nez v2, :cond_82

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getProfileId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v5

    invoke-static {p1, v1, v2, v5}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->getUserHandle(Landroid/content/Context;JI)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    if-eqz p3, :cond_55

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    :cond_55
    if-eqz v0, :cond_6d

    if-eqz p4, :cond_68

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide p0

    invoke-virtual {p4, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_69

    :cond_68
    move p0, v3

    :goto_69
    if-eqz p0, :cond_6d

    const/4 p0, 0x1

    return p0

    :cond_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can not find system pinnedShortcut: not pinned, item: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_82
    if-nez v1, :cond_ad

    const-string p3, "can not find system pinnedShortcut: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p1, p0, p4}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", item: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_ad
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can not find system pinnedShortcut: isIllegalDeepShortcutItem, item: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c1
    return v3
.end method

.method private final isItemShouldShow(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lh4/j;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Lh4/j<",
            "+",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;+",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "+",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_50

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can not find unknown type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", item: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutRestoreGuardian"

    invoke-static {p1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_4f

    :pswitch_24  #0x5
    invoke-direct {p0, p3}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isCardShouldShow(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result p0

    goto :goto_4f

    :pswitch_29  #0x4
    if-eqz p4, :cond_30

    iget-object p1, p4, Lh4/j;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/util/LongSparseArray;

    :cond_30
    invoke-direct {p0, p3, v0, p5}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isWidgetShouldShow(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/util/LongSparseArray;Ljava/util/Map;)Z

    move-result p0

    goto :goto_4f

    :pswitch_35  #0x3
    const/4 p0, 0x1

    goto :goto_4f

    :pswitch_37  #0x2
    if-eqz p4, :cond_3e

    iget-object p2, p4, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    goto :goto_3f

    :cond_3e
    move-object p2, v0

    :goto_3f
    if-eqz p4, :cond_46

    iget-object p4, p4, Lh4/j;->b:Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Landroid/util/LongSparseArray;

    :cond_46
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isDeepShortcutShouldShow(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/Map;Landroid/util/LongSparseArray;)Z

    move-result p0

    goto :goto_4f

    :pswitch_4b  #0x1, 0x6
    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isAppShouldShow(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result p0

    :goto_4f
    return p0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_37  #00000002
        :pswitch_35  #00000003
        :pswitch_29  #00000004
        :pswitch_24  #00000005
        :pswitch_4b  #00000006
    .end packed-switch
.end method

.method public static final isRestoreGuarding()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsRestoreGuarding:Z

    return v0
.end method

.method private final isWidgetShouldShow(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/util/LongSparseArray;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "+",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "LayoutRestoreGuardian"

    if-eqz p0, :cond_6b

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_6b

    const/4 v2, 0x0

    if-eqz p3, :cond_26

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_27

    :cond_26
    move-object p0, v2

    :goto_27
    invoke-static {p0}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    :cond_38
    const/4 p3, 0x1

    if-eqz v2, :cond_4b

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, p3

    goto :goto_4c

    :cond_4b
    move p2, p3

    :goto_4c
    sget-boolean v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsSafeMode:Z

    if-nez v2, :cond_69

    if-nez p0, :cond_69

    if-nez p2, :cond_69

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can not find system validWidget: isProviderReady is false, item: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_69
    move v0, p3

    :goto_6a
    return v0

    :cond_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can not find system validWidget: component or appWidgetProvider is null, item: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->logAndStatist(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final queryCanPlaceSamePositionItems(Landroid/util/SparseArray;Ljava/util/HashMap;)Landroid/util/Pair;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_14
    const-string v8, "LayoutRestoreGuardian"

    if-ge v7, v5, :cond_103

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    :try_start_22
    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v10

    const/16 v11, -0x64

    const/4 v12, 0x1

    if-ne v10, v11, :cond_f1

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_54

    sget-object v10, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    if-eqz v10, :cond_54

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v13, Lcom/android/launcher3/util/LogableGridOccupancy;

    aget v14, v10, v6

    aget v10, v10, v12

    invoke-direct {v13, v14, v10}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-virtual {v2, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/LogableGridOccupancy;

    :cond_54
    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x2

    new-array v10, v10, [I

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v11, :cond_86

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v13

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v14

    invoke-virtual {v11, v10, v13, v14}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_87

    :cond_86
    const/4 v11, 0x0

    :goto_87
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f1

    aget v11, v10, v6

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v13

    if-ne v11, v13, :cond_f1

    aget v11, v10, v12

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v13

    if-ne v11, v13, :cond_f1

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v13, :cond_c5

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v14

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v15

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v16

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v17

    const/16 v18, 0x1

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_c5
    invoke-virtual {v3, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found space "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", screenId:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", item:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    :cond_f1
    move v12, v6

    :goto_f2
    if-nez v12, :cond_ff

    invoke-virtual {v4, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_f7} :catch_f8

    goto :goto_ff

    :catch_f8
    move-exception v0

    const-string/jumbo v9, "queryDbSamePositionItemIds e:"

    invoke-static {v9, v0, v8}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_ff
    :goto_ff
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_14

    :cond_103
    const-string/jumbo v0, "queryDbSamePositionItemIds canPlaceSamePositionItems.size: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notPlaceSamePositionItems.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final recoverLostDbLayout(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LayoutRestoreGuardian"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "restoreDataList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsRestoreGuarding:Z

    :try_start_12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_23

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_23
    new-instance p1, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {p1, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p1

    sput-object p1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverLostDbLayout mDatabaseModeLayout:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsSafeMode:Z

    new-instance p1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian$recoverLostDbLayout$1$1;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian$recoverLostDbLayout$1$1;-><init>(Ll4/d;)V

    invoke-static {v3, p1, v2, v3}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->SIMULATE_DB_OR_VIEW_LOSE:Z

    if-eqz p1, :cond_7a

    invoke-direct {v1}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->testRemovePackageInDb()V

    :cond_7a
    invoke-direct {v1, p0, p2}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->restoreLayoutStage1(Landroid/content/Context;Z)Lh4/j;
    :try_end_7d
    .catchall {:try_start_12 .. :try_end_7d} :catchall_7e

    return-void

    :catchall_7e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8a

    goto :goto_90

    :cond_8a
    const-string/jumbo p1, "recoverLostDbLayout e:"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_90
    return-void
.end method

.method public static final recoverLostViewLayout(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    sget-boolean v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->SIMULATE_DB_OR_VIEW_LOSE:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-direct {v1}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->testRemovePackageExceptDb()V

    :cond_f
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-direct {v1, p0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->restoreLayoutStage3(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    sput-object p0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object p0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mDatabaseModeLayout:[I

    sput-boolean v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsSafeMode:Z

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_25
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2c

    goto :goto_34

    :cond_2c
    const-string/jumbo v1, "recoverLostViewLayout e:"

    const-string v2, "LayoutRestoreGuardian"

    invoke-static {v1, p0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_34
    sput-boolean v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mIsRestoreGuarding:Z

    return-void
.end method

.method private final restoreLayoutStage1(Landroid/content/Context;Z)Lh4/j;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;>;"
        }
    .end annotation

    const-string p0, "LayoutRestoreGuardian"

    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->detectLostItems(Landroid/content/Context;Z)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    if-ne v4, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    if-eqz v2, :cond_65

    const-string/jumbo v2, "restoreLayoutStage1 reRestoreData!"

    invoke-static {p0, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    invoke-direct {v2}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;-><init>()V

    sput-object v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->stopCurrentLoadTask(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    if-eqz v2, :cond_35

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->setRestoreData(Ljava/util/List;)V

    :cond_35
    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->stopCurrentLoadTask(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    if-eqz v2, :cond_45

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoreStart(Landroid/content/Context;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_46

    :cond_45
    move-object p2, v0

    :goto_46
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->stopCurrentLoadTask(Landroid/content/Context;)V

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    if-eqz p2, :cond_58

    invoke-virtual {p2, p1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoring(Landroid/content/Context;)Z

    :cond_58
    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    if-eqz p2, :cond_5f

    invoke-virtual {p2, p1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoringComplete(Landroid/content/Context;)V

    :cond_5f
    new-instance p1, Lh4/j;

    invoke-direct {p1, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6c

    :cond_65
    new-instance p1, Lh4/j;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6d

    :goto_6c
    return-object p1

    :catchall_6d
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_79

    goto :goto_7f

    :cond_79
    const-string/jumbo p2, "restoreLayoutStage1 e:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7f
    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final restoreLayoutStage2(Landroid/content/Context;Landroid/util/SparseArray;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "LayoutRestoreGuardian"

    :try_start_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->detectLostItems(Landroid/content/Context;Z)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v3

    :goto_16
    if-ge v5, v4, :cond_28

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_28
    sget-object v4, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->statsRecoverLostItems(Landroid/content/Context;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-eqz p2, :cond_37

    move p2, v2

    goto :goto_38

    :cond_37
    move p2, v3

    :goto_38
    if-ne p2, v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    if-eqz v2, :cond_59

    const-string/jumbo p2, "restoreLayoutStage2 addLostItemsToDb!"

    invoke-static {p0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->stopCurrentLoadTask(Landroid/content/Context;)V

    invoke-direct {v4, p1, v1}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->addLostItemsToDb(Landroid/content/Context;Landroid/util/SparseArray;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->forceVerifyApplications(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->deleteInvalidDeepShortcuts(Landroid/content/Context;)V

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, p2}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->deleteInvalidApplications(Landroid/content/Context;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-direct {v4, p1, v1, p2}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->statsRecoverLostItems(Landroid/content/Context;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :cond_59
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_5c

    goto :goto_61

    :catchall_5c
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_61
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_68

    goto :goto_6e

    :cond_68
    const-string/jumbo p2, "restoreLayoutStage2 e:"

    invoke-static {p2, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method private final restoreLayoutStage3(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostAppsAndForceReload()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_1d

    :cond_15
    const-string/jumbo p1, "restoreLayoutStage3 e:"

    const-string v0, "LayoutRestoreGuardian"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method private final statsRecoverLostItems(Landroid/content/Context;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4b

    :try_start_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    move p0, v0

    :goto_c
    if-eqz p0, :cond_4b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_18
    if-ge v2, v1, :cond_29

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_45

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_34
    if-ge v0, v1, :cond_45

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_45
    invoke-interface {p0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p1, p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->statsAppRecoverWhenBackupRestore(Landroid/content/Context;Ljava/util/List;)V

    :cond_4b
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_4e

    goto :goto_53

    :catchall_4e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_53
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5a

    goto :goto_62

    :cond_5a
    const-string/jumbo p1, "statsRecoverLostItems e:"

    const-string p2, "LayoutRestoreGuardian"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_62
    return-void
.end method

.method private final testRemovePackageExceptDb()V
    .registers 5

    const-string p0, ""

    const-string v0, "com.heytap.yoli"

    const-string v1, "com.tencent.mm"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.youku.phone"

    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageExceptDb([Ljava/lang/String;)V

    return-void
.end method

.method private final testRemovePackageInDb()V
    .registers 5

    const-string p0, ""

    const-string v0, "com.heytap.yoli"

    const-string v1, "com.tencent.mm"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.youku.phone"

    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->testRemovePackageDb([Ljava/lang/String;)V

    return-void
.end method

.method public static final testSimulateLoseWhenGuard()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->SIMULATE_DB_OR_VIEW_LOSE:Z

    const-string v0, "LayoutRestoreGuardian"

    const-string/jumbo v1, "testSimulateLoseWhenGuard"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final updateBackupDataAddedCard(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LayoutRestoreGuardian"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "addedItems"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "AddCardManager"

    invoke-static {v1, p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_127

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    :try_start_2c
    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v4

    if-nez v4, :cond_10f

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    if-ne v4, p2, :cond_10f

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.util.SparseArray<java.util.ArrayList<com.android.launcher.backup.mode.BackupRestoreContract.BackupItemInfo>{ kotlin.collections.TypeAliasesKt.ArrayList<com.android.launcher.backup.mode.BackupRestoreContract.BackupItemInfo> }>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_112

    :try_start_57
    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;

    invoke-direct {v6, v5, p2, v1}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->generateBackupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/mode/LauncherMode;Ljava/util/Map;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v6

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x1

    if-eqz v5, :cond_d5

    if-eq v5, v7, :cond_c2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b0

    const/4 v7, 0x5

    if-eq v5, v7, :cond_9d

    const/4 v8, 0x6

    if-eq v5, v8, :cond_8b

    const/16 v8, 0x63

    if-eq v5, v8, :cond_9d

    const/16 v8, 0x64

    if-eq v5, v8, :cond_79

    sget-object v5, Lh4/z;->a:Lh4/z;

    goto/16 :goto_f0

    :cond_79
    invoke-static {p0, v7, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f0

    :cond_8b
    invoke-static {p0, v8, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f0

    :cond_9d
    const/4 v5, 0x4

    invoke-static {p0, v5, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f0

    :cond_b0
    invoke-static {p0, v7, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f0

    :cond_c2
    const/4 v5, 0x2

    invoke-static {p0, v5, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f0

    :cond_d5
    invoke-static {p0, v7, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_e9

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_e8
    .catchall {:try_start_57 .. :try_end_e8} :catchall_eb

    goto :goto_f0

    :cond_e9
    const/4 v5, 0x0

    goto :goto_f0

    :catchall_eb
    move-exception v5

    :try_start_ec
    invoke-static {v5}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    :goto_f0
    invoke-static {v5}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_f8

    goto/16 :goto_4b

    :cond_f8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateBackupDataAddedCard add failed, e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_10f
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_111
    .catchall {:try_start_ec .. :try_end_111} :catchall_112

    goto :goto_117

    :catchall_112
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_117
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_11f

    goto/16 :goto_20

    :cond_11f
    const-string/jumbo v4, "updateBackupDataAddedCard mode add failed, e:"

    invoke-static {v4, v3, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_127
    return-void
.end method

.method public static final updateBackupDataReplacedClock(ILjava/lang/String;ILjava/lang/String;ILcom/android/launcher/mode/LauncherMode;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LayoutRestoreGuardian"

    const-string/jumbo v1, "originClockProvider"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "replacedClockProvider"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->mRestoreDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_127

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    :try_start_28
    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v3

    if-nez v3, :cond_10f

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    if-ne v3, p5, :cond_10f

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v2

    const-string v3, "it.layoutMap"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    :goto_47
    if-ge v3, v4, :cond_10f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_112

    if-eqz v5, :cond_e7

    if-eqz v6, :cond_e7

    :try_start_57
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e7

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_6d
    .catchall {:try_start_57 .. :try_end_6d} :catchall_ea

    if-eqz v6, :cond_c1

    :try_start_6f
    instance-of v7, v6, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v7, :cond_c1

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_c1

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v7

    long-to-int v7, v7

    if-ne v7, p0, :cond_c1

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9e

    const-string v8, "appWidgetProvider"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9f

    :cond_9e
    const/4 v7, 0x0

    :goto_9f
    invoke-static {p1}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v7

    if-ne v7, p2, :cond_c1

    move-object v7, v6

    check-cast v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v7, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v6, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    :cond_c1
    sget-object v6, Lh4/z;->a:Lh4/z;
    :try_end_c3
    .catchall {:try_start_6f .. :try_end_c3} :catchall_c4

    goto :goto_c9

    :catchall_c4
    move-exception v6

    :try_start_c5
    invoke-static {v6}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :goto_c9
    invoke-static {v6}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_d0

    goto :goto_63

    :cond_d0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBackupDataReplacedClock replace failed, e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_e7
    sget-object v5, Lh4/z;->a:Lh4/z;
    :try_end_e9
    .catchall {:try_start_c5 .. :try_end_e9} :catchall_ea

    goto :goto_ef

    :catchall_ea
    move-exception v5

    :try_start_eb
    invoke-static {v5}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    :goto_ef
    invoke-static {v5}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_f6

    goto :goto_10b

    :cond_f6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateBackupDataReplacedClock mapKey replace failed, e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_47

    :cond_10f
    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_111
    .catchall {:try_start_eb .. :try_end_111} :catchall_112

    goto :goto_117

    :catchall_112
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_117
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_11f

    goto/16 :goto_1c

    :cond_11f
    const-string/jumbo v3, "updateBackupDataReplacedClock mode replace failed, e:"

    invoke-static {v3, v2, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_127
    return-void
.end method
