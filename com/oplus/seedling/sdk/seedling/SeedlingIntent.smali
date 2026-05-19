.class public final Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/SeedlingIntent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingIntent$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingIntent"


# instance fields
.field private allowUIBackground:Z

.field private cardSize:I

.field private cardSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private initData:Ljava/lang/String;

.field private final isAbnormal:Z

.field private isEntranceTriggerCardClick:Z

.field private isSubscribe:Z

.field private originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

.field private serviceId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingIntent$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZJ)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    const-string v3, "serviceId"

    move-object/from16 v8, p1

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Li4/y;->a:Li4/y;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1f00

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardSizeList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iput-object p3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iput-wide p6, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iput-boolean p8, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iput-object p9, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    iput-boolean p10, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iput-boolean p11, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    iput-object p12, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    iput-object p13, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    iput-object p14, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 35

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v5, v2

    goto :goto_b

    :cond_9
    move/from16 v5, p2

    :goto_b
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move-object v7, v3

    goto :goto_14

    :cond_12
    move-object/from16 v7, p4

    :goto_14
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1d

    :cond_1b
    move/from16 v8, p5

    :goto_1d
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_24

    const-wide/16 v9, 0x0

    goto :goto_26

    :cond_24
    move-wide/from16 v9, p6

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    move v11, v2

    goto :goto_2e

    :cond_2c
    move/from16 v11, p8

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    move-object v12, v3

    goto :goto_36

    :cond_34
    move-object/from16 v12, p9

    :goto_36
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3c

    move v13, v2

    goto :goto_3e

    :cond_3c
    move/from16 v13, p10

    :goto_3e
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_44

    move v14, v2

    goto :goto_46

    :cond_44
    move/from16 v14, p11

    :goto_46
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4c

    move-object v15, v3

    goto :goto_4e

    :cond_4c
    move-object/from16 v15, p12

    :goto_4e
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_55

    move-object/from16 v16, v3

    goto :goto_57

    :cond_55
    move-object/from16 v16, p13

    :goto_57
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5e

    move-object/from16 v17, v3

    goto :goto_60

    :cond_5e
    move-object/from16 v17, p14

    :goto_60
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v17}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 32

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    goto :goto_c

    :cond_a
    move-object/from16 v2, p1

    :goto_c
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_13

    iget v3, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    goto :goto_15

    :cond_13
    move/from16 v3, p2

    :goto_15
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p3

    :goto_1e
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    goto :goto_27

    :cond_25
    move-object/from16 v5, p4

    :goto_27
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2e

    iget-boolean v6, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    goto :goto_30

    :cond_2e
    move/from16 v6, p5

    :goto_30
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_37

    iget-wide v7, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    goto :goto_39

    :cond_37
    move-wide/from16 v7, p6

    :goto_39
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_40

    iget-boolean v9, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    goto :goto_42

    :cond_40
    move/from16 v9, p8

    :goto_42
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_49

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    goto :goto_4b

    :cond_49
    move-object/from16 v10, p9

    :goto_4b
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_52

    iget-boolean v11, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    goto :goto_54

    :cond_52
    move/from16 v11, p10

    :goto_54
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5b

    iget-boolean v12, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    goto :goto_5d

    :cond_5b
    move/from16 v12, p11

    :goto_5d
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_64

    iget-object v13, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    goto :goto_66

    :cond_64
    move-object/from16 v13, p12

    :goto_66
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_6d

    iget-object v14, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    goto :goto_6f

    :cond_6d
    move-object/from16 v14, p13

    :goto_6f
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_76

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    goto :goto_78

    :cond_76
    move-object/from16 v1, p14

    :goto_78
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->copy(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCardSize$annotations()V
    .registers 0

    return-void
.end method

.method private final toUTraceIntentString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToJsonString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final component11()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component12()Ljava/util/List;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    return-object p0
.end method

.method public final component13()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return p0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-wide v0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return p0
.end method

.method public final component8()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component9()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ")",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;"
        }
    .end annotation

    const-string v0, "serviceId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardSizeList"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-object v1, v0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iget v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iget-wide v5, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    if-eq v1, v3, :cond_5d

    return v2

    :cond_5d
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    if-eq v1, v3, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    return v2

    :cond_85
    return v0
.end method

.method public final getAllowUIBackground()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return p0
.end method

.method public final getCardSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    return p0
.end method

.method public final getCardSizeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-wide v0
.end method

.method public final getUTraceIntentContext()Ljava/lang/String;
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->hashCode()I

    move-result v2

    const-string v3, "getUTraceIntentContext,serviceId:"

    const-string v4, ",seedlingIntent:"

    invoke-static {v3, v1, v4, v2}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v0, ",extraData == null"

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

    const-string v5, "SeedlingIntent"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3

    :cond_2c
    if-eqz v2, :cond_35

    const-string v4, "uTraceIntentContext"

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_36

    :cond_35
    move-object v2, v3

    :goto_36
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_54

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v0, ",uTraceIntentContextString is String"

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "SeedlingIntent"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_c0

    :cond_54
    instance-of v4, v2, Lcom/oplus/utrace/sdk/UTraceContext;

    if-eqz v4, :cond_75

    check-cast v2, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {v0, v2}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->toUTraceIntentString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v0, ",uTraceIntentContextString is UTraceContext,uTraceIntentContextString:"

    invoke-static {v1, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingIntent"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_c0

    :cond_75
    sget-object v15, Ly8/c;->a:Ly8/c;

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    :cond_82
    move-object v0, v3

    :goto_83
    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_8f

    :cond_8e
    move-object v2, v3

    :goto_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",else,uTraceIntentContextString type:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",classLoader:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedlingIntent"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_c0
    return-object v3
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_20

    move v0, v2

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    move v0, v3

    :cond_2d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    const/16 v0, 0x1f

    invoke-static {v4, v5, v1, v0}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    if-eqz v1, :cond_3d

    move v1, v3

    :cond_3d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    if-nez v1, :cond_46

    move v1, v2

    goto :goto_4a

    :cond_46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    if-eqz v1, :cond_52

    move v1, v3

    :cond_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    if-eqz v1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v3, v1

    :goto_5b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    if-nez v1, :cond_64

    move v1, v2

    goto :goto_68

    :cond_64
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_68
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    if-nez v1, :cond_71

    move v1, v2

    goto :goto_75

    :cond_71
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_75
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    if-nez p0, :cond_7d

    goto :goto_81

    :cond_7d
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hashCode()I

    move-result v2

    :goto_81
    add-int/2addr v0, v2

    return v0
.end method

.method public final isAbnormal()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    return p0
.end method

.method public final isEntranceTriggerCardClick()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final isSubscribe()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return p0
.end method

.method public final setAllowUIBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return-void
.end method

.method public final setCardSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    return-void
.end method

.method public final setCardSizeList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    return-void
.end method

.method public final setEntranceTriggerCardClick(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    return-void
.end method

.method public final setInitData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-void
.end method

.method public final setOriginServiceInfo(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-void
.end method

.method public final setServiceId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public final setSubscribe(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return-void
.end method

.method public final setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-void
.end method

.method public final setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 13

    if-nez p1, :cond_15

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingIntent"

    const-string v2, "setUTraceIntentContext,uTraceIntentContext == null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->toUTraceIntentString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->setUTraceIntentContext(Ljava/lang/String;)V

    return-void
.end method

.method public final setUTraceIntentContext(Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->hashCode()I

    move-result v1

    const-string v2, "setUTraceIntentContext,serviceId:"

    const-string v3, ",seedlingIntent:"

    invoke-static {v2, v0, v3, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_27

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, ",uTraceIntentContextString == null"

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

    const-string v2, "SeedlingIntent"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_27
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    if-nez v1, :cond_48

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v1, ",extraData == null"

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

    const-string v3, "SeedlingIntent"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    :cond_48
    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ",uTraceIntentContextString type:"

    invoke-static {v0, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingIntent"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    if-eqz p0, :cond_6f

    const-string v0, "uTraceIntentContext"

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iget v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iget-object v3, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v5

    :goto_17
    iget-object v6, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    if-eqz v6, :cond_20

    invoke-static {v6}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntentKt;->getPolicyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_21

    :cond_20
    move-object v6, v5

    :goto_21
    iget-boolean v7, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iget-wide v8, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iget-boolean v10, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iget-object v11, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    if-eqz v11, :cond_34

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_35

    :cond_34
    move-object v11, v5

    :goto_35
    iget-boolean v12, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iget-boolean v13, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    iget-object v14, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngine:Landroid/util/ArrayMap;

    if-eqz v14, :cond_46

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_47

    :cond_46
    move-object v14, v5

    :goto_47
    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraDataToEngineList:Ljava/util/List;

    if-eqz v15, :cond_54

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_55

    :cond_54
    move-object v15, v5

    :goto_55
    iget-object v0, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    :cond_5d
    const-string v0, "SeedlingIntent[serviceId:"

    move-object/from16 p0, v5

    const-string v5, ", cardSize:"

    move-object/from16 v16, v15

    const-string v15, ", cardSizeList:"

    invoke-static {v0, v1, v5, v2, v15}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initData.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policyName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowUIBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSubscribe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraData.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAbnormal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEntranceTriggerCardClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraDataToEngine.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraDataToEngineList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originServiceInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUTraceIntentString()Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iget-wide v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iget-boolean v4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iget-boolean v5, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iget-object v6, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_19

    :cond_18
    move-object v6, v7

    :goto_19
    iget-object v8, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    if-eqz v8, :cond_22

    invoke-static {v8}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntentKt;->getPolicyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_23

    :cond_22
    move-object v8, v7

    :goto_23
    iget-object v9, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v9

    goto :goto_2d

    :cond_2c
    move-object v9, v7

    :goto_2d
    iget-object v10, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->originServiceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    if-eqz v10, :cond_35

    invoke-virtual {v10}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v7

    :cond_35
    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeedlingIntent[serviceId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";cardSizeList:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";timestamp:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";isSubscribe:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";isAbnormal:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";initDataSize:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";policyName:"

    const-string v1, ";originServiceInfo_id:"

    invoke-static {v10, v0, v8, v1, v9}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";originServiceInfo_sizeToCardType:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";isEntranceTriggerCardClick:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
