.class public final Lpantanal/app/manager/util/ProtoDataUtilKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProtoDataUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoDataUtil.kt\npantanal/app/manager/util/ProtoDataUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,162:1\n1855#2,2:163\n1#3:165\n215#4,2:166\n37#5,2:168\n*S KotlinDebug\n*F\n+ 1 ProtoDataUtil.kt\npantanal/app/manager/util/ProtoDataUtilKt\n*L\n45#1:163,2\n125#1:166,2\n131#1:168,2\n*E\n"
    }
.end annotation


# direct methods
.method private static final parseJson([BLpantanal/app/bean/Entrance;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 15

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, "PantanalUIData.data = "

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "CardServiceProxy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->parseData(Ljava/lang/String;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object p0

    invoke-static {p0}, Lpantanal/app/manager/util/ProtoDataUtilKt;->toSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object p0

    return-object p0
.end method

.method public static final toCardActionProto(Lpantanal/app/manager/model/CardAction;IIILpantanal/app/bean/CardViewInfo;)Lpantanal/app/nano/CardActionProto;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/nano/CardActionProto;

    invoke-direct {v0}, Lpantanal/app/nano/CardActionProto;-><init>()V

    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getAction()I

    move-result v1

    iput v1, v0, Lpantanal/app/nano/CardActionProto;->action:I

    iput p2, v0, Lpantanal/app/nano/CardActionProto;->cardId:I

    iput p1, v0, Lpantanal/app/nano/CardActionProto;->cardType:I

    iput p3, v0, Lpantanal/app/nano/CardActionProto;->hostId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3b

    const-string p2, "lifeCycleTraceContext"

    invoke-virtual {p4, p2}, Lpantanal/app/bean/CardViewInfo;->getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p2

    if-eqz p2, :cond_3b

    sget-object p3, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {p3, p2}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToJsonString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3b

    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_3b

    const-string v1, "SecondTermTraceContext"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_3b
    if-eqz p4, :cond_65

    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-virtual {p4}, Lpantanal/app/bean/CardViewInfo;->isSupportMultiInstance()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "is_support_multi_instance"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_53
    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_65

    invoke-virtual {p4}, Lpantanal/app/bean/CardViewInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "service_instance_id"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_65
    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_98

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_73
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p4, Lpantanal/app/nano/CardActionProto$ParamEntry;

    invoke-direct {p4}, Lpantanal/app/nano/CardActionProto$ParamEntry;-><init>()V

    iput-object p3, p4, Lpantanal/app/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    iput-object p2, p4, Lpantanal/app/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_98
    const/4 p0, 0x0

    new-array p0, p0, [Lpantanal/app/nano/CardActionProto$ParamEntry;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lpantanal/app/nano/CardActionProto$ParamEntry;

    iput-object p0, v0, Lpantanal/app/nano/CardActionProto;->param:[Lpantanal/app/nano/CardActionProto$ParamEntry;

    return-object v0
.end method

.method public static synthetic toCardActionProto$default(Lpantanal/app/manager/model/CardAction;IIILpantanal/app/bean/CardViewInfo;ILjava/lang/Object;)Lpantanal/app/nano/CardActionProto;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lpantanal/app/manager/util/ProtoDataUtilKt;->toCardActionProto(Lpantanal/app/manager/model/CardAction;IIILpantanal/app/bean/CardViewInfo;)Lpantanal/app/nano/CardActionProto;

    move-result-object p0

    return-object p0
.end method

.method private static final toSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 27

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getGrade()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getShouldShow()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getRequestHideStatusBar()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getNotificationIdList()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getShowHostMap()Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getLockScreenShowHostMap()Ljava/util/Map;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getDataSourcePkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getCancelPanelActionConfig()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getPanelActionConfigMap()Ljava/util/Map;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getControlAction()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getRemindLevel()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getShouldFocus()Z

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getFocusTimestamp()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getExtensibleActionMap()Ljava/util/Map;

    move-result-object v22

    new-instance v25, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-object/from16 v0, v25

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x380

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v25
.end method

.method public static final toUiData(Lpantanal/app/nano/UIDataProto;Lpantanal/app/bean/Entrance;IZLkotlin/jvm/functions/Function1;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/nano/UIDataProto;",
            "Lpantanal/app/bean/Entrance;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "entrance"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lpantanal/app/nano/UIDataProto;->idMaps:[Lpantanal/app/nano/UIDataProto$IdMapsEntry;

    const/4 v5, 0x0

    if-eqz v4, :cond_5b

    const-string v6, "this.idMaps"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v4

    const/4 v7, 0x1

    if-nez v4, :cond_27

    move v4, v7

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    xor-int/2addr v4, v7

    if-eqz v4, :cond_5b

    iget-object v4, v0, Lpantanal/app/nano/UIDataProto;->idMaps:[Lpantanal/app/nano/UIDataProto$IdMapsEntry;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpantanal/app/nano/UIDataProto$IdMapsEntry;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v5, Lpantanal/app/nano/UIDataProto$IdMapsEntry;->key:Ljava/lang/String;

    const-string v8, "it.key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v5, Lpantanal/app/nano/UIDataProto$IdMapsEntry;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    goto :goto_38

    :cond_5b
    iget-object v4, v0, Lpantanal/app/nano/UIDataProto;->data:[B

    iget-object v6, v0, Lpantanal/app/nano/UIDataProto;->name:Ljava/lang/String;

    iget-wide v14, v0, Lpantanal/app/nano/UIDataProto;->version:J

    iget v7, v0, Lpantanal/app/nano/UIDataProto;->themeId:I

    iget-object v13, v0, Lpantanal/app/nano/UIDataProto;->value:[B

    iget-boolean v12, v0, Lpantanal/app/nano/UIDataProto;->forceChangeCardUI:Z

    iget-object v11, v0, Lpantanal/app/nano/UIDataProto;->layoutName:Ljava/lang/String;

    iget-object v0, v0, Lpantanal/app/nano/UIDataProto;->extraMsg:Ljava/lang/String;

    sget-object v16, Ly8/c;->a:Ly8/c;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toUiData entrance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cardType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " shouldParseSeedlingUIData:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "CardServiceProxy"

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v9, Lpantanal/app/bean/PantanalUIData;

    const-string v8, "data"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v8, "layoutName"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "extraMsg"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    move-object v8, v9

    move-object/from16 v27, v9

    move-object v9, v4

    move-object/from16 v20, v11

    move-object v11, v5

    move/from16 v21, v12

    move-object v12, v6

    move-object/from16 v22, v13

    move-object/from16 v13, v16

    move-wide/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v22

    move/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v19}, Lpantanal/app/bean/PantanalUIData;-><init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    if-eqz v2, :cond_12f

    :try_start_df
    invoke-static {v4, v1}, Lpantanal/app/manager/util/ProtoDataUtilKt;->parseJson([BLpantanal/app/bean/Entrance;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v19

    new-instance v1, Lpantanal/app/bean/PantanalUIData;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v8, v1

    move-object v9, v4

    move/from16 v10, p2

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v15, v22

    move/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v19}, Lpantanal/app/bean/PantanalUIData;-><init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_103
    .catchall {:try_start_df .. :try_end_103} :catchall_104

    goto :goto_109

    :catchall_104
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_109
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_134

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parse seedlingUIDataToEntrance error = "

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardServiceProxy"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v1, v27

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    :cond_12f
    move-object/from16 v1, v27

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_134
    :goto_134
    return-void
.end method
