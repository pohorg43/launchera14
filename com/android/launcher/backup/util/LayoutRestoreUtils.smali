.class public final Lcom/android/launcher/backup/util/LayoutRestoreUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayoutRestoreUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutRestoreUtils.kt\ncom/android/launcher/backup/util/LayoutRestoreUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,837:1\n1855#2:838\n1855#2:841\n1856#2:843\n1856#2:845\n1045#2:846\n1855#2,2:847\n1855#2,2:849\n1855#2,2:851\n1045#2:853\n1855#2,2:854\n1855#2,2:856\n1855#2,2:858\n1855#2,2:860\n1855#2,2:862\n1045#2:864\n1855#2,2:865\n1855#2,2:867\n1855#2,2:869\n76#3,2:839\n79#3:844\n1#4:842\n*S KotlinDebug\n*F\n+ 1 LayoutRestoreUtils.kt\ncom/android/launcher/backup/util/LayoutRestoreUtils\n*L\n301#1:838\n314#1:841\n314#1:843\n301#1:845\n378#1:846\n378#1:847,2\n398#1:849,2\n407#1:851,2\n453#1:853\n453#1:854,2\n482#1:856,2\n491#1:858,2\n548#1:860,2\n550#1:862,2\n597#1:864\n597#1:865,2\n619#1:867,2\n628#1:869,2\n310#1:839,2\n310#1:844\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/util/LayoutRestoreUtils;

.field private static final TAG:Ljava/lang/String;

.field private static final URI_NEW_INSTALL_CONTENT:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->INSTANCE:Lcom/android/launcher/backup/util/LayoutRestoreUtils;

    const-string v0, "BR-Launcher_LayoutRestoreUtils"

    sput-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string v0, "content://com.android.launcher.settings/newinstall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->URI_NEW_INSTALL_CONTENT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->stopCurrentLoadTask$lambda$0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static final clearAllWidgetsInWidgetHost(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object p0

    if-eqz p0, :cond_2e

    sget-object v1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRestoreStart: clearAllWidgetsInWidgetHost, ids: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_24
    if-ge v1, v2, :cond_2e

    aget v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method

.method public static final clearTargetModeWidgetsInWidgetHost(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_47

    array-length p0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_19

    move p0, v2

    goto :goto_1a

    :cond_19
    move p0, v1

    :goto_1a
    xor-int/2addr p0, v2

    if-eqz p0, :cond_47

    sget-object p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRestoring: clear "

    const-string v3, " widgets in widgetHost, ids: "

    invoke-static {v2, p1, v3}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length p0, p2

    :goto_3d
    if-ge v1, p0, :cond_47

    aget p1, p2, v1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_47
    return-void
.end method

.method public static final deleteDataInTableNewInstall(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestoreStart: deleteDataInTableNewInstall, url: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->URI_NEW_INSTALL_CONTENT:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "URI_NEW_INSTALL_CONTENT"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteDataInTable(Landroid/content/Context;Landroid/net/Uri;Z)Z

    return-void
.end method

.method public static final filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;[I)Z

    move-result p0

    return p0
.end method

.method public static final filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;[I)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkLayoutMapEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "filter: Mode:"

    if-eqz v0, :cond_28

    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " true, No layoutMap data!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_28
    invoke-static {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->isLayoutMapContentEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " true, layoutMap\'s content is empty!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_48
    if-nez p1, :cond_50

    invoke-static {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkModeLayoutParameterEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v0

    if-nez v0, :cond_58

    :cond_50
    if-eqz p1, :cond_75

    invoke-static {p0, p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkModeLayoutParameterEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;[I)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_58
    sget-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " true, layoutMap\'s Parameter is empty! cellXY:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method private static final getDefaultAndSupportMode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/LauncherMode;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_16

    :cond_b
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_16

    :cond_14
    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    :goto_16
    if-eq v0, p0, :cond_19

    goto :goto_26

    :cond_19
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const-string p0, "getInstance().curLauncherMode"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_26
    return-object v0
.end method

.method public static final getDefaultAndSupportModeWhenNotSupportInLocal(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/LauncherMode;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "restoreMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->isOriginalRestoreModeNotSupportInLocal(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDefaultAndSupportMode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoring: getDefaultAndSupportModeWhenNotSupportInLocal, current OS not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " mode, compat to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_30
    return-object p0
.end method

.method private static final getDesensitizationKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Z)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_7
    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoShortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "***"

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_32
    return-object p1
.end method

.method public static final getDesensitizationKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_c
    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoShortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    const-string p1, "***"

    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_37
    return-object p1
.end method

.method private static final getDesensitizationKey(Lcom/android/launcher3/model/data/ItemInfo;Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_7
    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoShortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "***"

    :cond_13
    :goto_13
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public static synthetic getDesensitizationKey$default(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDesensitizationKey$default(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDesensitizationKey$default(Lcom/android/launcher3/model/data/ItemInfo;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher3/model/data/ItemInfo;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getItemInfoKey(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p2, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_e7

    const/16 p4, 0x64

    if-eq p2, p4, :cond_c2

    if-eqz p6, :cond_21

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1c

    move p2, v1

    goto :goto_1d

    :cond_1c
    move p2, v2

    :goto_1d
    if-ne p2, v1, :cond_21

    move p2, v1

    goto :goto_22

    :cond_21
    move p2, v2

    :goto_22
    const/4 p3, 0x0

    if-eqz p2, :cond_3e

    if-eqz p7, :cond_34

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2f

    move p2, v1

    goto :goto_30

    :cond_2f
    move p2, v2

    :goto_30
    if-ne p2, v1, :cond_34

    move p2, v1

    goto :goto_35

    :cond_34
    move p2, v2

    :goto_35
    if-eqz p2, :cond_3e

    const/16 p2, 0x2f

    invoke-static {p6, p2, p7}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6d

    :cond_3e
    if-eqz p6, :cond_4d

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_48

    move p2, v1

    goto :goto_49

    :cond_48
    move p2, v2

    :goto_49
    if-ne p2, v1, :cond_4d

    move p2, v1

    goto :goto_4e

    :cond_4d
    move p2, v2

    :goto_4e
    if-eqz p2, :cond_55

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6d

    :cond_55
    if-eqz p7, :cond_64

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_5f

    move p2, v1

    goto :goto_60

    :cond_5f
    move p2, v2

    :goto_60
    if-ne p2, v1, :cond_64

    move p2, v1

    goto :goto_65

    :cond_64
    move p2, v2

    :goto_65
    if-eqz p2, :cond_6c

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6d

    :cond_6c
    move-object p2, p3

    :goto_6d
    if-eqz p8, :cond_7f

    invoke-static {p8}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    if-eqz p4, :cond_7f

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    if-eqz p4, :cond_7f

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    :cond_7f
    if-eqz p1, :cond_8e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_89

    move p4, v1

    goto :goto_8a

    :cond_89
    move p4, v2

    :goto_8a
    if-ne p4, v1, :cond_8e

    move p4, v1

    goto :goto_8f

    :cond_8e
    move p4, v2

    :goto_8f
    if-eqz p4, :cond_93

    goto/16 :goto_11e

    :cond_93
    if-eqz p2, :cond_a2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9d

    move p1, v1

    goto :goto_9e

    :cond_9d
    move p1, v2

    :goto_9e
    if-ne p1, v1, :cond_a2

    move p1, v1

    goto :goto_a3

    :cond_a2
    move p1, v2

    :goto_a3
    if-eqz p1, :cond_a8

    move-object p1, p2

    goto/16 :goto_11e

    :cond_a8
    if-eqz p3, :cond_b6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b2

    move p1, v1

    goto :goto_b3

    :cond_b2
    move p1, v2

    :goto_b3
    if-ne p1, v1, :cond_b6

    goto :goto_b7

    :cond_b6
    move v1, v2

    :goto_b7
    if-eqz v1, :cond_bc

    move-object p1, p3

    goto/16 :goto_11e

    :cond_bc
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_11e

    :cond_c2
    if-eqz p1, :cond_d0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_cc

    move p0, v1

    goto :goto_cd

    :cond_cc
    move p0, v2

    :goto_cd
    if-ne p0, v1, :cond_d0

    goto :goto_d1

    :cond_d0
    move v1, v2

    :goto_d1
    if-eqz v1, :cond_d4

    goto :goto_11e

    :cond_d4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11e

    :cond_e7
    if-eqz p1, :cond_f6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_f1

    move p0, v1

    goto :goto_f2

    :cond_f1
    move p0, v2

    :goto_f2
    if-ne p0, v1, :cond_f6

    move p0, v1

    goto :goto_f7

    :cond_f6
    move p0, v2

    :goto_f7
    if-eqz p0, :cond_fa

    goto :goto_11e

    :cond_fa
    if-eqz p4, :cond_108

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_104

    move p0, v1

    goto :goto_105

    :cond_104
    move p0, v2

    :goto_105
    if-ne p0, v1, :cond_108

    goto :goto_109

    :cond_108
    move v1, v2

    :goto_109
    if-eqz v1, :cond_10d

    move-object p1, p4

    goto :goto_11e

    :cond_10d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "id:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_11e
    return-object p1
.end method

.method private static final getItemInfoKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v0

    long-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getItemInfoKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Ljava/lang/String;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIntent()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getItemInfoKey(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    goto :goto_61

    :cond_15
    instance-of v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_37

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_29

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, v1

    :goto_2a
    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    move-object v7, v1

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v8, v2

    goto :goto_61

    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_42
    move-object v0, v1

    :goto_43
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    move-object v2, v1

    :goto_4f
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    :cond_5a
    move-object v3, v1

    :goto_5b
    move-object v10, v0

    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    move-object v11, v2

    move-object v12, v3

    :goto_61
    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6c

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_6c
    move-object v5, v1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v4 .. v12}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getItemInfoKey(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getItemInfoShortKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_53

    :try_start_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    if-eqz v0, :cond_53

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    div-int/lit8 v2, v0, 0x2

    if-gez v2, :cond_1f

    move v2, v1

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v2

    sub-int/2addr v3, v0

    if-gez v3, :cond_28

    goto :goto_34

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v3, v0, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    const-string v0, "*"

    invoke-static {p0, v2, v1, v0}, Lk7/q;->K(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_3f

    goto :goto_53

    :catchall_3f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4b

    goto :goto_52

    :cond_4b
    sget-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "getItemInfoShortKey e:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_52
    const/4 p0, 0x0

    :cond_53
    :goto_53
    return-object p0
.end method

.method public static final getNewDrawerAndStandardSettingLayout(Lcom/android/launcher/backup/mode/BackupDataModel;)[I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object p0

    if-nez p0, :cond_13

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseDeviceLayoutParameter(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object p0

    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    aput p0, v0, v1

    return-object v0
.end method

.method public static final getRestoreModesExceptSimple(Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/mode/LauncherMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "currentMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq p0, v1, :cond_23

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v1, :cond_1b

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_1b
    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v2, :cond_2d

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_23
    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static final getTargetModeLayout(Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/mode/LauncherMode;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[I>;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")[I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_25

    new-instance p1, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {p1, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    const-string/jumbo p1, "{\n            AbsLaunche…deLayoutSetting\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_46

    :cond_25
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_3f

    new-instance p1, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {p1, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    goto :goto_40

    :cond_3f
    move-object p0, p1

    :goto_40
    const-string/jumbo p1, "{\n            databaseMo…deLayoutSetting\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_46
    return-object p0
.end method

.method private static final isOriginalRestoreModeNotSupportInLocal(Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_a

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_a
    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {p0}, Lcom/android/common/config/FeatureOption;->isSupportDrawerModeLauncher()Z

    move-result p0

    if-nez p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static final notifyChangeSimpleModeStateIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "restoreMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_29

    if-eq p2, v0, :cond_29

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRestoring: notifySceneModeToChangeState true, current support simple"

    invoke-static {p1, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v1}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;ZZ)V

    goto :goto_39

    :cond_29
    if-eq p1, v0, :cond_39

    if-ne p2, v0, :cond_39

    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRestoring: notifySceneModeToChangeState false, restoreMode is not simple"

    invoke-static {p1, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;ZZ)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static final recordBackupXmlDesktopItemPositions(Ljava/util/concurrent/CopyOnWriteArrayList;Z)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "*>;Z)",
            "Ljava/util/List<",
            "Lh4/o<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;",
            "Lh4/j<",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;>;>;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupDataModelList"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_c
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_222

    if-eqz v3, :cond_217

    :try_start_1c
    instance-of v0, v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    if-eqz v0, :cond_217

    move-object v0, v3

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    move-object v4, v3

    check-cast v4, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-static {v4}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getNewDrawerAndStandardSettingLayout(Lcom/android/launcher/backup/mode/BackupDataModel;)[I

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->filterInvalidBackupDataModel(Lcom/android/launcher/backup/mode/BackupDataModel;[I)Z

    move-result v0

    if-nez v0, :cond_217

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v8

    const-string v0, "it.layoutMap"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v10, v0

    :goto_58
    if-ge v10, v9, :cond_1c6

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_64} :catch_1fa
    .catchall {:try_start_1c .. :try_end_64} :catchall_222

    if-eqz v11, :cond_196

    if-eqz v0, :cond_196

    :try_start_68
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_196

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_74
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_196

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_190

    if-eqz v0, :cond_162

    :try_start_80
    instance-of v13, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v13, :cond_162

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    move-object v14, v0

    check-cast v14, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-static {v13, v11, v14}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v13

    const/16 v14, -0x64

    if-ne v13, v14, :cond_110

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_cc

    if-eqz v7, :cond_cc

    const-string/jumbo v13, "modeLayoutParameter"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/android/launcher3/util/LogableGridOccupancy;

    iget v15, v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I
    :try_end_c1
    .catchall {:try_start_80 .. :try_end_c1} :catchall_15e

    move-object/from16 p0, v1

    :try_start_c3
    iget v1, v7, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    invoke-direct {v14, v15, v1}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ce

    :cond_cc
    move-object/from16 p0, v1

    :goto_ce
    move-object v1, v0

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v13, :cond_164

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v14

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v15

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v16

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v17

    const/16 v18, 0x1

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    :try_end_102
    .catchall {:try_start_c3 .. :try_end_102} :catchall_10c

    move/from16 v1, p1

    :try_start_104
    invoke-static {v0, v1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    goto :goto_166

    :catchall_10c
    move-exception v0

    :goto_10d
    move/from16 v1, p1

    goto :goto_16a

    :cond_110
    move-object/from16 p0, v1

    move/from16 v1, p1

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v13

    const/16 v14, -0x65

    if-ne v13, v14, :cond_123

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_166

    :cond_123
    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_147

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_147
    move-object v13, v0

    check-cast v13, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_166

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_166

    :catchall_15e
    move-exception v0

    move-object/from16 p0, v1

    goto :goto_10d

    :cond_162
    move-object/from16 p0, v1

    :cond_164
    move/from16 v1, p1

    :cond_166
    :goto_166
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_168
    .catchall {:try_start_104 .. :try_end_168} :catchall_169

    goto :goto_16e

    :catchall_169
    move-exception v0

    :goto_16a
    :try_start_16a
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_16e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_175

    goto :goto_18c

    :cond_175
    sget-object v13, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "recordBackupXmlDesktopItemPositions mode mapKey item e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18c
    move-object/from16 v1, p0

    goto/16 :goto_74

    :catchall_190
    move-exception v0

    move-object/from16 p0, v1

    move/from16 v1, p1

    goto :goto_19e

    :cond_196
    move-object/from16 p0, v1

    move/from16 v1, p1

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_19c
    .catchall {:try_start_16a .. :try_end_19c} :catchall_19d

    goto :goto_1a2

    :catchall_19d
    move-exception v0

    :goto_19e
    :try_start_19e
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a2
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1a9

    goto :goto_1c0

    :cond_1a9
    sget-object v11, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "recordBackupXmlDesktopItemPositions mode mapKey e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c0
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_58

    :cond_1c6
    move-object/from16 p0, v1

    move/from16 v1, p1

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1e4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1e4

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_21b

    :cond_1e4
    new-instance v0, Lh4/o;

    check-cast v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    new-instance v7, Lh4/j;

    invoke-direct {v7, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4, v7}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1f7} :catch_1f8
    .catchall {:try_start_19e .. :try_end_1f7} :catchall_222

    goto :goto_21b

    :catch_1f8
    move-exception v0

    goto :goto_1ff

    :catch_1fa
    move-exception v0

    move-object/from16 p0, v1

    move/from16 v1, p1

    :goto_1ff
    :try_start_1ff
    sget-object v3, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordBackupXmlDesktopItemPositions mode e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21b

    :cond_217
    move-object/from16 p0, v1

    move/from16 v1, p1

    :cond_21b
    :goto_21b
    move-object/from16 v1, p0

    goto/16 :goto_10

    :cond_21f
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_221
    .catchall {:try_start_1ff .. :try_end_221} :catchall_222

    goto :goto_227

    :catchall_222
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_227
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_22e

    goto :goto_236

    :cond_22e
    sget-object v1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recordBackupXmlDesktopItemPositions e:"

    invoke-static {v3, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_236
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23d

    return-object v2

    :cond_23d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic recordBackupXmlDesktopItemPositions$default(Ljava/util/concurrent/CopyOnWriteArrayList;ZILjava/lang/Object;)Ljava/util/List;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlDesktopItemPositions(Ljava/util/concurrent/CopyOnWriteArrayList;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final recordBackupXmlFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v6

    if-le v6, v3, :cond_27

    invoke-virtual {v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v3

    :cond_27
    invoke-virtual {v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v6

    if-le v6, v4, :cond_11

    invoke-virtual {v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v4

    goto :goto_11

    :cond_32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_11b

    :try_start_42
    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_64

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v6, :cond_9a

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-nez v6, :cond_9a

    const/4 v6, 0x1

    goto :goto_9b

    :cond_9a
    move v6, v2

    :goto_9b
    if-eqz v6, :cond_d3

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c3

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    :cond_d3
    if-eqz v5, :cond_f0

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v1, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_ef
    .catchall {:try_start_42 .. :try_end_ef} :catchall_f2

    goto :goto_f7

    :cond_f0
    const/4 v1, 0x0

    goto :goto_f7

    :catchall_f2
    move-exception v1

    :try_start_f3
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_f7
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_ff

    goto/16 :goto_36

    :cond_ff
    sget-object v5, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recordBackupXmlFolderItemPositions item e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_118
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_11a
    .catchall {:try_start_f3 .. :try_end_11a} :catchall_11b

    goto :goto_120

    :catchall_11b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_120
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_127

    goto :goto_12f

    :cond_127
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recordBackupXmlFolderItemPositions e:"

    invoke-static {v1, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_12f
    return-object v0
.end method

.method public static synthetic recordBackupXmlFolderItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/util/HashMap;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final recordBackupXmlHotseatItemPositions(Ljava/util/List;Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "\n"

    const-string v1, "items"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordBackupXmlHotseatItemPositions$lambda$15$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordBackupXmlHotseatItemPositions$lambda$15$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v2}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_5d

    :try_start_28
    sget-object v3, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    invoke-static {v2, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, p1}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;->generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_39
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_40

    goto :goto_1c

    :cond_40
    sget-object v3, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordBackupXmlHotseatItemPositions item e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5d

    move-object p0, v1

    goto :goto_62

    :catchall_5d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_62
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_69

    goto :goto_71

    :cond_69
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recordBackupXmlHotseatItemPositions e:"

    invoke-static {v0, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hotseatOccupiedStr.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic recordBackupXmlHotseatItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBackupXmlHotseatItemPositions(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final recordBgDataModelDesktopItemPositions(Lcom/android/launcher3/model/BgDataModel;[IZ)Lh4/o;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "[IZ)",
            "Lh4/o<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bgDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_14
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_110

    :try_start_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v6, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    const-string/jumbo v8, "workspaceItems"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "folders"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const-string v4, "appWidgets"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "cards"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v6, "folder.contents"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_5e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;
    :try_end_6e
    .catchall {:try_start_15 .. :try_end_6e} :catchall_10d

    :try_start_6e
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_b6

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_96

    if-eqz p1, :cond_96

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    const/4 v7, 0x0

    aget v7, p1, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v6, :cond_62

    iget v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v11, 0x1

    invoke-static {v4, p2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher3/model/data/ItemInfo;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    goto :goto_62

    :cond_b6
    const/16 v6, -0x65

    if-ne v5, v6, :cond_c4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_dc

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dc
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_62

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_ed} :catch_ef
    .catchall {:try_start_6e .. :try_end_ed} :catchall_10d

    goto/16 :goto_62

    :catch_ef
    move-exception v4

    :try_start_f0
    sget-object v5, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recordBgDataModelDesktopItemPositions item e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    :cond_109
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_10b
    .catchall {:try_start_f0 .. :try_end_10b} :catchall_10d

    :try_start_10b
    monitor-exit p0

    goto :goto_115

    :catchall_10d
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_110
    .catchall {:try_start_10b .. :try_end_110} :catchall_110

    :catchall_110
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_115
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_11c

    goto :goto_124

    :cond_11c
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "recordBgDataModelDesktopItemPositions e:"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_124
    new-instance p0, Lh4/o;

    invoke-direct {p0, v0, v1, v2}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic recordBgDataModelDesktopItemPositions$default(Lcom/android/launcher3/model/BgDataModel;[IZILjava/lang/Object;)Lh4/o;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelDesktopItemPositions(Lcom/android/launcher3/model/BgDataModel;[IZ)Lh4/o;

    move-result-object p0

    return-object p0
.end method

.method public static final recordBgDataModelFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v6, v3, :cond_22

    move v3, v6

    :cond_22
    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v5, v4, :cond_11

    move v4, v5

    goto :goto_11

    :cond_28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_f3

    :try_start_38
    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_56

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v6, :cond_80

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-nez v6, :cond_80

    const/4 v6, 0x1

    goto :goto_81

    :cond_80
    move v6, v2

    :goto_81
    if-eqz v6, :cond_b3

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a5

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    :cond_b3
    if-eqz v5, :cond_c8

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v10, 0x1

    invoke-static {v1, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher3/model/data/ItemInfo;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_c7
    .catchall {:try_start_38 .. :try_end_c7} :catchall_ca

    goto :goto_cf

    :cond_c8
    const/4 v1, 0x0

    goto :goto_cf

    :catchall_ca
    move-exception v1

    :try_start_cb
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_cf
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_d7

    goto/16 :goto_2c

    :cond_d7
    sget-object v5, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recordBgDataModelFolderItemPositions item e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_f0
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_f2
    .catchall {:try_start_cb .. :try_end_f2} :catchall_f3

    goto :goto_f8

    :catchall_f3
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_f8
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_ff

    goto :goto_107

    :cond_ff
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recordBgDataModelFolderItemPositions e:"

    invoke-static {v1, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_107
    return-object v0
.end method

.method public static synthetic recordBgDataModelFolderItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/util/HashMap;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final recordBgDataModelHotseatItemPositions(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "\n"

    const-string/jumbo v1, "prefix"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "items"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordBgDataModelHotseatItemPositions$lambda$46$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordBgDataModelHotseatItemPositions$lambda$46$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_6b

    :try_start_36
    sget-object v2, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    invoke-static {p1, p2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher3/model/data/ItemInfo;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;->generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_42

    goto :goto_47

    :catchall_42
    move-exception p1

    :try_start_43
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_47
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4e

    goto :goto_2a

    :cond_4e
    sget-object v2, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordBgDataModelHotseatItemPositions item e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catchall {:try_start_43 .. :try_end_69} :catchall_6b

    move-object p0, v1

    goto :goto_70

    :catchall_6b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_70
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_77

    goto :goto_7f

    :cond_77
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "recordBgDataModelHotseatItemPositions e:"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hotseatOccupiedStr.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic recordBgDataModelHotseatItemPositions$default(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordBgDataModelHotseatItemPositions(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final recordDbFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/LogableGridOccupancy;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v6

    if-le v6, v3, :cond_27

    invoke-virtual {v5}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v3

    :cond_27
    invoke-virtual {v5}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v6

    if-le v6, v4, :cond_11

    invoke-virtual {v5}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v4

    goto :goto_11

    :cond_32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_11b

    :try_start_42
    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_64

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    if-eqz v6, :cond_9a

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-nez v6, :cond_9a

    const/4 v6, 0x1

    goto :goto_9b

    :cond_9a
    move v6, v2

    :goto_9b
    if-eqz v6, :cond_d3

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c3

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/LogableGridOccupancy;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/LogableGridOccupancy;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/LogableGridOccupancy;

    :cond_d3
    if-eqz v5, :cond_f0

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v1, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_ef
    .catchall {:try_start_42 .. :try_end_ef} :catchall_f2

    goto :goto_f7

    :cond_f0
    const/4 v1, 0x0

    goto :goto_f7

    :catchall_f2
    move-exception v1

    :try_start_f3
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_f7
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_ff

    goto/16 :goto_36

    :cond_ff
    sget-object v5, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recordDbFolderItemPositions item e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_118
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_11a
    .catchall {:try_start_f3 .. :try_end_11a} :catchall_11b

    goto :goto_120

    :catchall_11b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_120
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_127

    goto :goto_12f

    :cond_127
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recordDbFolderItemPositions e:"

    invoke-static {v1, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_12f
    return-object v0
.end method

.method public static synthetic recordDbFolderItemPositions$default(Ljava/util/List;ZILjava/lang/Object;)Ljava/util/HashMap;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordDbFolderItemPositions(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final recordDbHotseatItemPositions(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lh4/j;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;Z)",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "\n"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "prefix"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "items"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordDbHotseatItemPositions$lambda$28$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils$recordDbHotseatItemPositions$lambda$28$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, p1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_92

    :try_start_40
    sget-object v3, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    invoke-static {p2, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getDesensitizationKey(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, p3}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;->generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_66

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/launcher/backup/util/LauncherDBUtils;->querySpecificScreenItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_69

    goto :goto_6e

    :catchall_69
    move-exception p2

    :try_start_6a
    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_6e
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_75

    goto :goto_34

    :cond_75
    sget-object v3, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordDbHotseatItemPositions item e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_8d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_92

    move-object p0, v1

    goto :goto_97

    :catchall_92
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_97
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9e

    goto :goto_a6

    :cond_9e
    sget-object p1, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "recordDbHotseatItemPositions e:"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_a6
    new-instance p0, Lh4/j;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hotseatOccupiedStr.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic recordDbHotseatItemPositions$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lh4/j;
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->recordDbHotseatItemPositions(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lh4/j;

    move-result-object p0

    return-object p0
.end method

.method public static final saveDrawerAndStandardModeLayoutOldOS(Landroid/content/Context;[I[I)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "standardLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x0

    aget v2, p2, v1

    const-string v3, "LastStandardModeCellX"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget v2, p2, v0

    const-string v3, "LastStandardModeCellY"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget v1, p1, v1

    const-string v2, "LastDrawModeCellX"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget v0, p1, v0

    const-string v1, "LastDrawModeCellY"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRestoring: saveDrawerAndStandardModeLayoutOldOS: other Mode: drawer and standard, drawerLayout: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(this)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", standardLayout: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final saveOtherModeLayout(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[I>;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "restoreDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    if-eq v1, p3, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    const-string/jumbo v2, "modeData.mode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, v1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getTargetModeLayout(Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/mode/LauncherMode;)[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->saveTargetModeLayout(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I)V

    goto :goto_15

    :cond_40
    return-void
.end method

.method public static final saveTargetModeLayout(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetModeLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    sget-object p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRestoring: saveTargetModeLayout: Mode: "

    const-string v1, ", targetModeLayout: "

    invoke-static {v0, p1, v1}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "toString(this)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setDrawerModeSetting(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_10

    sget-object p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onRestoring: setDrawerModeSetting failed, drawerModeSetting null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-boolean v0, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    iget-boolean v1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    iget-boolean p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAppGlobalSearch:Z

    sget-object v2, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;Z)V

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setShowIndicatedAppForDrawerMode(Landroid/content/Context;Z)V

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setDrawerAppGlobalSearch(Landroid/content/Context;Z)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    sget-object p0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRestoring: setDrawerModeSetting, addAppToWorkSpace: "

    const-string v3, ", showIndicateApp: "

    const-string v4, ", globalSearch: "

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static final stopCurrentLoadTask(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop current load task when start restore!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_43

    const-string v1, "clearPendingBinds when start restore!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lw/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw/d;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_43
    return-void
.end method

.method private static final stopCurrentLoadTask$lambda$0(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    return-void
.end method
