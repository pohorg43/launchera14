.class public final Lcom/android/launcher3/ota/AddCardUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/ota/AddCardUtils;

.field public static final TAG:Ljava/lang/String; = "AddCardManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/ota/AddCardUtils;

    invoke-direct {v0}, Lcom/android/launcher3/ota/AddCardUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/ota/AddCardUtils;->INSTANCE:Lcom/android/launcher3/ota/AddCardUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ota/AddCardUtils;->removeDuplicateCards$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isRemoveDuplicateCards(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ota/AddCardUtils;->isRemoveDuplicateCards(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p0

    return p0
.end method

.method public static final addBreenoUsCardToDbIfNeed(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v10, p1

    const-string v11, "AddCardManager"

    const-string v0, "context"

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraItemInfoList"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    :try_start_1f
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/ota/AddCardUtils;->loadWorkspaceScreensDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " addBreenoUsCardToDbIfNeed failed, has no db screen!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/ota/AddCardUtils;->loadWorkspaceItemsDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " addBreenoUsCardToDbIfNeed failed, has no db item!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " addBreenoUsCardToDbIfNeed start: need add extra items.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    const-string v0, "getInstance(context)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v1

    move-object v15, v0

    invoke-direct/range {v12 .. v18}, Lcom/android/launcher3/model/OplusModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iput-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v12, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "MODEL_EXECUTOR"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/android/launcher3/ota/a;

    move-object v1, v13

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v14, v9

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/ota/a;-><init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-wide/16 v1, 0x1e

    invoke-static {v12, v13, v1, v2}, Lcom/android/launcher3/ota/AddCardUtils;->runTaskBlockAndWait(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    const/4 v0, 0x0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_bf} :catch_c0

    goto :goto_ca

    :catch_c0
    move-exception v0

    const-string v1, " addBreenoUsCardToDbIfNeed failed e: "

    invoke-static {v10, v1}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v11}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_ca
    return-void
.end method

.method private static final addBreenoUsCardToDbIfNeed$lambda$3(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 23

    move-object v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    const-string v2, "$bgDataModel"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$targetMode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$screenInfoDbList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$itemInfoDbList"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$app"

    move-object/from16 v11, p4

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$context"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$extraItemInfoList"

    move-object/from16 v12, p6

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$modelWrite"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_38
    const-string v2, "AddCardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " addBreenoUsCardToDbIfNeed screenInfoDbList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object v2, v8, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->clear()V

    const-string v1, "AddCardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " addBreenoUsCardToDbIfNeed itemInfoDbList.size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v4, v8, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_87

    :cond_9b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v13

    const/4 v1, 0x2

    new-array v14, v1, [I

    const/4 v1, 0x0

    iget v2, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aput v2, v14, v1

    const/4 v1, 0x1

    iget v2, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    aput v2, v14, v1

    const-string v1, "idp"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v0, v13}, Lcom/android/launcher3/ota/AddCardUtils;->updateIdpLayoutWithModeLayout(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {}, Lcom/android/launcher3/ota/AddCardManager;->getBreenoUsCardPreferredScreenIndex()I

    move-result v7

    invoke-static/range {p6 .. p6}, Lcom/android/launcher3/ota/AddCardUtils;->findOutBreenoUsAndDeleteBreenoUs(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/model/OplusModelWriter;

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/ota/AddCardUtils;->findSpaceForItems(Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;I)V

    const/4 v7, -0x1

    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/model/OplusModelWriter;

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object v4, p0

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/ota/AddCardUtils;->findSpaceForItems(Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;I)V

    invoke-static {v0, v13, v14}, Lcom/android/launcher3/ota/AddCardUtils;->resetIdpLayoutWithOriginal(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;[I)V
    :try_end_e3
    .catchall {:try_start_38 .. :try_end_e3} :catchall_e5

    monitor-exit p0

    return-void

    :catchall_e5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic b(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ota/AddCardUtils;->runTaskBlockAndWait$lambda$7(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static final buildBreenoUsCardInfoForOta(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    const-string v0, " buildBreenoUsCardInfoForOta layoutCellXY: "

    invoke-static {p1, v0}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddCardManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/16 v2, 0x5d

    const-string v3, ", "

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    const-string v4, " buildBreenoUsCardInfoForOta idpCellXY: ["

    invoke-static {p1, v4}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    const-string/jumbo v4, "小布建议"

    iput-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const v4, 0xd3ecf26

    iput v4, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    sget-object v4, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v4, v5}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const-string v4, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    aget p0, p0, v4

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const-string p0, " buildBreenoUsCardInfoForOta cardInfoSpanXY: ["

    invoke-static {p1, p0}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final buildCardInfoForRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetDbItemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    const-string v0, " buildBreenoUsCardInfoForRestore layoutCellXY: "

    invoke-static {p1, v0}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSpanXFullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIsSpanXFullScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddCardManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/16 v2, 0x5d

    const-string v3, ", "

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    const-string v4, " buildBreenoUsCardInfoForRestore idpCellXY: ["

    invoke-static {p1, v4}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMContainer()I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIsSpanXFullScreen()Z

    move-result v4

    if-eqz v4, :cond_a8

    const/4 v4, 0x0

    aget p0, p0, v4

    goto :goto_ac

    :cond_a8
    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result p0

    :goto_ac
    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMRank()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMUser()Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_d4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :cond_d4
    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardType()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMServiceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetId()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v4, -0x1

    if-ne p0, v4, :cond_f7

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    iget v4, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v4}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :cond_f7
    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardHostId()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetProvider()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10f

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    :cond_10f
    const-string p0, " buildBreenoUsCardInfoForRestore cardInfoSpanXY: ["

    invoke-static {p1, p0}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/ota/AddCardUtils;->addBreenoUsCardToDbIfNeed$lambda$3(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static final findOutBreenoUsAndDeleteBreenoUs(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "addCardList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_15

    iget v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v3, 0xd3ecf26

    if-ne v2, v3, :cond_15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_34
    return-object v0
.end method

.method private static final findSpaceForItems(Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/model/OplusModelWriter;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v11, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v11}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v12}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p5

    move-object v9, v13

    move/from16 v10, p6

    invoke-static/range {v2 .. v10}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;I)Ljava/util/List;

    invoke-virtual {v12}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v2

    const-string v3, "AddCardManager"

    if-nez v2, :cond_43

    const-string v2, " addBreenoUsCardToDbIfNeed findSpaceForItems added extra screens "

    invoke-static {p0, v2}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p3

    invoke-static {p1, v11, v2}, Lcom/android/launcher3/ota/AddCardUtils;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel;)V

    :cond_43
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4e

    invoke-static {p1, v13, p0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->updateBackupDataAddedCard(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher/mode/LauncherMode;)V

    :cond_4e
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    const-string/jumbo v1, "succeed!"

    goto :goto_5a

    :cond_58
    const-string v1, "failed!"

    :goto_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " addBreenoUsCardToDbIfNeed findSpaceForItems done, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " addedItem: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->clear()V

    invoke-virtual {v12}, Lcom/android/launcher3/util/IntArray;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final getAnotherModesExceptSimple(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/LauncherMode;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "currentMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_11

    :cond_c
    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v1, :cond_11

    move-object p0, v0

    :cond_11
    :goto_11
    return-object p0
.end method

.method public static final hasBreenoUsCardInDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AddCardManager"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8e

    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "appWidgetId"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "card_type = ?"

    const-string p0, "222220070"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasBreenoUsCardInDb true! count: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_52} :catch_6e
    .catchall {:try_start_18 .. :try_end_52} :catchall_6c

    const/4 p0, 0x1

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_57
    :try_start_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasBreenoUsCardInDb false!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6b} :catch_6e
    .catchall {:try_start_57 .. :try_end_6b} :catchall_6c

    goto :goto_86

    :catchall_6c
    move-exception p0

    goto :goto_8a

    :catch_6e
    move-exception p0

    :try_start_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " hasBreenoUsCardInDb false, e: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_6c

    :goto_86
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8e

    :goto_8a
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_8e
    :goto_8e
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasContentInTargetDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AddCardManager"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasContentInTargetDb true! count: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_68
    .catchall {:try_start_18 .. :try_end_4c} :catchall_66

    const/4 p0, 0x1

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_51
    :try_start_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasContentInTargetDb false!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_68
    .catchall {:try_start_51 .. :try_end_65} :catchall_66

    goto :goto_80

    :catchall_66
    move-exception p0

    goto :goto_84

    :catch_68
    move-exception p0

    :try_start_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " hasContentInTargetDb false, e: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_66

    :goto_80
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_88

    :goto_84
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_88
    :goto_88
    const/4 p0, 0x0

    return p0
.end method

.method private static final isRemoveDuplicateCards(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "isRemoveDuplicateCards. addCardItem.itemType = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". addCardItem.mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". originalCardItem.mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const-string v2, "AddCardManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2f

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne p1, p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method public static final loadDefaultFavorites(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "idp"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/ota/AddCardUtils;->updateIdpLayoutWithModeLayout(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "load_default_favorites"

    invoke-static {p0, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/ota/AddCardUtils;->resetIdpLayoutWithOriginal(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;[I)V

    return-void
.end method

.method public static final loadWorkspaceItemsDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    const-string v4, "container"

    const-string/jumbo v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "itemType"

    const-string v11, "card_type"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "-100"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "container = ?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getSpecialItemInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    new-instance v3, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v3}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMContainer()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_87

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardType()I

    move-result v2

    iput v2, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    :cond_87
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_8b
    return-object v0
.end method

.method public static final loadWorkspaceScreensDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher3/util/IntArray;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "screenRank"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getScreenInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    invoke-virtual {p1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->getMId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    goto :goto_20

    :cond_34
    return-object v0
.end method

.method public static final removeDuplicateCards(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "originalDatabaseData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addCardList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_38

    :cond_18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v1, Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    new-instance v0, Lcom/android/launcher/folder/download/b;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_1c

    :cond_38
    :goto_38
    return-void
.end method

.method private static final removeDuplicateCards$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
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

.method private static final resetIdpLayoutWithOriginal(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;[I)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_e

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    aget v2, p2, v3

    if-eq v0, v2, :cond_16

    :cond_e
    aget v0, p2, v1

    iput v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aget p2, p2, v3

    iput p2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    :cond_16
    const-string p2, " resetIdpLayoutWithOriginal newIdpCellXY: ["

    invoke-static {p0, p2}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AddCardManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final runTaskBlockAndWait(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AddCardManager"

    const-string v1, "executor"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "task"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v2, Lcom/android/launcher/widget/a;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher/widget/a;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_1a
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "runTaskBlockAndWait: task run done or wait timeout "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_41
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_49

    const/4 p0, 0x1

    return p0

    :cond_49
    const-string/jumbo p1, "runTaskBlockAndWait: task run e: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static final runTaskBlockAndWait$lambda$7(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AddCardManager"

    const-string/jumbo v1, "runTaskBlockAndWait: task run start!"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-string/jumbo p0, "runTaskBlockAndWait: task run end!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final updateClockInfoInDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;III)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetModeItemUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetProviderName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "oldProviderName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateClockInfoInDb update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clockSpanY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddCardManager"

    invoke-static {v1, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "appWidgetProvider"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string/jumbo v3, "spanY"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " updateClockWidgetInWorkspaceIfNeed update "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s spanXY ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", 3] to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", 1], at position ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static final updateClockWidgetInDbIfNeed(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILcom/android/launcher/mode/LauncherMode;)Lh4/j;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p5

    const-string/jumbo v8, "spanX"

    const-string v9, "cellY"

    const-string v10, "cellX"

    const-string v12, "_id"

    const-string v13, "appWidgetProvider"

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "originProvider"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetProvider"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targetMode"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "screenRank"

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getScreenInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4c

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->getMId()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v4

    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " updateClockWidgetInDbIfNeed firstScreenId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "AddCardManager"

    invoke-static {v15, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_168

    const/4 v2, 0x0

    :try_start_71
    const-string v21, "cellY, cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    filled-new-array {v12, v13, v10, v9, v8}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "container = ? AND screen = ? AND itemType = ? AND appWidgetProvider = ? AND spanY = ?"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v17, "-100"

    aput-object v17, v6, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    const-string v3, "5"

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v7, v6, v1

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a1} :catch_148
    .catchall {:try_start_71 .. :try_end_a1} :catchall_146

    if-eqz v7, :cond_129

    :try_start_a3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_129

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " updateClockWidgetInDbIfNeed cursor count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v9, Lh4/j;

    const-string/jumbo v1, "targetModeItemUri"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_fd} :catch_125
    .catchall {:try_start_a3 .. :try_end_fd} :catchall_121

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v5

    move v4, v12

    move-object/from16 v5, p3

    move-object v0, v6

    move/from16 v6, p4

    move-object v13, v7

    move-object v7, v0

    move-object v0, v9

    move v9, v10

    move/from16 v10, v16

    :try_start_10e
    invoke-static/range {v1 .. v10}, Lcom/android/launcher3/ota/AddCardUtils;->updateClockInfoInDb(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;III)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_11d} :catch_144
    .catchall {:try_start_10e .. :try_end_11d} :catchall_142

    invoke-static {v13}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_121
    move-exception v0

    move-object v13, v7

    :goto_123
    move-object v2, v13

    goto :goto_164

    :catch_125
    move-exception v0

    move-object v13, v7

    :goto_127
    move-object v2, v13

    goto :goto_149

    :cond_129
    move-object v13, v7

    :try_start_12a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " updateClockWidgetInDbIfNeed false!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_13e} :catch_144
    .catchall {:try_start_12a .. :try_end_13e} :catchall_142

    invoke-static {v13}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_168

    :catchall_142
    move-exception v0

    goto :goto_123

    :catch_144
    move-exception v0

    goto :goto_127

    :catchall_146
    move-exception v0

    goto :goto_164

    :catch_148
    move-exception v0

    :goto_149
    :try_start_149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " updateClockWidgetInDbIfNeed false! e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_149 .. :try_end_160} :catchall_146

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_168

    :goto_164
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_168
    :goto_168
    new-instance v0, Lh4/j;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final updateIdpLayoutWithModeLayout(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    const-string v0, " updateIdpLayoutWithModeLayout layoutCellXY: "

    invoke-static {p1, v0}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddCardManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v3, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v4, 0x0

    aput v3, v0, v4

    iget v3, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v5, 0x1

    aput v3, v0, v5

    const-string v3, " updateIdpLayoutWithModeLayout oldIdpCellXY: "

    invoke-static {p1, v3}, Lw/a;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aget v0, p0, v4

    if-ne p1, v0, :cond_5d

    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    aget v0, p0, v5

    if-eq p1, v0, :cond_65

    :cond_5d
    aget p1, p0, v4

    iput p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aget p0, p0, v5

    iput p0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    :cond_65
    return-void
.end method

.method public static final updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_26

    invoke-virtual {p1, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    if-ltz v5, :cond_23

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    :goto_3a
    if-ge v3, v2, :cond_6a

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    const-string v6, "_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "screenRank"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_6a
    const-string v0, "com.android.launcher.settings"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    if-eqz p2, :cond_a0

    monitor-enter p2

    :try_start_72
    iget-object p0, p2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object p0, p2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    const-string p0, "Launcher.Model"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateWorkspaceScreenOrder finished: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_72 .. :try_end_9b} :catchall_9d

    monitor-exit p2

    goto :goto_a0

    :catchall_9d
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_a0
    :goto_a0
    return-void
.end method

.method public static synthetic updateWorkspaceScreenOrder$default(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/ota/AddCardUtils;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method
