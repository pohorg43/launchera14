.class public final Lcom/android/launcher/backup/util/LauncherDBUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherDBUtils.kt\ncom/android/launcher/backup/util/LauncherDBUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,675:1\n37#2,2:676\n37#2,2:683\n1#3:678\n1855#4,2:679\n1855#4,2:681\n1855#4,2:689\n76#5,4:685\n*S KotlinDebug\n*F\n+ 1 LauncherDBUtils.kt\ncom/android/launcher/backup/util/LauncherDBUtils\n*L\n107#1:676,2\n646#1:683,2\n536#1:679,2\n633#1:681,2\n489#1:689,2\n451#1:685,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/util/LauncherDBUtils;

.field private static final MY_USER_HANDLE:I = 0x0

.field private static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PRIMARY_PROFILE_ID:J

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/LauncherDBUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/LauncherDBUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/LauncherDBUtils;->INSTANCE:Lcom/android/launcher/backup/util/LauncherDBUtils;

    const-string v0, "BR-Launcher_LauncherDBUtils"

    sput-object v0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbExistItemApps$lambda$6$lambda$5(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getSpecialItemInfoDbData$lambda$2(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbDesktopItemPositions$lambda$19(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V

    return-void
.end method

.method public static final clearEmptyTableIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher/mode/LauncherModeManager;->launcherMode2Type(Lcom/android/launcher/mode/LauncherMode;)I

    move-result p1

    const-string v1, "launcher_mode_vaule"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "clear_specific_empty_table_flag"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final createTableIfNotExist(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher/mode/LauncherModeManager;->launcherMode2Type(Lcom/android/launcher/mode/LauncherMode;)I

    move-result p1

    const-string v1, "launcher_mode_vaule"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "create_specific_table"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteItem$lambda$31(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static final deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result p0

    return p0
.end method

.method public static final deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/util/k0;

    invoke-direct {v2, p2, p0, p1, v0}, Lcom/android/common/util/k0;-><init>(ZLandroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method private static final deleteDataInTable$lambda$0(ZLandroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 12

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    :try_start_13
    invoke-static {p1, p2}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_6a

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_70
    .catchall {:try_start_13 .. :try_end_26} :catchall_6e

    if-eqz p0, :cond_69

    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ge p1, v2, :cond_69

    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDataInTable: failed: uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", count: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", deleteCount: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_60} :catch_65
    .catchall {:try_start_28 .. :try_end_60} :catchall_61

    goto :goto_69

    :catchall_61
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_8b

    :catch_65
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_71

    :cond_69
    :goto_69
    move-object v1, p0

    :cond_6a
    :goto_6a
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8a

    :catchall_6e
    move-exception p0

    goto :goto_8b

    :catch_70
    move-exception p0

    :goto_71
    :try_start_71
    iput-boolean v0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteDataInTable exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_6e

    goto :goto_6a

    :goto_8a
    return-void

    :goto_8b
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static final deleteItem(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/debug/c;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/android/common/debug/c;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    move-result p0

    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string p2, "deleteItem: executeResult: "

    const-string v1, ", deleteId: "

    invoke-static {p2, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0, p2, p1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method private static final deleteItem$lambda$31(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "$deleteId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selectionArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_28
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_36

    :cond_2f
    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string p2, "deleteItem e:"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method private static final deleteTableContent(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getScreenContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getNoNotifyUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "screenUri"

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string/jumbo p1, "recommendMarketInfoUri"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_35
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :goto_46
    return v2
.end method

.method public static final deleteTableContentIfExist(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->createTableIfNotExist(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTableContentIfExist: No target table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", created "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_38
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteTableContent(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    if-nez p0, :cond_5b

    sget-object p0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTableContentIfExist: Delete table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic e(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbExistItemIds$lambda$12$lambda$11(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getScreenInfoDbData$lambda$1(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g(ZLandroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable$lambda$0(ZLandroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static final getLostAppItemIds(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")[I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "_id"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lostDbAppItems"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    return-object v2

    :cond_1a
    invoke-static {p0, p2}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const-string v9, "ViewLostCheck: get "

    if-eqz v1, :cond_13a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "?"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4f
    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " lostItemIds:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", parameters:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a7} :catch_112
    .catchall {:try_start_73 .. :try_end_a7} :catchall_110

    if-eqz p0, :cond_f8

    :try_start_a9
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_b8
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    :cond_ca
    invoke-static {v0}, Li4/v;->g0(Ljava/util/Collection;)[I

    move-result-object p1

    sget-object v0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_f2} :catch_f6
    .catchall {:try_start_a9 .. :try_end_f2} :catchall_134

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catch_f6
    move-exception p1

    goto :goto_114

    :cond_f8
    :try_start_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " lostItemIds failed, cursor is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_10f} :catch_f6
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_134

    goto :goto_130

    :catchall_110
    move-exception p1

    goto :goto_136

    :catch_112
    move-exception p1

    move-object p0, v2

    :goto_114
    :try_start_114
    sget-object v0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " lostItemIds failed, e: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_114 .. :try_end_130} :catchall_134

    :goto_130
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_134
    move-exception p1

    move-object v2, p0

    :goto_136
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_13a
    sget-object p0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " lostItemIds failed, db not exist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getNoNotifyUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.android.launcher.settings/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?notify=false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo p1, "parse(\"content://\" + Lau…AMETER_NOTIFY + \"=false\")"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getProfileId(Landroid/content/Context;)J
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result p0

    if-nez p0, :cond_1c

    const-wide/16 v0, 0x0

    :cond_1c
    return-wide v0
.end method

.method public static final getScreenInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lw/b;

    const/4 v9, 0x1

    move-object v1, v11

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lw/b;-><init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v10, v11, v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private static final getScreenInfoDbData$lambda$1(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    const-string v1, "$context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$targetMode"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$screenInfoDbList"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getScreenContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v15, 0x0

    :try_start_20
    new-instance v16, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v1, "context.contentResolver.…                        )"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z[Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_68
    .catchall {:try_start_20 .. :try_end_43} :catchall_66

    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getMDDatabaseScreenInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getMDDatabaseScreenInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_59} :catch_62
    .catchall {:try_start_43 .. :try_end_59} :catchall_5e

    goto :goto_43

    :cond_5a
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8a

    :catchall_5e
    move-exception v0

    move-object/from16 v15, v16

    goto :goto_86

    :catch_62
    move-exception v0

    move-object/from16 v15, v16

    goto :goto_69

    :catchall_66
    move-exception v0

    goto :goto_86

    :catch_68
    move-exception v0

    :goto_69
    :try_start_69
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getScreenInfoDbData false, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_66

    invoke-static {v15}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8a

    :goto_86
    invoke-static {v15}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static final getSpecialItemInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lw/b;

    const/4 v9, 0x0

    move-object v1, v11

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lw/b;-><init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v10, v11, v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private static final getSpecialItemInfoDbData$lambda$2(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    const-string v1, "$context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$targetMode"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$itemInfoDbList"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v15, 0x0

    :try_start_20
    new-instance v16, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v1, "context.contentResolver.…                        )"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v1, v16

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z[Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_68
    .catchall {:try_start_20 .. :try_end_43} :catchall_66

    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getMDDatabaseItemInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getMDDatabaseItemInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_59} :catch_62
    .catchall {:try_start_43 .. :try_end_59} :catchall_5e

    goto :goto_43

    :cond_5a
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8a

    :catchall_5e
    move-exception v0

    move-object/from16 v15, v16

    goto :goto_86

    :catch_62
    move-exception v0

    move-object/from16 v15, v16

    goto :goto_69

    :catchall_66
    move-exception v0

    goto :goto_86

    :catch_68
    move-exception v0

    :goto_69
    :try_start_69
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getSpecialItemInfoDbData false, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_66

    invoke-static {v15}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8a

    :goto_86
    invoke-static {v15}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static final getTableAppWidgetIds(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)[I
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appWidgetId"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v8, 0x0

    const-string/jumbo v9, "onRestoring: get "

    if-eqz v1, :cond_13b

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    if-eqz v1, :cond_13a

    array-length v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2d

    move v2, v4

    goto :goto_2e

    :cond_2d
    move v2, v5

    :goto_2e
    xor-int/2addr v2, v4

    if-eqz v2, :cond_13a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v1

    move v7, v5

    :goto_3d
    if-ge v7, v6, :cond_50

    aget v10, v1, v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "?"

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_50
    sget-object v10, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onRestoring: get all widgets in widgetHost:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "toString(this)"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appWidgetId in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ac} :catch_110
    .catchall {:try_start_75 .. :try_end_ac} :catchall_10e

    if-eqz p0, :cond_f4

    :try_start_ae
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    :cond_c9
    invoke-static {v1}, Li4/v;->g0(Ljava/util/Collection;)[I

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " widgets in widgetHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_f0} :catch_10c
    .catchall {:try_start_ae .. :try_end_f0} :catchall_133

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :cond_f4
    :try_start_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " widgets in widgetHost failed, cursor is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_10b} :catch_10c
    .catchall {:try_start_f4 .. :try_end_10b} :catchall_133

    goto :goto_12f

    :catch_10c
    move-exception v0

    goto :goto_113

    :catchall_10e
    move-exception p0

    goto :goto_136

    :catch_110
    move-exception p0

    move-object v0, p0

    move-object p0, v8

    :goto_113
    :try_start_113
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " widgets in widgetHost failed, e: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catchall {:try_start_113 .. :try_end_12f} :catchall_133

    :goto_12f
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_13a

    :catchall_133
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    :goto_136
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_13a
    :goto_13a
    return-object v8

    :cond_13b
    sget-object p0, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " widgets in widgetHost failed, db not exist!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static final queryDbDesktopItemPositions(Landroid/content/Context;[IZ)Lh4/o;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[IZ)",
            "Lh4/o<",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;",
            "Lh4/j<",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v3, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sget-object v12, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v13, Lw/c;

    move-object v1, v13

    move-object v2, v0

    move-object v4, v10

    move-object v5, v9

    move-object v6, p1

    move-object v7, v11

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lw/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v12, v13, v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryDbDesktopItemPositions: executeResult: "

    const-string v4, ", orderedScreenIds.size:"

    invoke-static {v3, v1, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", allDesktopOccupiedMap.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hotseatContentItems.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", allFolderOccupiedMap.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lh4/o;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lh4/j;

    invoke-direct {v2, v10, v11}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v9, v2}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static synthetic queryDbDesktopItemPositions$default(Landroid/content/Context;[IZILjava/lang/Object;)Lh4/o;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDbDesktopItemPositions(Landroid/content/Context;[IZ)Lh4/o;

    move-result-object p0

    return-object p0
.end method

.method private static final queryDbDesktopItemPositions$lambda$19(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V
    .registers 15

    const-string/jumbo v0, "queryDbDesktopItemPositions e:"

    const-string v1, "$orderedScreenIds"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$allHotseatItemList"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$allDesktopOccupiedMap"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$allFolderOccupiedMap"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1c
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    const-string v2, "loadWorkspaceScreensDb(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_92

    :try_start_39
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_65
    .catchall {:try_start_39 .. :try_end_3d} :catchall_92

    const-string/jumbo v3, "screen"

    if-nez v2, :cond_55

    if-eqz p4, :cond_55

    :try_start_44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/util/LogableGridOccupancy;

    const/4 v4, 0x0

    aget v4, p4, v4

    const/4 v5, 0x1

    aget v5, p4, v5

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDesktopAndFolderScreenItems(Landroid/content/Context;I[ILjava/util/HashMap;Ljava/util/HashMap;Z)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_64} :catch_65
    .catchall {:try_start_44 .. :try_end_64} :catchall_92

    goto :goto_2d

    :catch_65
    move-exception v1

    :try_start_66
    sget-object v2, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_7b
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/16 p0, -0x65

    const/4 p3, -0x1

    invoke-static {p1, p0, p3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->querySpecificScreenItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_90

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_92

    goto :goto_97

    :cond_90
    const/4 p0, 0x0

    goto :goto_97

    :catchall_92
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_97
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9e

    goto :goto_a3

    :cond_9e
    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_a3
    return-void
.end method

.method public static final queryDbExistItemApps(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_a
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v2, p0, v0}, Landroidx/constraintlayout/motion/widget/c;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2d

    :cond_25
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryDbExistItemApps e:"

    invoke-static {v2, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2d
    return-object v0
.end method

.method private static final queryDbExistItemApps$lambda$6$lambda$5(Landroid/content/Context;Ljava/util/Map;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "$context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemApps"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    const-string/jumbo v7, "title"

    const-string v8, "intent"

    const-string v9, "container"

    const-string/jumbo v10, "screen"

    const-string v11, "cellX"

    const-string v12, "cellY"

    const-string v13, "itemType"

    const-string v14, "iconPackage"

    const-string v15, "iconResource"

    const-string/jumbo v16, "restored"

    const-string/jumbo v17, "profileId"

    const-string/jumbo v18, "user_id"

    const-string/jumbo v19, "rank"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "itemType = ?"

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_1fc
    .catchall {:try_start_e .. :try_end_47} :catchall_1f9

    if-eqz v4, :cond_1f5

    :try_start_49
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1f5

    :goto_4f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_1f2
    .catchall {:try_start_49 .. :try_end_53} :catchall_1ef

    if-eqz v0, :cond_1f5

    :try_start_55
    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "intent"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "container"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v7, "screen"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v7, "cellX"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v7, "cellY"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v7, "itemType"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v7, "iconPackage"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v7, "iconResource"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v7, "restored"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v7, "profileId"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v3, "user_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_dc
    .catchall {:try_start_55 .. :try_end_dc} :catchall_1c9

    :try_start_dc
    const-string/jumbo v2, "rank"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static {v0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v16, v14

    move/from16 v19, v15

    goto :goto_fb

    :cond_f6
    move-object/from16 v16, v14

    move/from16 v19, v15

    const/4 v2, 0x0

    :goto_fb
    int-to-long v14, v7

    invoke-static {v1, v14, v15, v3}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->getUserHandle(Landroid/content/Context;JI)Landroid/os/UserHandle;

    move-result-object v3

    move-object v7, v0

    move-object/from16 v14, v16

    move/from16 v15, v19

    move-object/from16 v16, v3

    invoke-static/range {v5 .. v17}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->generateDbAppInfo(ILjava/lang/String;Landroid/content/Intent;IIIIILjava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    if-nez v2, :cond_116

    if-eqz v0, :cond_114

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_11a

    :cond_114
    const/4 v0, 0x0

    goto :goto_11a

    :cond_116
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_11a
    if-eqz v0, :cond_16e

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v6

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v6, v0, v3, v7}, Lcom/android/launcher3/OplusAppFilter;->shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v6

    if-nez v6, :cond_16e

    const-string v6, ""

    if-eqz v2, :cond_13c

    if-eqz v3, :cond_13c

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "newInstance(context).getNotShowReason(cn, user)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13c
    sget-object v2, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryDbExistItemApps failed, app should not show, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", pkg:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", user:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reason:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_dc .. :try_end_16b} :catchall_1c5

    move-object/from16 v2, p1

    goto :goto_1c2

    :cond_16e
    const-string/jumbo v0, "queryDbExistItemApps failed, new:"

    if-eqz v2, :cond_1a7

    if-eqz v3, :cond_1a7

    :try_start_175
    new-instance v6, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-direct {v6, v2, v3}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_17a
    .catchall {:try_start_175 .. :try_end_17a} :catchall_1c5

    move-object/from16 v2, p1

    :try_start_17c
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_186

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c2

    :cond_186
    sget-object v3, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; same as old:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c2

    :cond_1a7
    move-object/from16 v2, p1

    sget-object v3, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; cn or user is null"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c2
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_1c4
    .catchall {:try_start_17c .. :try_end_1c4} :catchall_1c9

    goto :goto_1ce

    :catchall_1c5
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_1ca

    :catchall_1c9
    move-exception v0

    :goto_1ca
    :try_start_1ca
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1ce
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1d6

    goto/16 :goto_4f

    :cond_1d6
    sget-object v3, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryDbExistItemApps item e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1ed} :catch_1f2
    .catchall {:try_start_1ca .. :try_end_1ed} :catchall_1ef

    goto/16 :goto_4f

    :catchall_1ef
    move-exception v0

    move-object v3, v4

    goto :goto_21a

    :catch_1f2
    move-exception v0

    move-object v3, v4

    goto :goto_1fe

    :cond_1f5
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_218

    :catchall_1f9
    move-exception v0

    const/4 v3, 0x0

    goto :goto_21a

    :catch_1fc
    move-exception v0

    const/4 v3, 0x0

    :goto_1fe
    :try_start_1fe
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryDbExistItemApps false, e: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_215
    .catchall {:try_start_1fe .. :try_end_215} :catchall_219

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_218
    return-void

    :catchall_219
    move-exception v0

    :goto_21a
    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final queryDbExistItemIds(Landroid/content/Context;Landroid/util/SparseArray;)Lcom/android/launcher3/util/IntArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)",
            "Lcom/android/launcher3/util/IntArray;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allNeedCheckItemMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    :try_start_f
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/exceptionmonitor/util/b;-><init>(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_23
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_32

    :cond_2a
    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryDbExistItemIds e:"

    invoke-static {v1, p0, p1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_32
    return-object v0
.end method

.method private static final queryDbExistItemIds$lambda$12$lambda$11(Landroid/content/Context;Landroid/util/SparseArray;Lcom/android/launcher3/util/IntArray;)V
    .registers 22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "$context"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$allNeedCheckItemMap"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemIds"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string/jumbo v8, "title"

    const-string v9, "intent"

    const-string v10, "itemType"

    const-string v11, "appWidgetProvider"

    const-string v12, "card_type"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_f3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f3

    :cond_3c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "intent"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v0, "itemType"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v0, "appWidgetProvider"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "card_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v10, v0

    :goto_85
    if-ge v10, v11, :cond_3c

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_91} :catch_db
    .catchall {:try_start_16 .. :try_end_91} :catchall_d9

    :try_start_91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_ad

    move-object v7, v12

    move-object v8, v13

    move v9, v14

    move/from16 v17, v10

    move-object v10, v15

    move/from16 v18, v11

    move/from16 v11, v16

    :try_start_9f
    invoke-static/range {v5 .. v11}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isDbHasTargetItem(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_a8
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_aa
    .catchall {:try_start_9f .. :try_end_aa} :catchall_ab

    goto :goto_b6

    :catchall_ab
    move-exception v0

    goto :goto_b2

    :catchall_ad
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    :goto_b2
    :try_start_b2
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_b6
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_bd

    goto :goto_d4

    :cond_bd
    sget-object v5, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryDbExistItemIds item e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d4} :catch_db
    .catchall {:try_start_b2 .. :try_end_d4} :catchall_d9

    :goto_d4
    add-int/lit8 v10, v17, 0x1

    move/from16 v11, v18

    goto :goto_85

    :catchall_d9
    move-exception v0

    goto :goto_f7

    :catch_db
    move-exception v0

    :try_start_dc
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDbExistItemIds false, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_dc .. :try_end_f3} :catchall_d9

    :cond_f3
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_f7
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static final queryDesktopAndFolderScreenItems(Landroid/content/Context;I[ILjava/util/HashMap;Ljava/util/HashMap;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, -0x64

    :try_start_2
    invoke-static {p0, v0, p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->querySpecificScreenItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_af

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_b1

    :try_start_18
    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3e

    if-eqz p2, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/util/LogableGridOccupancy;

    aget v4, p2, v2

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v3, :cond_67

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v0, p5}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    :cond_67
    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_83

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v1

    invoke-static {p0, v1, v2}, Lcom/android/launcher/backup/util/LauncherDBUtils;->querySpecificScreenItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-virtual {v0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_85
    .catchall {:try_start_18 .. :try_end_85} :catchall_86

    goto :goto_8b

    :catchall_86
    move-exception v0

    :try_start_87
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_8b
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_93

    goto/16 :goto_c

    :cond_93
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDesktopAndFolderScreenItems item e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_ac
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_ae
    .catchall {:try_start_87 .. :try_end_ae} :catchall_b1

    goto :goto_b6

    :cond_af
    const/4 p0, 0x0

    goto :goto_b6

    :catchall_b1
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b6
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_bd

    goto :goto_c5

    :cond_bd
    sget-object p1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "queryDesktopAndFolderScreenItems e:"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_c5
    return-void
.end method

.method public static synthetic queryDesktopAndFolderScreenItems$default(Landroid/content/Context;I[ILjava/util/HashMap;Ljava/util/HashMap;ZILjava/lang/Object;)V
    .registers 14

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/util/LauncherDBUtils;->queryDesktopAndFolderScreenItems(Landroid/content/Context;I[ILjava/util/HashMap;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static final querySpecificScreenItems(Landroid/content/Context;II)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v0, p1

    const-string v1, "context"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, -0x65

    if-eq v0, v1, :cond_2d

    if-lez v0, :cond_10

    goto :goto_2d

    :cond_10
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    :cond_2d
    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3e
    move-object v5, v3

    if-lez v0, :cond_45

    const-string/jumbo v0, "rank"

    goto :goto_4d

    :cond_45
    if-ne v0, v1, :cond_4b

    const-string/jumbo v0, "screen"

    goto :goto_4d

    :cond_4b
    const-string v0, "cellY, cellX"

    :goto_4d
    move-object v7, v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    const-string/jumbo v0, "targetMode"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "_id"

    const-string/jumbo v9, "title"

    const-string/jumbo v10, "screen"

    const-string v11, "cellX"

    const-string v12, "cellY"

    const-string/jumbo v13, "spanX"

    const-string/jumbo v14, "spanY"

    const-string v15, "itemType"

    const-string v16, "card_type"

    const-string v17, "appWidgetProvider"

    const-string v18, "appWidgetId"

    const-string v19, "intent"

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getSpecialItemInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_83
    .catchall {:try_start_10 .. :try_end_83} :catchall_84

    return-object v0

    :catchall_84
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_90

    goto :goto_98

    :cond_90
    sget-object v1, Lcom/android/launcher/backup/util/LauncherDBUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "querySpecificScreenItems e:"

    invoke-static {v2, v0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_98
    const/4 v0, 0x0

    return-object v0
.end method
