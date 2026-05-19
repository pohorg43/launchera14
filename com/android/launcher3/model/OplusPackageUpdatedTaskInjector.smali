.class public Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "OplusPackageUpdatedTaskHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectExcute(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel;Landroid/os/UserHandle;ZZLjava/util/HashSet;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSet;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Landroid/os/UserHandle;",
            "ZZ",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    monitor-enter p1

    :try_start_6
    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_16f

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    if-nez p3, :cond_c

    if-eqz p4, :cond_c

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_34
    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v4}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_4e

    goto :goto_c

    :cond_4e
    const-string/jumbo v8, "pkgName1"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "pkgName2"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "pkgNames"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_175

    const/4 v11, 0x0

    if-eqz v10, :cond_8e

    :try_start_66
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    move v13, v11

    :goto_72
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_85

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_82} :catch_87
    .catchall {:try_start_66 .. :try_end_82} :catchall_175

    add-int/lit8 v13, v13, 0x1

    goto :goto_72

    :cond_85
    move-object v5, v10

    goto :goto_8e

    :catch_87
    :try_start_87
    sget-object v10, Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;->TAG:Ljava/lang/String;

    const-string v12, "Parser ERROR!!!"

    invoke-static {v10, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    const-string v10, "isSplitScreenCombination"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v12, "isPsSplitScreenCombination"

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v10, :cond_d8

    if-eqz v8, :cond_d8

    if-eqz v9, :cond_d8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    :cond_ac
    sget-object v10, Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "removescreencombination:info:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",pkgName1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",,pkgName2:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_d8
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_11b

    if-eqz v5, :cond_11b

    array-length v10, v5

    if-ne v10, v8, :cond_11b

    sget-object v7, Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removescreencombination:info:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",pkgNames:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, v5, v11

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_114

    aget-object v5, v5, v9

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_114
    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto/16 :goto_c

    :cond_11b
    if-eqz v7, :cond_165

    if-eqz v5, :cond_165

    array-length v7, v5

    const/4 v10, 0x3

    if-ne v7, v10, :cond_165

    sget-object v7, Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removescreencombination:info:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",pkgNames:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, v5, v11

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15e

    aget-object v7, v5, v9

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15e

    aget-object v5, v5, v8

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_15e
    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto/16 :goto_c

    :cond_165
    sget-object v4, Lcom/android/launcher3/model/OplusPackageUpdatedTaskInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no option here!"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_16f
    move-object/from16 v6, p2

    goto/16 :goto_c

    :cond_173
    monitor-exit p1

    return-void

    :catchall_175
    move-exception v0

    monitor-exit p1
    :try_end_177
    .catchall {:try_start_87 .. :try_end_177} :catchall_175

    throw v0
.end method
