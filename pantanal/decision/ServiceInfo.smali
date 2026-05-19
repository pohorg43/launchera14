.class public final Lpantanal/decision/ServiceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/ServiceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/ServiceInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "ServiceInfo"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cannotReduceRecommend:Z

.field private channelType:I

.field private cloudRemindSwitch:I

.field private final extras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private forceRebuild:Z

.field private groupPriority:I

.field private hostPackage:Ljava/lang/String;

.field private final initData:Ljava/lang/String;

.field private instanceId:Ljava/lang/Long;

.field private intentCategory:I

.field private intentId:Ljava/lang/Long;

.field private intentPosition:I

.field private isGuaranteedCard:Z

.field private isParamsSendToSeedling:I

.field private isSceneFocus:Z

.field private final isSupportMultiInstance:Z

.field private needToWaitCardData:Z

.field private newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

.field private policy:Ljava/lang/String;

.field private sceneId:J

.field private final score:F

.field private seedlingType:I

.field private serviceCategory:I

.field private final serviceId:Ljava/lang/String;

.field private final serviceInstanceId:Ljava/lang/String;

.field private serviceLevel:Ljava/lang/String;

.field private final serviceType:I

.field private sizeToCardConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sizeToCardType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sizeToDecisionCardConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;"
        }
    .end annotation
.end field

.field private subdomain:Ljava/lang/String;

.field private final supportCardSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final supportEntrance:I

.field private final timeStamp:J

.field private final versionCode:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/ServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/ServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/ServiceInfo;->Companion:Lpantanal/decision/ServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)V
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJIZZIIIZI",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;IZ",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p26

    move-object/from16 v4, p28

    move-object/from16 v5, p29

    move-object/from16 v6, p32

    const-string v7, "serviceId"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "supportCardSizes"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sizeToCardType"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sizeToCardConfig"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sizeToDecisionCardConfig"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceInstanceId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lpantanal/decision/ServiceInfo;->serviceType:I

    iput-object v2, v0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    move v1, p4

    iput v1, v0, Lpantanal/decision/ServiceInfo;->score:F

    move v1, p5

    iput v1, v0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    move-object v1, p6

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lpantanal/decision/ServiceInfo;->versionCode:J

    move/from16 v1, p11

    iput v1, v0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    move/from16 v1, p12

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    move/from16 v1, p14

    iput v1, v0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    move/from16 v1, p15

    iput v1, v0, Lpantanal/decision/ServiceInfo;->channelType:I

    move/from16 v1, p16

    iput v1, v0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    move/from16 v1, p18

    iput v1, v0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    move-object/from16 v1, p21

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v1, p22

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    move-object/from16 v1, p24

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object/from16 v1, p25

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    iput-object v3, v0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    move/from16 v1, p27

    iput v1, v0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    iput-object v4, v0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    iput-object v5, v0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    move/from16 v1, p30

    iput v1, v0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    move/from16 v1, p31

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    iput-object v6, v0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    move/from16 v1, p33

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    move-wide/from16 v1, p34

    iput-wide v1, v0, Lpantanal/decision/ServiceInfo;->sceneId:J

    move-object/from16 v1, p36

    iput-object v1, v0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    move/from16 v1, p37

    iput-boolean v1, v0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    move/from16 v1, p38

    iput v1, v0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 84

    move/from16 v0, p39

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_13

    move-wide v12, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v12, p9

    :goto_15
    and-int/lit16 v1, v0, 0x100

    const/4 v5, 0x0

    if-eqz v1, :cond_1c

    move v14, v5

    goto :goto_1e

    :cond_1c
    move/from16 v14, p11

    :goto_1e
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_24

    move v15, v5

    goto :goto_26

    :cond_24
    move/from16 v15, p12

    :goto_26
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2d

    move/from16 v16, v5

    goto :goto_2f

    :cond_2d
    move/from16 v16, p13

    :goto_2f
    and-int/lit16 v1, v0, 0x800

    const/4 v6, 0x1

    if-eqz v1, :cond_37

    move/from16 v17, v6

    goto :goto_39

    :cond_37
    move/from16 v17, p14

    :goto_39
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_40

    move/from16 v18, v6

    goto :goto_42

    :cond_40
    move/from16 v18, p15

    :goto_42
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_49

    move/from16 v19, v5

    goto :goto_4b

    :cond_49
    move/from16 v19, p16

    :goto_4b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_52

    move/from16 v20, v5

    goto :goto_54

    :cond_52
    move/from16 v20, p17

    :goto_54
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5d

    move/from16 v21, v6

    goto :goto_5f

    :cond_5d
    move/from16 v21, p18

    :goto_5f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_67

    move-object/from16 v22, v2

    goto :goto_69

    :cond_67
    move-object/from16 v22, p19

    :goto_69
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_71

    move-object/from16 v23, v2

    goto :goto_73

    :cond_71
    move-object/from16 v23, p20

    :goto_73
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7b

    move-object/from16 v24, v2

    goto :goto_7d

    :cond_7b
    move-object/from16 v24, p21

    :goto_7d
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_85

    move-object/from16 v25, v2

    goto :goto_87

    :cond_85
    move-object/from16 v25, p22

    :goto_87
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8f

    move-object/from16 v26, v2

    goto :goto_91

    :cond_8f
    move-object/from16 v26, p23

    :goto_91
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_99

    move-object/from16 v27, v2

    goto :goto_9b

    :cond_99
    move-object/from16 v27, p24

    :goto_9b
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a8

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v29, v1

    goto :goto_aa

    :cond_a8
    move-object/from16 v29, p26

    :goto_aa
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b2

    move/from16 v30, v6

    goto :goto_b4

    :cond_b2
    move/from16 v30, p27

    :goto_b4
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v31, v1

    goto :goto_c3

    :cond_c1
    move-object/from16 v31, p28

    :goto_c3
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v32, v1

    goto :goto_d2

    :cond_d0
    move-object/from16 v32, p29

    :goto_d2
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    const/4 v6, 0x4

    if-eqz v1, :cond_db

    move/from16 v33, v6

    goto :goto_dd

    :cond_db
    move/from16 v33, p30

    :goto_dd
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e5

    move/from16 v34, v5

    goto :goto_e7

    :cond_e5
    move/from16 v34, p31

    :goto_e7
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f1

    const-string v1, ""

    move-object/from16 v35, v1

    goto :goto_f3

    :cond_f1
    move-object/from16 v35, p32

    :goto_f3
    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_fb

    move/from16 v36, v5

    goto :goto_fd

    :cond_fb
    move/from16 v36, p33

    :goto_fd
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_105

    move-wide/from16 v37, v3

    goto :goto_107

    :cond_105
    move-wide/from16 v37, p34

    :goto_107
    and-int/lit8 v0, p40, 0x1

    if-eqz v0, :cond_10e

    move-object/from16 v39, v2

    goto :goto_110

    :cond_10e
    move-object/from16 v39, p36

    :goto_110
    and-int/lit8 v0, p40, 0x2

    if-eqz v0, :cond_117

    move/from16 v40, v5

    goto :goto_119

    :cond_117
    move/from16 v40, p37

    :goto_119
    and-int/lit8 v0, p40, 0x4

    if-eqz v0, :cond_120

    move/from16 v41, v5

    goto :goto_122

    :cond_120
    move/from16 v41, p38

    :goto_122
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v28, p25

    invoke-direct/range {v3 .. v41}, Lpantanal/decision/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v20, p11

    const-string v11, "serviceId"

    move-object/from16 v12, p1

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "supportCardSizes"

    move-object/from16 v12, p3

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, ""

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x4

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v39, 0x36800000

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v0 .. v41}, Lpantanal/decision/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_13

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v12, p9

    :goto_15
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1b

    move-object v14, v2

    goto :goto_1d

    :cond_1b
    move-object/from16 v14, p11

    :goto_1d
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v14}, Lpantanal/decision/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/decision/ServiceInfo;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZIIILjava/lang/Object;)Lpantanal/decision/ServiceInfo;
    .registers 59

    move-object/from16 v0, p0

    move/from16 v1, p39

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget v3, v0, Lpantanal/decision/ServiceInfo;->serviceType:I

    goto :goto_16

    :cond_14
    move/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget v5, v0, Lpantanal/decision/ServiceInfo;->score:F

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget v6, v0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-wide v8, v0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    goto :goto_43

    :cond_41
    move-wide/from16 v8, p7

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget-wide v10, v0, Lpantanal/decision/ServiceInfo;->versionCode:J

    goto :goto_4c

    :cond_4a
    move-wide/from16 v10, p9

    :goto_4c
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_53

    iget v12, v0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    goto :goto_55

    :cond_53
    move/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5c

    iget-boolean v13, v0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    goto :goto_5e

    :cond_5c
    move/from16 v13, p12

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget-boolean v14, v0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    goto :goto_67

    :cond_65
    move/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget v15, v0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    goto :goto_70

    :cond_6e
    move/from16 v15, p14

    :goto_70
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget v15, v0, Lpantanal/decision/ServiceInfo;->channelType:I

    goto :goto_7b

    :cond_79
    move/from16 v15, p15

    :goto_7b
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget v15, v0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    goto :goto_86

    :cond_84
    move/from16 v15, p16

    :goto_86
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    goto :goto_91

    :cond_8f
    move/from16 v15, p17

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_9d

    iget v15, v0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    goto :goto_9f

    :cond_9d
    move/from16 v15, p18

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_aa

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    goto :goto_ac

    :cond_aa
    move-object/from16 v15, p19

    :goto_ac
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_b7

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    goto :goto_b9

    :cond_b7
    move-object/from16 v15, p20

    :goto_b9
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_c4

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    goto :goto_c6

    :cond_c4
    move-object/from16 v15, p21

    :goto_c6
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_d1

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    goto :goto_d3

    :cond_d1
    move-object/from16 v15, p22

    :goto_d3
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_de

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    goto :goto_e0

    :cond_de
    move-object/from16 v15, p23

    :goto_e0
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_eb

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    goto :goto_ed

    :cond_eb
    move-object/from16 v15, p24

    :goto_ed
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_f8

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    goto :goto_fa

    :cond_f8
    move-object/from16 v15, p25

    :goto_fa
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_105

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    goto :goto_107

    :cond_105
    move-object/from16 v15, p26

    :goto_107
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_112

    iget v15, v0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    goto :goto_114

    :cond_112
    move/from16 v15, p27

    :goto_114
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_11f

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    goto :goto_121

    :cond_11f
    move-object/from16 v15, p28

    :goto_121
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_12c

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    goto :goto_12e

    :cond_12c
    move-object/from16 v15, p29

    :goto_12e
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_139

    iget v15, v0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    goto :goto_13b

    :cond_139
    move/from16 v15, p30

    :goto_13b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_146

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    goto :goto_148

    :cond_146
    move/from16 v15, p31

    :goto_148
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p31, v15

    if-eqz v16, :cond_153

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    goto :goto_155

    :cond_153
    move-object/from16 v15, p32

    :goto_155
    const/high16 v16, 0x40000000  # 2.0f

    and-int v16, v1, v16

    move-object/from16 p32, v15

    if-eqz v16, :cond_160

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    goto :goto_162

    :cond_160
    move/from16 v15, p33

    :goto_162
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    move/from16 p13, v14

    move/from16 p33, v15

    if-eqz v1, :cond_16f

    iget-wide v14, v0, Lpantanal/decision/ServiceInfo;->sceneId:J

    goto :goto_171

    :cond_16f
    move-wide/from16 v14, p34

    :goto_171
    and-int/lit8 v1, p40, 0x1

    if-eqz v1, :cond_178

    iget-object v1, v0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    goto :goto_17a

    :cond_178
    move-object/from16 v1, p36

    :goto_17a
    and-int/lit8 v16, p40, 0x2

    move-object/from16 p36, v1

    if-eqz v16, :cond_183

    iget-boolean v1, v0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    goto :goto_185

    :cond_183
    move/from16 v1, p37

    :goto_185
    and-int/lit8 v16, p40, 0x4

    move/from16 p37, v1

    if-eqz v16, :cond_18e

    iget v1, v0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    goto :goto_190

    :cond_18e
    move/from16 v1, p38

    :goto_190
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move/from16 p11, v12

    move/from16 p12, v13

    move-wide/from16 p34, v14

    move/from16 p38, v1

    invoke-virtual/range {p0 .. p38}, Lpantanal/decision/ServiceInfo;->copy(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)Lpantanal/decision/ServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final component11()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final component13()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->channelType:I

    return p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final component15()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final component17()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component19()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component22()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-object p0
.end method

.method public final component25()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    return p0
.end method

.method public final component26()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component27()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component28()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    return p0
.end method

.method public final component29()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    return p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final component30()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component31()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    return p0
.end method

.method public final component32()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->sceneId:J

    return-wide v0
.end method

.method public final component33()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final component34()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    return p0
.end method

.method public final component35()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->score:F

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final component8()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)Lpantanal/decision/ServiceInfo;
    .registers 79
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJIZZIIIZI",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;IZ",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "ZI)",
            "Lpantanal/decision/ServiceInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move-object/from16 v32, p32

    move/from16 v33, p33

    move-wide/from16 v34, p34

    move-object/from16 v36, p36

    move/from16 v37, p37

    move/from16 v38, p38

    const-string v0, "serviceId"

    move-object/from16 p0, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportCardSizes"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeToCardType"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeToCardConfig"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeToDecisionCardConfig"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceInstanceId"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v39, Lpantanal/decision/ServiceInfo;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v38}, Lpantanal/decision/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)V

    return-object v39
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/decision/ServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/decision/ServiceInfo;

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lpantanal/decision/ServiceInfo;->serviceType:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->serviceType:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lpantanal/decision/ServiceInfo;->score:F

    iget v3, p1, Lpantanal/decision/ServiceInfo;->score:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-wide v3, p0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    iget-wide v5, p1, Lpantanal/decision/ServiceInfo;->timeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4f

    return v2

    :cond_4f
    iget-wide v3, p0, Lpantanal/decision/ServiceInfo;->versionCode:J

    iget-wide v5, p1, Lpantanal/decision/ServiceInfo;->versionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_58

    return v2

    :cond_58
    iget v1, p0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    if-eq v1, v3, :cond_66

    return v2

    :cond_66
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    if-eq v1, v3, :cond_6d

    return v2

    :cond_6d
    iget v1, p0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    if-eq v1, v3, :cond_74

    return v2

    :cond_74
    iget v1, p0, Lpantanal/decision/ServiceInfo;->channelType:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->channelType:I

    if-eq v1, v3, :cond_7b

    return v2

    :cond_7b
    iget v1, p0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->intentCategory:I

    if-eq v1, v3, :cond_82

    return v2

    :cond_82
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    if-eq v1, v3, :cond_89

    return v2

    :cond_89
    iget v1, p0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->seedlingType:I

    if-eq v1, v3, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    return v2

    :cond_a6
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    return v2

    :cond_b1
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    :cond_bc
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    return v2

    :cond_c7
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    return v2

    :cond_d2
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    return v2

    :cond_dd
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    return v2

    :cond_e8
    iget v1, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    if-eq v1, v3, :cond_ef

    return v2

    :cond_ef
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    return v2

    :cond_fa
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    return v2

    :cond_105
    iget v1, p0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    iget v3, p1, Lpantanal/decision/ServiceInfo;->groupPriority:I

    if-eq v1, v3, :cond_10c

    return v2

    :cond_10c
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    if-eq v1, v3, :cond_113

    return v2

    :cond_113
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11e

    return v2

    :cond_11e
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    if-eq v1, v3, :cond_125

    return v2

    :cond_125
    iget-wide v3, p0, Lpantanal/decision/ServiceInfo;->sceneId:J

    iget-wide v5, p1, Lpantanal/decision/ServiceInfo;->sceneId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12e

    return v2

    :cond_12e
    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    return v2

    :cond_139
    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    iget-boolean v3, p1, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    if-eq v1, v3, :cond_140

    return v2

    :cond_140
    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    iget p1, p1, Lpantanal/decision/ServiceInfo;->intentPosition:I

    if-eq p0, p1, :cond_147

    return v2

    :cond_147
    return v0
.end method

.method public final getCannotReduceRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final getChannelType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->channelType:I

    return p0
.end method

.method public final getCloudRemindSwitch()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    return p0
.end method

.method public final getExtras()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getForceRebuild()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final getGroupPriority()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    return p0
.end method

.method public final getHostPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getIntentCategory()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final getIntentId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getIntentPosition()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    return p0
.end method

.method public final getNeedToWaitCardData()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    return p0
.end method

.method public final getNewSeedlingCardOptions()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-object p0
.end method

.method public final getPolicy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final getSceneId()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->sceneId:J

    return-wide v0
.end method

.method public final getScore()F
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->score:F

    return p0
.end method

.method public final getSeedlingType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final getServiceCategory()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceInstanceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceLevel()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final getSizeToCardConfig()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getSizeToCardType()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-object p0
.end method

.method public final getSizeToDecisionCardConfig()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getSubdomain()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportCardSizes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportEntrance()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    return p0
.end method

.method public final getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 15

    iget-object v0, p0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lpantanal/decision/ServiceInfo;->hashCode()I

    move-result v1

    const-string v2, "getUTraceIntentContext,serviceId:"

    const-string v3, ",serviceInfo:"

    invoke-static {v2, v0, v3, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez p0, :cond_2a

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, ",extras == null"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ServiceInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_2a
    const-string v2, "uTraceIntentContext"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Lcom/oplus/utrace/sdk/UTraceContext;

    if-eqz v2, :cond_4e

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v1, ",uTraceIntentContextString is UTraceContext"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "ServiceInfo"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Lcom/oplus/utrace/sdk/UTraceContext;

    goto :goto_b5

    :cond_4e
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_71

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v1, ",uTraceIntentContextString is String"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "ServiceInfo"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    goto :goto_b5

    :cond_71
    sget-object v2, Ly8/c;->a:Ly8/c;

    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_7f

    :cond_7e
    move-object v3, v1

    :goto_7f
    if-eqz p0, :cond_8a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_8b

    :cond_8a
    move-object p0, v1

    :goto_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",else,uTraceContext type:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",classLoader:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ServiceInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_b5
    return-object v1
.end method

.method public final getVersionCode()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/ServiceInfo;->serviceType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lpantanal/decision/ServiceInfo;->score:F

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    move v1, v2

    goto :goto_30

    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v3, p0, Lpantanal/decision/ServiceInfo;->versionCode:J

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    move v1, v3

    :cond_4f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    if-eqz v1, :cond_57

    move v1, v3

    :cond_57
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/decision/ServiceInfo;->channelType:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    if-eqz v1, :cond_73

    move v1, v3

    :cond_73
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    if-nez v1, :cond_84

    move v1, v2

    goto :goto_88

    :cond_84
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_88
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    if-nez v1, :cond_91

    move v1, v2

    goto :goto_95

    :cond_91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_95
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    if-nez v1, :cond_9e

    move v1, v2

    goto :goto_a2

    :cond_9e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    if-nez v1, :cond_ab

    move v1, v2

    goto :goto_af

    :cond_ab
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_af
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    if-nez v1, :cond_b8

    move v1, v2

    goto :goto_bc

    :cond_b8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_bc
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    if-nez v1, :cond_c5

    move v1, v2

    goto :goto_c9

    :cond_c5
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->hashCode()I

    move-result v1

    :goto_c9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    if-nez v1, :cond_d2

    move v1, v2

    goto :goto_d6

    :cond_d2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    const/16 v4, 0x1f

    invoke-static {v0, v1, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    if-eqz v1, :cond_107

    move v1, v3

    :cond_107
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    if-eqz v1, :cond_117

    move v1, v3

    :cond_117
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lpantanal/decision/ServiceInfo;->sceneId:J

    const/16 v1, 0x1f

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    if-nez v1, :cond_127

    goto :goto_12b

    :cond_127
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    if-eqz v1, :cond_133

    goto :goto_134

    :cond_133
    move v3, v1

    :goto_134
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isDefaultType()Z
    .registers 3

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    const-string v0, "default"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isGuaranteedCard()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final isMasterType()Z
    .registers 3

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    const-string v0, "master"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isParamsSendToSeedling()I
    .registers 1

    iget p0, p0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final isSalveType()Z
    .registers 3

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    const-string v0, "slave"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isSceneFocus()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    return p0
.end method

.method public final isSupportEntrance(I)Z
    .registers 3

    iget p0, p0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    and-int v0, p0, p1

    if-eq v0, p1, :cond_b

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final isSupportMultiInstance()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    return p0
.end method

.method public final isSupportSize(I)Z
    .registers 2

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSupportStrongRemind()Z
    .registers 2

    iget p0, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final setCannotReduceRecommend(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/ServiceInfo;->cannotReduceRecommend:Z

    return-void
.end method

.method public final setChannelType(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->channelType:I

    return-void
.end method

.method public final setCloudRemindSwitch(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    return-void
.end method

.method public final setForceRebuild(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    return-void
.end method

.method public final setGroupPriority(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    return-void
.end method

.method public final setGuaranteedCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    return-void
.end method

.method public final setHostPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-void
.end method

.method public final setInstanceId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-void
.end method

.method public final setIntentCategory(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    return-void
.end method

.method public final setIntentId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    return-void
.end method

.method public final setIntentPosition(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    return-void
.end method

.method public final setNeedToWaitCardData(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    return-void
.end method

.method public final setNewSeedlingCardOptions(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-void
.end method

.method public final setParamsSendToSeedling(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling:I

    return-void
.end method

.method public final setPolicy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    return-void
.end method

.method public final setSceneFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    return-void
.end method

.method public final setSceneId(J)V
    .registers 3

    iput-wide p1, p0, Lpantanal/decision/ServiceInfo;->sceneId:J

    return-void
.end method

.method public final setSeedlingType(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    return-void
.end method

.method public final setServiceCategory(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    return-void
.end method

.method public final setServiceLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-void
.end method

.method public final setSizeToCardConfig(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-void
.end method

.method public final setSizeToCardType(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-void
.end method

.method public final setSizeToDecisionCardConfig(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/decision/DecisionCardConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    return-void
.end method

.method public final setSubdomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    return-void
.end method

.method public final setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 3

    iget-object p0, p0, Lpantanal/decision/ServiceInfo;->extras:Landroid/util/ArrayMap;

    if-eqz p0, :cond_9

    const-string v0, "uTraceIntentContext"

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/decision/ServiceInfo;->serviceId:Ljava/lang/String;

    iget v2, v0, Lpantanal/decision/ServiceInfo;->serviceType:I

    iget-object v3, v0, Lpantanal/decision/ServiceInfo;->supportCardSizes:Ljava/util/List;

    iget-wide v4, v0, Lpantanal/decision/ServiceInfo;->sceneId:J

    iget-object v6, v0, Lpantanal/decision/ServiceInfo;->serviceLevel:Ljava/lang/String;

    iget-boolean v7, v0, Lpantanal/decision/ServiceInfo;->isSceneFocus:Z

    iget v8, v0, Lpantanal/decision/ServiceInfo;->score:F

    iget v9, v0, Lpantanal/decision/ServiceInfo;->intentPosition:I

    iget v10, v0, Lpantanal/decision/ServiceInfo;->supportEntrance:I

    iget-wide v11, v0, Lpantanal/decision/ServiceInfo;->timeStamp:J

    iget-wide v13, v0, Lpantanal/decision/ServiceInfo;->versionCode:J

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->forceRebuild:Z

    move/from16 v16, v15

    iget v15, v0, Lpantanal/decision/ServiceInfo;->serviceCategory:I

    move/from16 v17, v15

    iget v15, v0, Lpantanal/decision/ServiceInfo;->channelType:I

    move/from16 v18, v15

    iget v15, v0, Lpantanal/decision/ServiceInfo;->intentCategory:I

    move/from16 v19, v15

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->isGuaranteedCard:Z

    move/from16 v20, v15

    iget v15, v0, Lpantanal/decision/ServiceInfo;->seedlingType:I

    move/from16 v21, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->subdomain:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v23, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    const/16 v24, 0x0

    if-eqz v15, :cond_49

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v25, v15

    goto :goto_4b

    :cond_49
    move-object/from16 v25, v24

    :goto_4b
    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->policy:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->initData:Ljava/lang/String;

    if-eqz v15, :cond_57

    invoke-static {v15}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntentKt;->getPolicyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_57
    iget v15, v0, Lpantanal/decision/ServiceInfo;->cloudRemindSwitch:I

    move/from16 v27, v15

    iget v15, v0, Lpantanal/decision/ServiceInfo;->groupPriority:I

    move/from16 v28, v15

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->needToWaitCardData:Z

    move/from16 v29, v15

    iget-boolean v15, v0, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance:Z

    move/from16 v30, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    move-object/from16 v31, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    move-object/from16 v32, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    move-object/from16 v33, v15

    iget-object v15, v0, Lpantanal/decision/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    iget-object v0, v0, Lpantanal/decision/ServiceInfo;->sizeToDecisionCardConfig:Ljava/util/Map;

    move-object/from16 p0, v0

    const-string v0, "ServiceInfo(serviceId:"

    move-object/from16 v34, v15

    const-string v15, ", serviceType:"

    move-wide/from16 v35, v13

    const-string v13, ", supportCardSizes:"

    invoke-static {v0, v1, v15, v2, v13}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serviceLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSceneFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", score:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", intentPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportEntrance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", forceRebuild:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCategory:"

    const-string v2, ", channelType:"

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", intentCategory:"

    const-string v2, ", isGuaranteedCard:"

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", seedlingType:"

    const-string v2, ", subdomain:"

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initData.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policyName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudRemindSwitch:"

    const-string v2, ", groupPriority:"

    move-object/from16 v4, v24

    move/from16 v3, v27

    invoke-static {v0, v4, v1, v3, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", needToWaitCardData:"

    const-string v2, ", isSupportMultiInstance:"

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceInstanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToCardType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToCardConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newSeedlingCardOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToDecisionCardConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
