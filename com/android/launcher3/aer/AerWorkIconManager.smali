.class public Lcom/android/launcher3/aer/AerWorkIconManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AER_WORK_FLAG:Ljava/lang/String; = "aer_work_flag"

.field private static final AER_WORK_PHONE_FLAG:Ljava/lang/String; = "aer_work_phone_flag"

.field private static final AER_WORK_SMS_FLAG:Ljava/lang/String; = "aer_work_sms_flag"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AerWorkIconManager"

.field public static mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field public static mContext:Landroid/content/Context;

.field private static mDefaultApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static myUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "intent"

    const-string v3, "container"

    const-string/jumbo v4, "screen"

    const-string v5, "cellX"

    const-string v6, "cellY"

    const-string/jumbo v7, "spanX"

    const-string/jumbo v8, "spanY"

    const-string v9, "itemType"

    const-string v10, "appWidgetId"

    const-string v11, "appWidgetProvider"

    const-string v12, "iconPackage"

    const-string v13, "iconResource"

    const-string/jumbo v14, "restored"

    const-string/jumbo v15, "profileId"

    const-string/jumbo v16, "rank"

    const-string/jumbo v17, "options"

    const-string/jumbo v18, "user_id"

    const-string v19, "card_type"

    const-string v20, "card_host_id"

    const-string/jumbo v21, "service_id"

    const-string v22, "card_category"

    const-string v23, "editable_attributes"

    const-string/jumbo v24, "theme_card_identification"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppAddAERBage(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 7

    const-string v0, "aer_work_flag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {p0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceOwnerAllManage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v1, "AerWorkIconManager"

    const-string/jumbo v2, "updateDB: AppAddAERBage "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/aer/AerWorkIconManager;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    sput-object p0, Lcom/android/launcher3/aer/AerWorkIconManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/aer/ProvisionManager;->getWorkProfile()Landroid/os/UserHandle;

    move-result-object p1

    if-nez p1, :cond_2f

    const-string p0, "AppAddAERBage user handle is null for work profile!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppAddAERBage: myUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/aer/AerWorkIconManager;->getDefaultApp(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-static {v2}, Lcom/android/launcher3/aer/AerWorkIconManager;->updateDB(Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/aer/AerWorkIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "work"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    return-void
.end method

.method public static AppDeleteAERBage(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 5

    sput-object p0, Lcom/android/launcher3/aer/AerWorkIconManager;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/launcher3/aer/AerWorkIconManager;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const-string p1, "aer_work_flag"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x0

    const-string/jumbo v1, "myUserId"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDB: AppDeleteAERBage  myUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AerWorkIconManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/aer/AerWorkIconManager;->getCacheDefaultApp(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/aer/AerWorkIconManager;->updateDB(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public static getCacheDefaultApp(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "aer_work_sms_flag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aer_work_phone_flag"

    invoke-static {p0, v3, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_22

    sget-object v4, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v3, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public static getDefaultApp(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SMS"

    invoke-virtual {v0, v1, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.app.role.DIALER"

    invoke-virtual {v0, v2, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_36

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "aer_work_sms_flag"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_52

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "aer_work_phone_flag"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string p0, "getDefaultApp: mDefaultApps = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AerWorkIconManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateDB(Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/aer/AerWorkIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/aer/AerWorkIconManager;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v7

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    sget-object v4, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_70

    if-nez v3, :cond_41

    const-string v4, "intent"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " like \'%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_41
    const-string/jumbo v4, "or "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "intent"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " like \'%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/launcher3/aer/AerWorkIconManager;->mDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_70
    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/launcher3/aer/AerWorkIconManager;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_83
    .catchall {:try_start_9 .. :try_end_83} :catchall_11e

    if-eqz v2, :cond_119

    :try_start_85
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "user_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/launcher3/aer/AerWorkIconManager;->myUserId:I

    sget-object v4, Lcom/android/launcher3/aer/AerWorkIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "myUserId"

    invoke-static {v4, v5, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "profileId"

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "AerWorkIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialerAndMessagUpdateBage update Favorites._ID:= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AerWorkIconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDB: myUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/launcher3/aer/AerWorkIconManager;->myUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_fb} :catch_fc
    .catchall {:try_start_85 .. :try_end_fb} :catchall_11e

    goto :goto_7f

    :catch_fc
    move-exception v2

    :try_start_fd
    const-string v3, "AerWorkIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialerAndMessagUpdateBage: query e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f

    :cond_119
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    monitor-exit v7

    return-void

    :catchall_11e
    move-exception p0

    monitor-exit v7
    :try_end_120
    .catchall {:try_start_fd .. :try_end_120} :catchall_11e

    throw p0
.end method
