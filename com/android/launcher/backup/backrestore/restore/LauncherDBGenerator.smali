.class public Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LauncherDBGenerator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateApplicationInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p0, p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemApplicationInfoForRestore(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rank"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterNewInstallingAppWhenBackup(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v0

    const-string/jumbo v1, "restored"

    if-eqz v0, :cond_148

    const-string v0, "ADD restore a new installing"

    const-string v2, " package = "

    invoke-static {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screen = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cell:("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "iconType"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iconResource"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const-string v0, "icon"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_148
    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateOneItemInfo -- itemType: application, appInfo is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static generateBackupDataModeToDB(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupDataModel;II)Z
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateModeLayoutMap(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/util/SparseArray;II)Z

    move-result p0

    return p0
.end method

.method public static generateCardInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;II)Landroid/content/ContentProviderOperation;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p1, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;II)Z

    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "itemType"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "_id"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "title"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "screen"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellX"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellY"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "spanX"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "spanY"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "card_type"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getServiceId()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "service_id"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getEditableAttrs()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "editable_attributes"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardIdentification()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "theme_card_identification"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardCategory()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "card_category"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "appWidgetId"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p3

    const-string p4, "appWidgetProvider"

    invoke-virtual {p0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateOneItemInfo -- itemType: card, cardInfo is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static generateDeepShortcutInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)Landroid/content/ContentProviderOperation;
    .registers 9
    .param p6  # Landroid/content/pm/ShortcutManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Landroid/net/Uri;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")",
            "Landroid/content/ContentProviderOperation;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rank"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "restored"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p4, p2}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->recordRestoreShortcuts(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p0, p4, p2, p5, p6}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->rePinShortcutsForRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)V

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateOneItemInfo -- itemType: deepShortcut, deepShortcutInfo is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static generateFolderInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Landroid/content/ContentProviderOperation;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanY"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p3

    if-eqz p3, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRecommendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "recommendId"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_95
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneItemInfo -- itemType: folder, folderInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportRecommendApp = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private static generateListApplicationInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v1, :cond_9

    invoke-static {p0, p1, v1, p3}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateApplicationInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListCardInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            "II)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v1, :cond_9

    invoke-static {p1, v1, p3, p4, p5}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateCardInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;II)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListDeepShortcutInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v4, :cond_18

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateDeepShortcutInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_35
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListFolderInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v1, :cond_9

    invoke-static {p1, v1, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateFolderInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListItemInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "II)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateListItemInfo: Type: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$Constants;->getDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_50

    goto :goto_4f

    :pswitch_23  #0x6
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListUrlShortcutInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_4f

    :pswitch_28  #0x5
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p4

    if-eqz p4, :cond_3a

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListCardInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;II)Z

    move-result p0

    if-eqz p0, :cond_4f

    :cond_3a
    const/4 v0, 0x1

    goto :goto_4f

    :pswitch_3c  #0x4
    invoke-static/range {p0 .. p6}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Z

    move-result v0

    goto :goto_4f

    :pswitch_41  #0x3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListFolderInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    goto :goto_4f

    :pswitch_46  #0x2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListDeepShortcutInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    goto :goto_4f

    :pswitch_4b  #0x1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListApplicationInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v0

    :cond_4f
    :goto_4f
    return v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_46  #00000002
        :pswitch_41  #00000003
        :pswitch_3c  #00000004
        :pswitch_28  #00000005
        :pswitch_23  #00000006
    .end packed-switch
.end method

.method private static generateListScreenInfo(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    const-string v2, "generateListScreenInfo: screenList count is "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Backup"

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    if-eqz v2, :cond_85

    iget v3, v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewId:I

    iget v4, v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenId:I

    invoke-static {v3, v4}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getRestoredIdCompatOplus60(II)I

    move-result v3

    iget v4, v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewScreenRank:I

    iget v5, v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenNum:I

    invoke-static {v4, v5}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getRestoredScreenRankCompatOplus60(II)I

    move-result v4

    if-ltz v3, :cond_69

    if-ltz v4, :cond_69

    if-eqz v1, :cond_4b

    if-nez v3, :cond_4b

    goto :goto_69

    :cond_4b
    invoke-static {v2, v3, v4, p2}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateScreenInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;IILandroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateOneScreenInfo -- screenInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_69
    :goto_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateOneScreenInfo -- generate error screenInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_85
    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    const-string v3, "generateOneScreenInfo -- generate error screenInfo is null"

    invoke-static {v2, v3}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_8f
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListUrlShortcutInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v1, :cond_9

    invoke-static {p1, v1, p3}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateUrlShortcutInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateListWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "II)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    if-eqz v4, :cond_9

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateWidgetInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_26
    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static generateModeLayoutMap(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/util/SparseArray;II)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;II)Z"
        }
    .end annotation

    move-object/from16 v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_af

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    const-string v1, "generateModeLayoutMap: -- mapKey = "

    const-string v11, "Backup"

    if-eqz v10, :cond_8d

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_8d

    :cond_21
    sget-object v12, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    const-string v13, ", listSize = "

    invoke-static {v1, v8, v13}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Mode: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_57

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getScreenContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v15, p0

    invoke-static {v15, v10, v0}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListScreenInfo(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->clearEmptyTableIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    const-string v1, "generateModeLayoutMap Screens: clearEmptyTableIfNeeded = "

    invoke-static {v1, v0, v11, v12}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_57
    move-object/from16 v15, p0

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getNoNotifyUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v10

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->generateListItemInfo(Landroid/content/Context;ILjava/util/ArrayList;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Z

    move-result v0

    :cond_6b
    :goto_6b
    if-nez v0, :cond_ab

    const-string v1, "generateModeLayoutMap failed: -- mapKey = "

    invoke-static {v1, v8, v13}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v2, v12, v1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_8d
    :goto_8d
    move-object/from16 v15, p0

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listSize = 0, Mode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    :goto_ab
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_af
    return v0
.end method

.method private static generateScreenInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;IILandroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "screenRank"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateOneScreenInfo -- screenInfo is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static generateUrlShortcutInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanY"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rank"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "profileId"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    const-string v1, "ADD restore iconPack-Source "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iconPackage"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iconResource"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "restored"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneItemInfo -- itemType: urlShortcut, urlShortcutInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static generateWidgetInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Landroid/net/Uri;Lcom/android/launcher/mode/LauncherMode;II)Landroid/content/ContentProviderOperation;
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V

    invoke-static {p0, p2, p4, p5, p6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemWidgetInfoForRestore(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;II)Z

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getItemType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "itemType"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p4, "_id"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p1

    const-string p4, "appWidgetProvider"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "container"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p4, "screen"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "cellX"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "cellY"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p4, "spanX"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p4, "spanY"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "appWidgetId"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p4, "restored"

    invoke-virtual {p0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/LauncherDBGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateOneItemInfo -- itemType: widget, widgetInfo is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method
