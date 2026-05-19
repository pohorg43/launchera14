.class public Lcom/android/launcher3/model/OplusModelWriter;
.super Lcom/android/launcher3/model/ModelWriter;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Range"
    }
.end annotation


# static fields
.field private static final INSTANT_PLATFORM_AUTHORITY:Ljava/lang/String; = "com.nearme.instant.setting"

.field private static final INSTANT_PLATFORM_METHOD_KEY_QUICK_APP_PACKAGE:Ljava/lang/String; = "quickAppPkg"

.field private static final INSTANT_PLATFORM_METHOD_NOTIFY_SHORTCUT_DELETE:Ljava/lang/String; = "notifyShortcutDelete"

.field private static final INSTANT_PLATFORM_PROVIDER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ModelWriter"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.nearme.instant.setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusModelWriter;->INSTANT_PLATFORM_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 7
    .param p6  # Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic A(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$addItems$12(Ljava/util/List;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic B(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$updateWidgetItemInDatabaseFaster$10(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$deleteItemsFromDatabase$3(Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method

.method private static buildItemInsertOperation(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/content/ContentProviderOperation;
    .registers 6

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    sget-object p1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    if-eqz p2, :cond_28

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->getValues()Landroid/content/ContentValues;

    move-result-object p0

    :goto_2c
    invoke-virtual {p1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static buildItemInsertOperation(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLandroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .registers 7

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    if-eqz p2, :cond_26

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->getValues()Landroid/content/ContentValues;

    move-result-object p0

    :goto_2a
    invoke-virtual {p1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private deleteItemsFromDatabase(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyTaskbarDelete(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher3/model/g0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/model/g0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/OplusModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$addItems$12(Ljava/util/List;Landroid/content/Context;Z)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v6, v5, :cond_1d

    move v3, v5

    :cond_1d
    invoke-static {}, Lcom/android/launcher3/dragndrop/AddItemActivity;->isCreateShortcutForPopup()Z

    move-result v6

    if-eqz v6, :cond_33

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v6, v5, :cond_33

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->setJumpScreenOfIndexId(I)V

    const-string v5, "ModelWriter"

    const-string v6, "Add a shortcut to the browser to obtain the ID of the corresponding screen."

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const-string v5, "ModelWriter"

    const-string v6, "addItems -- item: "

    invoke-static {v6, v4, v5}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    invoke-static {p2, v4, p3}, Lcom/android/launcher3/model/OplusModelWriter;->buildItemInsertOperation(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_42
    invoke-static {p2, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p3

    if-nez p3, :cond_6a

    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter p3

    :try_start_4b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    new-array v3, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v0, v3, v2

    invoke-virtual {v1, p2, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_4f

    :cond_65
    monitor-exit p3

    goto :goto_8c

    :catchall_67
    move-exception p0

    monitor-exit p3
    :try_end_69
    .catchall {:try_start_4b .. :try_end_69} :catchall_67

    throw p0

    :cond_6a
    if-eqz v3, :cond_8c

    const-string p1, "ModelWriter"

    const-string p2, "addItems  notify"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private synthetic lambda$commitDelete$6()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method private synthetic lambda$deleteFolderFromDatabase$4(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "container="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteFolderFromDatabase -- info: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModelWriter"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statRemoveFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method private synthetic lambda$deleteItemsFromDatabase$3(Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 10

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v4}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2c

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v3, v4, :cond_2c

    move v3, v4

    goto :goto_2d

    :cond_2c
    move v3, v0

    :goto_2d
    or-int/2addr v1, v3

    iput-boolean v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->mDeleted:Z

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    new-array v4, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v2, v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v3, :cond_4f

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v6, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/oplus/card/manager/domain/CardManager;->deleteCardId(III)V

    :cond_4f
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/model/OplusModelWriter;->notifyInstantPlatformWhenItemDelete(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_6

    :cond_58
    if-eqz v1, :cond_6c

    const-string p1, "ModelWriter"

    const-string p2, "deleteItemsFromDatabase  notifyChange"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_6c
    return-void
.end method

.method private synthetic lambda$enqueueDeleteRunnable$5()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method private static synthetic lambda$loadHotseatData$14(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "container=-101"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_15
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_8f

    const-string p0, "ModelWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHotseatData:  _ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CELLX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cellX"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CELLY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cellY"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SCREEN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screen"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TITLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_88} :catch_8b
    .catchall {:try_start_1 .. :try_end_88} :catchall_89

    goto :goto_15

    :catchall_89
    move-exception p0

    goto :goto_93

    :catch_8b
    move-exception p0

    :try_start_8c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_89

    :cond_8f
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_93
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private synthetic lambda$modifyItemInDatabase$0()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method private static synthetic lambda$moveItemInDBAndNotifySingleItem$1(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$moveItemInDBAndNotifySingleItem$2(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "container"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rank"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "screen"

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeGhostWidgets$13()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "remove_ghost_widgets"

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$updateItemInDatabase$7()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method private synthetic lambda$updateNonPositionAttrInDatabase$8(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "restored"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    :cond_34
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_49

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    const-string v1, "iconPackage"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v1, "iconResource"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    :cond_49
    return-object p0
.end method

.method private synthetic lambda$updateNonPositionAttrInDatabase$9()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method private synthetic lambda$updateWidgetItemInDatabaseFaster$10(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    return-object v0
.end method

.method private synthetic lambda$updateWidgetItemInDatabaseFaster$11()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifierUpdateOrDeleteAction()V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$updateNonPositionAttrInDatabase$9()V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$moveItemInDBAndNotifySingleItem$2(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$moveItemInDBAndNotifySingleItem$1(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$updateWidgetItemInDatabaseFaster$11()V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$modifyItemInDatabase$0()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$removeGhostWidgets$13()V

    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$deleteFolderFromDatabase$4(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$updateNonPositionAttrInDatabase$8(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$commitDelete$6()V

    return-void
.end method

.method public static synthetic x(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$enqueueDeleteRunnable$5()V

    return-void
.end method

.method public static synthetic y(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$loadHotseatData$14(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/launcher3/model/OplusModelWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusModelWriter;->lambda$updateItemInDatabase$7()V

    return-void
.end method


# virtual methods
.method public addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .registers 7

    const-string v0, "addItemToDatabase"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->isAllowChangeDB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    return-void
.end method

.method public addItems(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/k0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/common/util/k0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitDelete()V
    .registers 4

    const-string v0, "commitDelete"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->isAllowChangeDB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/a1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/model/a1;-><init>(Lcom/android/launcher3/model/OplusModelWriter;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ModelWriter"

    invoke-static {p3, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public deleteFolderFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModelWriter"

    invoke-static {v0, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyTaskbarDelete(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/launcher3/model/g0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/model/g0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModelWriter"

    invoke-static {v0, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ModelWriter"

    invoke-static {p3, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V
    .registers 6
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V

    return-void
.end method

.method public deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "ModelWriter"

    invoke-static {v0, p4}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V

    return-void
.end method

.method public enqueueDeleteRunnable(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "enqueueDeleteRunnable"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->isAllowChangeDB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_13
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/model/OplusModelWriter;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_20
    return-void
.end method

.method public injectCheckItemInfoLocked([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z
    .registers 4

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkItemInfoLocked Failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ModelWriter"

    invoke-static {p2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isAllowChangeDB(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ModelWriter"

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_36

    :cond_1c
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/ota/OpOtaManager;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_2e
    const-string p0, " op ota routine running, don\'t modify db"

    invoke-static {p1, p0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_34
    const/4 p0, 0x1

    return p0

    :cond_36
    :goto_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": In children or superPower mode, don\'t handle database operation."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public loadHotseatData(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/util/x0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/common/util/x0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V
    .registers 11

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Landroidx/core/widget/a;

    invoke-direct {p2, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/model/OplusModelWriter;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveItemInDBAndNotifySingleItem(Lcom/android/launcher3/model/data/ItemInfo;IIIILjava/lang/String;)V
    .registers 9
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p6}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "ModelWriter"

    invoke-static {v0, p6}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    new-instance p2, Lcom/android/launcher3/model/m;

    invoke-direct {p2, p1}, Lcom/android/launcher3/model/m;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance p3, Lcom/android/launcher3/model/u0;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher3/model/u0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p2, p0, p1, p3}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/OplusModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .registers 9

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    return-void
.end method

.method public moveItemsInDatabase(Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public notifyInstantPlatformWhenItemDelete(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    const-string p0, "ModelWriter"

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, v1

    :goto_18
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getInstantPlatformPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_30
    :try_start_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/model/OplusModelWriter;->INSTANT_PLATFORM_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_77
    .catchall {:try_start_30 .. :try_end_3a} :catchall_75

    if-eqz p1, :cond_6a

    :try_start_3c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "quickAppPkg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete instant shortcut : shortcutId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.nearme.instant.setting"

    const-string/jumbo v2, "notifyShortcutDelete"

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_6f

    :catchall_64
    move-exception p0

    move-object v1, p1

    goto :goto_96

    :catch_67
    move-exception p2

    move-object v1, p1

    goto :goto_78

    :cond_6a
    const-string p2, "get provider client fail!"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6f} :catch_67
    .catchall {:try_start_3c .. :try_end_6f} :catchall_64

    :goto_6f
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_95

    :catchall_75
    move-exception p0

    goto :goto_96

    :catch_77
    move-exception p2

    :goto_78
    :try_start_78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyInstantPlatformWhenItemDelete, exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_75

    if-eqz v1, :cond_95

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_95
    :goto_95
    return-void

    :goto_96
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_9b
    throw p0
.end method

.method public removeGhostWidgets()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/a1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/model/a1;-><init>(Lcom/android/launcher3/model/OplusModelWriter;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/model/OplusModelWriter;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .registers 7

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/16 v0, -0x65

    if-ne p2, v0, :cond_53

    iget-boolean p2, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz p2, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    sub-int/2addr p0, p5

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_55

    :cond_1c
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_50

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    sub-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-eqz p0, :cond_55

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p0

    if-nez p0, :cond_55

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-static {p4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyScreenIdFormCellXForExpandScreen(I)I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_55

    :cond_50
    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_55

    :cond_53
    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_55
    :goto_55
    return-void
.end method

.method public updateNonPositionAttrInDatabase(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModelWriter"

    invoke-static {v0, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/u0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/u0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/launcher3/model/b1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/model/OplusModelWriter;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateWidgetItemInDatabaseFaster(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 6

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelWriter"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetItemInDatabaseFaster,appWidgetId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v3, Lcom/android/launcher3/d0;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {v2, p0, p1, v3}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/model/OplusModelWriter;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
