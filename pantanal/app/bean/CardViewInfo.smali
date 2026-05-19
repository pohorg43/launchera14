.class public final Lpantanal/app/bean/CardViewInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/CardViewInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/CardViewInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "CardViewInfo"


# instance fields
.field private allowUIBackground:Z

.field private final cardCategory:Lpantanal/app/bean/CardCategory;

.field private final cardId:I

.field private cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

.field private componentName:Ljava/lang/String;

.field private final entrance:Lpantanal/app/bean/Entrance;

.field private final extraBundle:Landroid/os/Bundle;

.field private extraData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private extraDataToEngine:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private extraDataToEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private height:I

.field private final hostId:I

.field private initData:Ljava/lang/String;

.field private instantUri:Ljava/lang/String;

.field private final isAbnormal:Z

.field private final isDragging:Z

.field private isEntranceTriggerCardClick:Z

.field private final isRecommend:Z

.field private loadCardTimeOut:I

.field private packageName:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private serviceInfo:Lpantanal/decision/ServiceInfo;

.field private final size:I

.field private sizeCode:I

.field private sizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supportSuperChannel:Z

.field private timestamp:J

.field private final type:I

.field private waitCardDataTimeOut:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/bean/CardViewInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/bean/CardViewInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/bean/CardViewInfo;->Companion:Lpantanal/app/bean/CardViewInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/Entrance;",
            "III",
            "Lpantanal/app/bean/CardCategory;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZJZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpantanal/decision/ServiceInfo;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II",
            "Landroid/os/Bundle;",
            "Lpantanal/app/CardLaunchInterceptor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move-object/from16 v6, p15

    const-string v7, "entrance"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "cardCategory"

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sizeList"

    invoke-static {p7, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "instantUri"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceId"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "initData"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    move v1, p2

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->type:I

    move v1, p3

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    move v1, p4

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    iput-object v2, v0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    move v1, p6

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->size:I

    iput-object v3, v0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    move/from16 v1, p8

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    iput-object v4, v0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    move/from16 v1, p10

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->width:I

    move/from16 v1, p11

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->height:I

    iput-object v5, v0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    move/from16 v1, p13

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    iput-object v6, v0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    move/from16 v1, p16

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    move/from16 v1, p19

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    move-object/from16 v1, p22

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    move/from16 v1, p23

    iput-boolean v1, v0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    move-object/from16 v1, p27

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    move/from16 v1, p28

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    move/from16 v1, p29

    iput v1, v0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    move-object/from16 v1, p30

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    move-object/from16 v1, p31

    iput-object v1, v0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 69

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v9, v2

    goto :goto_b

    :cond_9
    move/from16 v9, p6

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_13

    sget-object v1, Li4/y;->a:Li4/y;

    move-object v10, v1

    goto :goto_15

    :cond_13
    move-object/from16 v10, p7

    :goto_15
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1b

    move v11, v2

    goto :goto_1d

    :cond_1b
    move/from16 v11, p8

    :goto_1d
    and-int/lit16 v1, v0, 0x100

    const-string v3, ""

    if-eqz v1, :cond_25

    move-object v12, v3

    goto :goto_27

    :cond_25
    move-object/from16 v12, p9

    :goto_27
    and-int/lit16 v1, v0, 0x200

    const/4 v4, -0x1

    if-eqz v1, :cond_2e

    move v13, v4

    goto :goto_30

    :cond_2e
    move/from16 v13, p10

    :goto_30
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_36

    move v14, v4

    goto :goto_38

    :cond_36
    move/from16 v14, p11

    :goto_38
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_3e

    move-object v15, v3

    goto :goto_40

    :cond_3e
    move-object/from16 v15, p12

    :goto_40
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_47

    move/from16 v16, v2

    goto :goto_49

    :cond_47
    move/from16 v16, p13

    :goto_49
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_50

    move/from16 v17, v2

    goto :goto_52

    :cond_50
    move/from16 v17, p14

    :goto_52
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_59

    move-object/from16 v18, v3

    goto :goto_5b

    :cond_59
    move-object/from16 v18, p15

    :goto_5b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    move/from16 v19, v1

    goto :goto_67

    :cond_65
    move/from16 v19, p16

    :goto_67
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_71

    const-wide/16 v5, 0x0

    move-wide/from16 v20, v5

    goto :goto_73

    :cond_71
    move-wide/from16 v20, p17

    :goto_73
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7b

    move/from16 v22, v2

    goto :goto_7d

    :cond_7b
    move/from16 v22, p19

    :goto_7d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_85

    move/from16 v23, v2

    goto :goto_87

    :cond_85
    move/from16 v23, p20

    :goto_87
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    const/4 v5, 0x0

    if-eqz v1, :cond_90

    move-object/from16 v24, v5

    goto :goto_92

    :cond_90
    move-object/from16 v24, p21

    :goto_92
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9a

    move-object/from16 v25, v5

    goto :goto_9c

    :cond_9a
    move-object/from16 v25, p22

    :goto_9c
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a4

    move/from16 v26, v2

    goto :goto_a6

    :cond_a4
    move/from16 v26, p23

    :goto_a6
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_ae

    move-object/from16 v27, v3

    goto :goto_b0

    :cond_ae
    move-object/from16 v27, p24

    :goto_b0
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b8

    move-object/from16 v28, v3

    goto :goto_ba

    :cond_b8
    move-object/from16 v28, p25

    :goto_ba
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c2

    move-object/from16 v29, v5

    goto :goto_c4

    :cond_c2
    move-object/from16 v29, p26

    :goto_c4
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_cc

    move-object/from16 v30, v5

    goto :goto_ce

    :cond_cc
    move-object/from16 v30, p27

    :goto_ce
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d6

    move/from16 v31, v4

    goto :goto_d8

    :cond_d6
    move/from16 v31, p28

    :goto_d8
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e0

    move/from16 v32, v4

    goto :goto_e2

    :cond_e0
    move/from16 v32, p29

    :goto_e2
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_ea

    move-object/from16 v33, v5

    goto :goto_ec

    :cond_ea
    move-object/from16 v33, p30

    :goto_ec
    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f4

    move-object/from16 v34, v5

    goto :goto_f6

    :cond_f4
    move-object/from16 v34, p31

    :goto_f6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v34}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;)V

    return-void
.end method

.method public constructor <init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;)V
    .registers 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/Entrance;",
            "III",
            "Lpantanal/app/bean/CardCategory;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZJZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lpantanal/decision/ServiceInfo;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v26, p22

    move-object/from16 v27, p23

    const-string v0, "entrance"

    move-object/from16 v34, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardCategory"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeList"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instantUri"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initData"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const-string v25, ""

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/high16 v32, 0x3c000000  # 0.0078125f

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct/range {v0 .. v33}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 53

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v9, v2

    goto :goto_b

    :cond_9
    move/from16 v9, p6

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_13

    sget-object v1, Li4/y;->a:Li4/y;

    move-object v10, v1

    goto :goto_15

    :cond_13
    move-object/from16 v10, p7

    :goto_15
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1b

    move v11, v2

    goto :goto_1d

    :cond_1b
    move/from16 v11, p8

    :goto_1d
    and-int/lit16 v1, v0, 0x100

    const-string v3, ""

    if-eqz v1, :cond_25

    move-object v12, v3

    goto :goto_27

    :cond_25
    move-object/from16 v12, p9

    :goto_27
    and-int/lit16 v1, v0, 0x200

    const/4 v4, -0x1

    if-eqz v1, :cond_2e

    move v13, v4

    goto :goto_30

    :cond_2e
    move/from16 v13, p10

    :goto_30
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_36

    move v14, v4

    goto :goto_38

    :cond_36
    move/from16 v14, p11

    :goto_38
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_3e

    move-object v15, v3

    goto :goto_40

    :cond_3e
    move-object/from16 v15, p12

    :goto_40
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_47

    move/from16 v16, v2

    goto :goto_49

    :cond_47
    move/from16 v16, p13

    :goto_49
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_50

    move/from16 v17, v2

    goto :goto_52

    :cond_50
    move/from16 v17, p14

    :goto_52
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_59

    move-object/from16 v18, v3

    goto :goto_5b

    :cond_59
    move-object/from16 v18, p15

    :goto_5b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    move/from16 v19, v1

    goto :goto_67

    :cond_65
    move/from16 v19, p16

    :goto_67
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_71

    const-wide/16 v3, 0x0

    move-wide/from16 v20, v3

    goto :goto_73

    :cond_71
    move-wide/from16 v20, p17

    :goto_73
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7b

    move/from16 v22, v2

    goto :goto_7d

    :cond_7b
    move/from16 v22, p19

    :goto_7d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_85

    move/from16 v23, v2

    goto :goto_87

    :cond_85
    move/from16 v23, p20

    :goto_87
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    move-object/from16 v24, v2

    goto :goto_92

    :cond_90
    move-object/from16 v24, p21

    :goto_92
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9a

    move-object/from16 v25, v2

    goto :goto_9c

    :cond_9a
    move-object/from16 v25, p22

    :goto_9c
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a4

    move-object/from16 v26, v2

    goto :goto_a6

    :cond_a4
    move-object/from16 v26, p23

    :goto_a6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v26}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;ILjava/lang/Object;)Lpantanal/app/bean/CardViewInfo;
    .registers 51

    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget v3, v0, Lpantanal/app/bean/CardViewInfo;->type:I

    goto :goto_16

    :cond_14
    move/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget v4, v0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    goto :goto_1f

    :cond_1d
    move/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget v5, v0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget v7, v0, Lpantanal/app/bean/CardViewInfo;->size:I

    goto :goto_3a

    :cond_38
    move/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget v9, v0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    goto :goto_4c

    :cond_4a
    move/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget v11, v0, Lpantanal/app/bean/CardViewInfo;->width:I

    goto :goto_5e

    :cond_5c
    move/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget v12, v0, Lpantanal/app/bean/CardViewInfo;->height:I

    goto :goto_67

    :cond_65
    move/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-boolean v15, v0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    goto :goto_82

    :cond_80
    move/from16 v15, p14

    :goto_82
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-boolean v15, v0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    goto :goto_9b

    :cond_99
    move/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p13, v14

    move/from16 p16, v15

    if-eqz v16, :cond_a8

    iget-wide v14, v0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    goto :goto_aa

    :cond_a8
    move-wide/from16 v14, p17

    :goto_aa
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-wide/from16 p17, v14

    if-eqz v16, :cond_b5

    iget-boolean v14, v0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    goto :goto_b7

    :cond_b5
    move/from16 v14, p19

    :goto_b7
    const/high16 v15, 0x40000

    and-int/2addr v15, v1

    if-eqz v15, :cond_bf

    iget-boolean v15, v0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    goto :goto_c1

    :cond_bf
    move/from16 v15, p20

    :goto_c1
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_cc

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    goto :goto_ce

    :cond_cc
    move-object/from16 v15, p21

    :goto_ce
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_d9

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    goto :goto_db

    :cond_d9
    move-object/from16 v15, p22

    :goto_db
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_e6

    iget-boolean v15, v0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    goto :goto_e8

    :cond_e6
    move/from16 v15, p23

    :goto_e8
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_f3

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    goto :goto_f5

    :cond_f3
    move-object/from16 v15, p24

    :goto_f5
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_100

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    goto :goto_102

    :cond_100
    move-object/from16 v15, p25

    :goto_102
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_10d

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    goto :goto_10f

    :cond_10d
    move-object/from16 v15, p26

    :goto_10f
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_11a

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    goto :goto_11c

    :cond_11a
    move-object/from16 v15, p27

    :goto_11c
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_127

    iget v15, v0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    goto :goto_129

    :cond_127
    move/from16 v15, p28

    :goto_129
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_134

    iget v15, v0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    goto :goto_136

    :cond_134
    move/from16 v15, p29

    :goto_136
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_141

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    goto :goto_143

    :cond_141
    move-object/from16 v15, p30

    :goto_143
    const/high16 v16, 0x20000000

    and-int v1, v1, v16

    if-eqz v1, :cond_14c

    iget-object v1, v0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    goto :goto_14e

    :cond_14c
    move-object/from16 v1, p31

    :goto_14e
    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p19, v14

    move-object/from16 p30, v15

    move-object/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lpantanal/app/bean/CardViewInfo;->copy(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSize$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->width:I

    return p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->height:I

    return p0
.end method

.method public final component12()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    return p0
.end method

.method public final component14()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    return p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    return p0
.end method

.method public final component17()J
    .registers 3

    iget-wide v0, p0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    return-wide v0
.end method

.method public final component18()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    return p0
.end method

.method public final component19()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->type:I

    return p0
.end method

.method public final component20()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component21()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    return-object p0
.end method

.method public final component22()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    return p0
.end method

.method public final component23()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Lpantanal/decision/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    return-object p0
.end method

.method public final component26()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component27()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    return p0
.end method

.method public final component28()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    return p0
.end method

.method public final component29()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    return p0
.end method

.method public final component30()Lpantanal/app/CardLaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    return p0
.end method

.method public final component5()Lpantanal/app/bean/CardCategory;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->size:I

    return p0
.end method

.method public final component7()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;)Lpantanal/app/bean/CardViewInfo;
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/Entrance;",
            "III",
            "Lpantanal/app/bean/CardCategory;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZJZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpantanal/decision/ServiceInfo;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II",
            "Landroid/os/Bundle;",
            "Lpantanal/app/CardLaunchInterceptor;",
            ")",
            "Lpantanal/app/bean/CardViewInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    const-string v0, "entrance"

    move-object/from16 p0, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardCategory"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeList"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instantUri"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initData"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v32, Lpantanal/app/bean/CardViewInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v31}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;)V

    return-object v32
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/CardViewInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/CardViewInfo;

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->type:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->type:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->cardId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->hostId:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->size:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->size:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    if-eq v1, v3, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->width:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->width:I

    if-eq v1, v3, :cond_5a

    return v2

    :cond_5a
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->height:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->height:I

    if-eq v1, v3, :cond_61

    return v2

    :cond_61
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    return v2

    :cond_6c
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    if-eq v1, v3, :cond_73

    return v2

    :cond_73
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    if-eq v1, v3, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    if-eq v1, v3, :cond_8c

    return v2

    :cond_8c
    iget-wide v3, p0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    iget-wide v5, p1, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_95

    return v2

    :cond_95
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    if-eq v1, v3, :cond_9c

    return v2

    :cond_9c
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    if-eq v1, v3, :cond_a3

    return v2

    :cond_a3
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    return v2

    :cond_ae
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    return v2

    :cond_b9
    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    if-eq v1, v3, :cond_c0

    return v2

    :cond_c0
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    return v2

    :cond_cb
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    return v2

    :cond_d6
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    return v2

    :cond_e1
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    return v2

    :cond_ec
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    if-eq v1, v3, :cond_f3

    return v2

    :cond_f3
    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    iget v3, p1, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    if-eq v1, v3, :cond_fa

    return v2

    :cond_fa
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    iget-object v3, p1, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    return v2

    :cond_105
    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    iget-object p1, p1, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_110

    return v2

    :cond_110
    return v0
.end method

.method public final getAllowUIBackground()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    return p0
.end method

.method public final getCardCategory()Lpantanal/app/bean/CardCategory;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    return p0
.end method

.method public final getCardLaunchInterceptor()Lpantanal/app/CardLaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    return-object p0
.end method

.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntrance()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final getExtraBundle()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getExtraData()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getExtraDataToEngine()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getExtraDataToEngineList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    return-object p0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->height:I

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    return p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstantUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadCardTimeOut()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceInfo()Lpantanal/decision/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    return-object p0
.end method

.method public final getServiceInstanceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lpantanal/decision/ServiceInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    :cond_a
    const-string p0, ""

    :cond_c
    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->size:I

    return p0
.end method

.method public final getSizeCode()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    return p0
.end method

.method public final getSizeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportSuperChannel()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    return p0
.end method

.method public final getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    return-wide v0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->type:I

    return p0
.end method

.method public final getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 14

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p0, :cond_1d

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardViewInfo"

    const-string v3, "getUTraceCodeContext,extraData == null"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_4d

    :cond_1d
    if-eqz p0, :cond_24

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_25

    :cond_24
    move-object p0, v0

    :goto_25
    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUTraceCodeContext,extraData != null,codeCtx:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardViewInfo"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    instance-of p1, p0, Lcom/oplus/utrace/sdk/UTraceContext;

    if-eqz p1, :cond_4d

    move-object v0, p0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public final getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 15

    iget-object v0, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->hashCode()I

    move-result v1

    const-string v2, "getUTraceIntentContext,serviceId:"

    const-string v3, ",cardViewInfo:"

    invoke-static {v2, v0, v3, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez p0, :cond_2a

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, ",extraData == null"

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

    const-string v3, "CardViewInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_2a
    if-eqz p0, :cond_33

    const-string v2, "uTraceIntentContext"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_34

    :cond_33
    move-object p0, v1

    :goto_34
    instance-of v2, p0, Lcom/oplus/utrace/sdk/UTraceContext;

    if-eqz v2, :cond_52

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

    const-string v4, "CardViewInfo"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Lcom/oplus/utrace/sdk/UTraceContext;

    goto :goto_b9

    :cond_52
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_75

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

    const-string v4, "CardViewInfo"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    goto :goto_b9

    :cond_75
    sget-object v2, Ly8/c;->a:Ly8/c;

    if-eqz p0, :cond_82

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_83

    :cond_82
    move-object v3, v1

    :goto_83
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_8f

    :cond_8e
    move-object p0, v1

    :goto_8f
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

    const-string v3, "CardViewInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_b9
    return-object v1
.end method

.method public final getWaitCardDataTimeOut()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardViewInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->type:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lpantanal/app/bean/CardViewInfo;->size:I

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->width:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->height:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_58

    move v1, v2

    :cond_58
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    if-eqz v1, :cond_60

    move v1, v2

    :cond_60
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    if-eqz v1, :cond_70

    move v1, v2

    :cond_70
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    if-eqz v1, :cond_80

    move v1, v2

    :cond_80
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    if-eqz v1, :cond_88

    move v1, v2

    :cond_88
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    if-nez v1, :cond_92

    move v1, v3

    goto :goto_96

    :cond_92
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_96
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    if-nez v1, :cond_9f

    move v1, v3

    goto :goto_a3

    :cond_9f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    if-eqz v1, :cond_ab

    goto :goto_ac

    :cond_ab
    move v2, v1

    :goto_ac
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    if-nez v1, :cond_b5

    move v1, v3

    goto :goto_b9

    :cond_b5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_c2

    move v1, v3

    goto :goto_c6

    :cond_c2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    if-nez v1, :cond_cf

    move v1, v3

    goto :goto_d3

    :cond_cf
    invoke-virtual {v1}, Lpantanal/decision/ServiceInfo;->hashCode()I

    move-result v1

    :goto_d3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    if-nez v1, :cond_dc

    move v1, v3

    goto :goto_e0

    :cond_dc
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_e0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    if-nez v1, :cond_f7

    move v1, v3

    goto :goto_fb

    :cond_f7
    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_fb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    if-nez p0, :cond_103

    goto :goto_107

    :cond_103
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_107
    add-int/2addr v0, v3

    return v0
.end method

.method public final isAbnormal()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isAbnormal:Z

    return p0
.end method

.method public final isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    return p0
.end method

.method public final isEntranceTriggerCardClick()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final isRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    return p0
.end method

.method public final isSupportMultiInstance()Z
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lpantanal/decision/ServiceInfo;->isSupportMultiInstance()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final setAllowUIBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardViewInfo;->allowUIBackground:Z

    return-void
.end method

.method public final setCardLaunchInterceptor(Lpantanal/app/CardLaunchInterceptor;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    return-void
.end method

.method public final setComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->componentName:Ljava/lang/String;

    return-void
.end method

.method public final setEntranceTriggerCardClick(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick:Z

    return-void
.end method

.method public final setExtraData(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setExtraDataToEngine(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngine:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setExtraDataToEngineList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardViewInfo;->height:I

    return-void
.end method

.method public final setInitData(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    return-void
.end method

.method public final setInstantUri(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    return-void
.end method

.method public final setLoadCardTimeOut(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardViewInfo;->loadCardTimeOut:I

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setServiceInfo(Lpantanal/decision/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    return-void
.end method

.method public final setSizeCode(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardViewInfo;->sizeCode:I

    return-void
.end method

.method public final setSizeList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    return-void
.end method

.method public final setSupportSuperChannel(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardViewInfo;->supportSuperChannel:Z

    return-void
.end method

.method public final setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lpantanal/app/bean/CardViewInfo;->timestamp:J

    return-void
.end method

.method public final setUTraceCodeContext(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 15

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1a

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardViewInfo"

    const-string v3, "setUTraceCodeContext,codeCtx==null"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    if-nez v0, :cond_25

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    :cond_25
    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    if-eqz p0, :cond_2c

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-void
.end method

.method public final setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 15

    iget-object v0, p0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->hashCode()I

    move-result v1

    const-string v2, "setUTraceIntentContext,serviceId:"

    const-string v3, ",cardViewInfo:"

    invoke-static {v2, v0, v3, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_27

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, ",uTraceIntentContext==null"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardViewInfo"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_27
    iget-object v1, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    if-nez v1, :cond_48

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v1, ",extraData==null"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardViewInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    :cond_48
    iget-object p0, p0, Lpantanal/app/bean/CardViewInfo;->extraData:Landroid/util/ArrayMap;

    if-eqz p0, :cond_51

    const-string v0, "uTraceIntentContext"

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    return-void
.end method

.method public final setWaitCardDataTimeOut(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardViewInfo;->waitCardDataTimeOut:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardViewInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/bean/CardViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v3, v0, Lpantanal/app/bean/CardViewInfo;->serviceId:Ljava/lang/String;

    iget v4, v0, Lpantanal/app/bean/CardViewInfo;->type:I

    iget v5, v0, Lpantanal/app/bean/CardViewInfo;->hostId:I

    iget v6, v0, Lpantanal/app/bean/CardViewInfo;->cardId:I

    iget-object v7, v0, Lpantanal/app/bean/CardViewInfo;->cardCategory:Lpantanal/app/bean/CardCategory;

    iget v8, v0, Lpantanal/app/bean/CardViewInfo;->size:I

    iget-object v9, v0, Lpantanal/app/bean/CardViewInfo;->sizeList:Ljava/util/List;

    iget-object v10, v0, Lpantanal/app/bean/CardViewInfo;->instantUri:Ljava/lang/String;

    iget v11, v0, Lpantanal/app/bean/CardViewInfo;->width:I

    iget v12, v0, Lpantanal/app/bean/CardViewInfo;->height:I

    iget-boolean v13, v0, Lpantanal/app/bean/CardViewInfo;->isRecommend:Z

    iget-boolean v14, v0, Lpantanal/app/bean/CardViewInfo;->isDragging:Z

    iget-object v15, v0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v16, v1

    iget-object v1, v0, Lpantanal/app/bean/CardViewInfo;->initData:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntentKt;->getPolicyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    iget-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraDataToEngineList:Ljava/util/List;

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    move-object/from16 v18, v1

    iget-object v1, v0, Lpantanal/app/bean/CardViewInfo;->serviceInfo:Lpantanal/decision/ServiceInfo;

    move-object/from16 v19, v1

    iget-object v1, v0, Lpantanal/app/bean/CardViewInfo;->extraBundle:Landroid/os/Bundle;

    iget-object v0, v0, Lpantanal/app/bean/CardViewInfo;->cardLaunchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "CardViewInfo[entrance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hostId:"

    const-string v2, ", cardId:"

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardCategory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizeList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instantUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width:"

    const-string v2, ", height:"

    invoke-static {v0, v10, v1, v11, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", isRecommend:"

    const-string v2, ", isDragging:"

    invoke-static {v0, v12, v1, v13, v2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", initDataSize:"

    const-string v2, ", policyName:"

    invoke-static {v0, v14, v1, v15, v2}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uTraceIntentContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraDataToEngineList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraBundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "cardLaunchInterceptor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
