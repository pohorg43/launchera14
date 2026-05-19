.class public final Lpantanal/app/bean/CardConfigInfo$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/CardConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/app/bean/CardConfigInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProto(Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;)Lpantanal/app/bean/CardConfigInfo;
    .registers 49

    move-object/from16 v0, p1

    const-string v1, "proto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lpantanal/app/bean/CardConfigInfo;

    move-object v2, v1

    iget v3, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    iget v4, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    iget-object v5, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    iget-object v6, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    iget-object v7, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    iget-object v8, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    iget-object v9, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    iget v10, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    iget v11, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    iget-object v12, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    iget-object v13, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    iget v14, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    iget-boolean v15, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    move-object/from16 v45, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    move-object/from16 v46, v2

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lpantanal/app/bean/CardConfigInfo$Companion;->getOperationIcon(I)I

    move-result v16

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    move/from16 v18, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    move/from16 v19, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    move/from16 v20, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    move/from16 v23, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    move/from16 v24, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupOrder:I

    move/from16 v25, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    move-object/from16 v27, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyType:I

    move/from16 v31, v1

    iget-boolean v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlySecure:Z

    move/from16 v32, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    move-object/from16 v37, v1

    iget v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showTitle:I

    move/from16 v38, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-boolean v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->isDarkStyle:Z

    move/from16 v40, v1

    iget-boolean v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showWhenLocked:Z

    move/from16 v41, v1

    iget-object v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    move-object/from16 v42, v1

    iget-boolean v1, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->supportSuperChannel:Z

    move/from16 v43, v1

    iget-object v0, v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v2, v46

    invoke-direct/range {v2 .. v44}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-object v45
.end method

.method public final getOperationIcon(I)I
    .registers 5

    const/4 p0, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v0, :cond_e

    if-eq p1, p0, :cond_13

    const/4 p0, -0x1

    goto :goto_13

    :cond_e
    move p0, v0

    goto :goto_13

    :cond_10
    move p0, v1

    goto :goto_13

    :cond_12
    move p0, v2

    :cond_13
    :goto_13
    return p0
.end method

.method public final getSize(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/4 p0, -0x1

    goto :goto_18

    :pswitch_5  #0x9
    const/16 p0, 0x9

    goto :goto_18

    :pswitch_8  #0x8
    const/16 p0, 0x8

    goto :goto_18

    :pswitch_b  #0x7
    const/4 p0, 0x7

    goto :goto_18

    :pswitch_d  #0x6
    const/4 p0, 0x6

    goto :goto_18

    :pswitch_f  #0x5
    const/4 p0, 0x5

    goto :goto_18

    :pswitch_11  #0x4
    const/4 p0, 0x4

    goto :goto_18

    :pswitch_13  #0x3
    const/4 p0, 0x3

    goto :goto_18

    :pswitch_15  #0x2
    const/4 p0, 0x2

    goto :goto_18

    :pswitch_17  #0x1
    const/4 p0, 0x1

    :goto_18
    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_15  #00000002
        :pswitch_13  #00000003
        :pswitch_11  #00000004
        :pswitch_f  #00000005
        :pswitch_d  #00000006
        :pswitch_b  #00000007
        :pswitch_8  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method

.method public final toCategory(I)Lpantanal/app/bean/CardCategory;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    const/16 p0, 0x64

    if-eq p1, p0, :cond_d

    sget-object p0, Lpantanal/app/bean/CardCategory;->UNKNOWN:Lpantanal/app/bean/CardCategory;

    goto :goto_15

    :cond_d
    sget-object p0, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    goto :goto_15

    :cond_10
    sget-object p0, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    goto :goto_15

    :cond_13
    sget-object p0, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    :goto_15
    return-object p0
.end method

.method public final toDecisionCardConfig(Lpantanal/app/bean/CardConfigInfo;)Lpantanal/decision/DecisionCardConfig;
    .registers 23

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/decision/DecisionCardConfig;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_13

    move-object v4, v3

    goto :goto_14

    :cond_13
    move-object v4, v2

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getType()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    move-object v6, v3

    goto :goto_21

    :cond_20
    move-object v6, v2

    :goto_21
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    move-object v7, v3

    goto :goto_2a

    :cond_29
    move-object v7, v2

    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getSize()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_36

    move-object v9, v3

    goto :goto_37

    :cond_36
    move-object v9, v2

    :goto_37
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    move-object/from16 v20, v3

    goto :goto_42

    :cond_40
    move-object/from16 v20, v2

    :goto_42
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getCategory()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardConfigInfo;->getSupportSuperChannel()Z

    move-result v17

    const/16 v18, 0x3f00

    const/16 v19, 0x0

    move-object v2, v0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v20

    invoke-direct/range {v2 .. v19}, Lpantanal/decision/DecisionCardConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
