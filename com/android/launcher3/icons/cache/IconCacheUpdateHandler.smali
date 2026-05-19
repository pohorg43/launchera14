.class public Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;,
        Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;
    }
.end annotation


# static fields
.field private static final ICON_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final MODE_CLEAR_VALID_ITEMS:Z = false

.field private static final MODE_SET_INVALID_ITEMS:Z = true

.field private static final TAG:Ljava/lang/String; = "IconCacheUpdateHandler"


# instance fields
.field private mFilterMode:Z

.field private final mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

.field private final mItemsToDelete:Landroid/util/SparseBooleanArray;

.field private final mPackagesToIgnore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    iput-object p1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->createPackageInfoMap()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method private createPackageInfoMap()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_22
    return-void
.end method

.method private updateIconsPerUser(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const-string/jumbo v0, "system_state"

    const-string/jumbo v1, "version"

    const-string v3, "lastUpdated"

    const-string v4, "componentName"

    const-string/jumbo v6, "rowid"

    iget-object v7, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_1f

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_1f
    iget-object v8, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    :try_start_2a
    iget-object v11, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v11, v11, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    filled-new-array {v6, v4, v3, v1, v0}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "profileId = ? "

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    aput-object v16, v15, v14

    invoke-virtual {v11, v12, v13, v15}, Lcom/android/launcher3/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_43} :catch_121

    :try_start_43
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_57
    :goto_57
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_109

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-nez v13, :cond_91

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_57

    iget-boolean v13, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9b

    iget-object v13, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v13, v12, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v12, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9b

    :cond_91
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x1000000

    and-int v14, v14, v17

    if-eqz v14, :cond_9d

    :cond_9b
    :goto_9b
    const/4 v14, 0x0

    goto :goto_57

    :cond_9d
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v19, v1

    move/from16 v20, v3

    move-object/from16 v1, p2

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v1, v13, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b1
    .catchall {:try_start_43 .. :try_end_b1} :catchall_10f

    if-ne v14, v1, :cond_e5

    move-object/from16 v14, p3

    :try_start_b5
    invoke-interface {v14, v3, v13}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J

    move-result-wide v21

    cmp-long v1, v17, v21

    if-nez v1, :cond_e7

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v0

    iget-object v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-boolean v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    if-nez v0, :cond_dc

    iget-object v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_100

    :cond_dc
    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v3, v20

    goto :goto_9b

    :catchall_e3
    move-exception v0

    goto :goto_112

    :cond_e5
    move-object/from16 v14, p3

    :cond_e7
    move/from16 v17, v0

    :cond_e9
    const/4 v1, 0x0

    if-nez v3, :cond_fc

    iget-boolean v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    const/4 v13, 0x1

    if-ne v0, v13, :cond_100

    iget-object v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v0, v12, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v0, v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_100

    :cond_fc
    const/4 v13, 0x1

    invoke-virtual {v10, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catchall {:try_start_b5 .. :try_end_100} :catchall_e3

    :cond_100
    :goto_100
    move v14, v1

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v3, v20

    goto/16 :goto_57

    :cond_109
    move-object/from16 v14, p3

    :try_start_10b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10b .. :try_end_10e} :catch_11f

    goto :goto_12b

    :catchall_10f
    move-exception v0

    move-object/from16 v14, p3

    :goto_112
    move-object v1, v0

    if-eqz v11, :cond_11e

    :try_start_115
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_119

    goto :goto_11e

    :catchall_119
    move-exception v0

    move-object v3, v0

    :try_start_11b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11e
    :goto_11e
    throw v1
    :try_end_11f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11b .. :try_end_11f} :catch_11f

    :catch_11f
    move-exception v0

    goto :goto_124

    :catch_121
    move-exception v0

    move-object/from16 v14, p3

    :goto_124
    const-string v1, "IconCacheUpdateHandler"

    const-string v3, "Error reading icon cache"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12b
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    :cond_137
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v8

    move-object/from16 v5, p1

    move-object v7, v10

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->scheduleNext()V

    :cond_156
    return-void
.end method


# virtual methods
.method public addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .registers 6

    const-string/jumbo v0, "rowid"

    const-string v1, " IN ("

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v2, v1, :cond_30

    iget-object v4, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-lez v3, :cond_22

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    iget-object v4, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_30
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_43

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2f

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_25

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    invoke-interface {p2, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2f
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIconsPerUser(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    goto :goto_37

    :cond_53
    iput-boolean v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    return-void
.end method
