.class public final Lpantanal/decision/DecisionCardConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final category:I

.field private final componentName:Ljava/lang/String;

.field private final desc:Ljava/lang/String;

.field private final instantCardUrl:Ljava/lang/String;

.field private final maxUpdateFrequency:I

.field private final minActiveUpdateInterval:I

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final protocol:I

.field private final serviceId:Ljava/lang/String;

.field private final size:I

.field private final supportActiveUpdate:Z

.field private final supportSuperChannel:Z

.field private final type:I

.field private final updatePriority:I


# direct methods
.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lpantanal/decision/DecisionCardConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;Z)V
    .registers 24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p14

    const-string v7, "serviceId"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "name"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "desc"

    invoke-static {p4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "packageName"

    invoke-static {p6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "componentName"

    invoke-static {p7, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "instantCardUrl"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->type:I

    iput-object v2, v0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    iput-object v3, v0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->size:I

    iput-object v4, v0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    iput-object v5, v0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    move/from16 v1, p8

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->category:I

    move/from16 v1, p9

    iput-boolean v1, v0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    move/from16 v1, p10

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    move/from16 v1, p11

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    move/from16 v1, p12

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    move/from16 v1, p13

    iput v1, v0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    iput-object v6, v0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 34

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    :goto_c
    and-int/lit8 v3, v0, 0x2

    const/4 v4, -0x1

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_15

    :cond_13
    move/from16 v3, p2

    :goto_15
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1b

    move-object v5, v2

    goto :goto_1d

    :cond_1b
    move-object/from16 v5, p3

    :goto_1d
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_23

    move-object v6, v2

    goto :goto_25

    :cond_23
    move-object/from16 v6, p4

    :goto_25
    and-int/lit8 v7, v0, 0x10

    const/4 v8, 0x2

    if-eqz v7, :cond_2c

    move v7, v8

    goto :goto_2e

    :cond_2c
    move/from16 v7, p5

    :goto_2e
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_34

    move-object v9, v2

    goto :goto_36

    :cond_34
    move-object/from16 v9, p6

    :goto_36
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_3c

    move-object v10, v2

    goto :goto_3e

    :cond_3c
    move-object/from16 v10, p7

    :goto_3e
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_43

    goto :goto_45

    :cond_43
    move/from16 v8, p8

    :goto_45
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4b

    const/4 v11, 0x0

    goto :goto_4d

    :cond_4b
    move/from16 v11, p9

    :goto_4d
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_52

    goto :goto_54

    :cond_52
    move/from16 v4, p10

    :goto_54
    and-int/lit16 v13, v0, 0x400

    const/4 v14, 0x1

    if-eqz v13, :cond_5b

    move v13, v14

    goto :goto_5d

    :cond_5b
    move/from16 v13, p11

    :goto_5d
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_63

    move v15, v14

    goto :goto_65

    :cond_63
    move/from16 v15, p12

    :goto_65
    and-int/lit16 v12, v0, 0x1000

    if-eqz v12, :cond_6a

    goto :goto_6c

    :cond_6a
    move/from16 v14, p13

    :goto_6c
    and-int/lit16 v12, v0, 0x2000

    if-eqz v12, :cond_71

    goto :goto_73

    :cond_71
    move-object/from16 v2, p14

    :goto_73
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_79

    const/4 v0, 0x0

    goto :goto_7b

    :cond_79
    move/from16 v0, p15

    :goto_7b
    move-object/from16 p1, v1

    move/from16 p2, v3

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v7

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move/from16 p8, v8

    move/from16 p9, v11

    move/from16 p10, v4

    move/from16 p11, v13

    move/from16 p12, v15

    move/from16 p13, v14

    move-object/from16 p14, v2

    move/from16 p15, v0

    invoke-direct/range {p0 .. p15}, Lpantanal/decision/DecisionCardConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/decision/DecisionCardConfig;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;ZILjava/lang/Object;)Lpantanal/decision/DecisionCardConfig;
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget v3, v0, Lpantanal/decision/DecisionCardConfig;->type:I

    goto :goto_16

    :cond_14
    move/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget v6, v0, Lpantanal/decision/DecisionCardConfig;->size:I

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget v9, v0, Lpantanal/decision/DecisionCardConfig;->category:I

    goto :goto_4c

    :cond_4a
    move/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-boolean v10, v0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    goto :goto_55

    :cond_53
    move/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget v11, v0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    goto :goto_5e

    :cond_5c
    move/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget v12, v0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    goto :goto_67

    :cond_65
    move/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget v13, v0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    goto :goto_70

    :cond_6e
    move/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget v14, v0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_89

    iget-boolean v1, v0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    goto :goto_8b

    :cond_89
    move/from16 v1, p15

    :goto_8b
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v15

    move/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lpantanal/decision/DecisionCardConfig;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;Z)Lpantanal/decision/DecisionCardConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    return p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    return p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    return p0
.end method

.method public final component13()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    return p0
.end method

.method public final component14()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->type:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->size:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->category:I

    return p0
.end method

.method public final component9()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;Z)Lpantanal/decision/DecisionCardConfig;
    .registers 33

    const-string v0, "serviceId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instantCardUrl"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/decision/DecisionCardConfig;

    move-object v1, v0

    move/from16 v3, p2

    move/from16 v6, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lpantanal/decision/DecisionCardConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIIIILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/decision/DecisionCardConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/decision/DecisionCardConfig;

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->type:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->type:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->size:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->size:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->category:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->category:I

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget-boolean v1, p0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    iget-boolean v3, p1, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    if-eq v1, v3, :cond_66

    return v2

    :cond_66
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    if-eq v1, v3, :cond_6d

    return v2

    :cond_6d
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    if-eq v1, v3, :cond_74

    return v2

    :cond_74
    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    iget v3, p1, Lpantanal/decision/DecisionCardConfig;->protocol:I

    if-eq v1, v3, :cond_7b

    return v2

    :cond_7b
    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    return v2

    :cond_86
    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    iget-boolean p1, p1, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    if-eq p0, p1, :cond_8d

    return v2

    :cond_8d
    return v0
.end method

.method public final getCategory()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->category:I

    return p0
.end method

.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstantCardUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxUpdateFrequency()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    return p0
.end method

.method public final getMinActiveUpdateInterval()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getProtocol()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->size:I

    return p0
.end method

.method public final getSupportActiveUpdate()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    return p0
.end method

.method public final getSupportSuperChannel()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->type:I

    return p0
.end method

.method public final getUpdatePriority()I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->type:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->size:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->category:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    move v1, v2

    :cond_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean p0, p0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    if-eqz p0, :cond_62

    goto :goto_63

    :cond_62
    move v2, p0

    :goto_63
    add-int/2addr v0, v2

    return v0
.end method

.method public final isValid()Z
    .registers 5

    iget v0, p0, Lpantanal/decision/DecisionCardConfig;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_22

    iget-object v0, p0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    if-eqz v0, :cond_22

    iget-object p0, p0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1e

    move p0, v1

    goto :goto_1f

    :cond_1e
    move p0, v2

    :goto_1f
    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/decision/DecisionCardConfig;->serviceId:Ljava/lang/String;

    iget v2, v0, Lpantanal/decision/DecisionCardConfig;->type:I

    iget-object v3, v0, Lpantanal/decision/DecisionCardConfig;->name:Ljava/lang/String;

    iget-object v4, v0, Lpantanal/decision/DecisionCardConfig;->desc:Ljava/lang/String;

    iget v5, v0, Lpantanal/decision/DecisionCardConfig;->size:I

    iget-object v6, v0, Lpantanal/decision/DecisionCardConfig;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lpantanal/decision/DecisionCardConfig;->componentName:Ljava/lang/String;

    iget v8, v0, Lpantanal/decision/DecisionCardConfig;->category:I

    iget-boolean v9, v0, Lpantanal/decision/DecisionCardConfig;->supportActiveUpdate:Z

    iget v10, v0, Lpantanal/decision/DecisionCardConfig;->minActiveUpdateInterval:I

    iget v11, v0, Lpantanal/decision/DecisionCardConfig;->updatePriority:I

    iget v12, v0, Lpantanal/decision/DecisionCardConfig;->maxUpdateFrequency:I

    iget v13, v0, Lpantanal/decision/DecisionCardConfig;->protocol:I

    iget-object v14, v0, Lpantanal/decision/DecisionCardConfig;->instantCardUrl:Ljava/lang/String;

    iget-boolean v0, v0, Lpantanal/decision/DecisionCardConfig;->supportSuperChannel:Z

    const-string v15, "DecisionCardConfig(serviceId="

    move/from16 p0, v0

    const-string v0, ", type="

    move/from16 v16, v13

    const-string v13, ", name="

    invoke-static {v15, v1, v0, v2, v13}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    const-string v2, ", size="

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", packageName="

    const-string v2, ", componentName="

    invoke-static {v0, v5, v1, v6, v2}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", category="

    const-string v2, ", supportActiveUpdate="

    invoke-static {v0, v7, v1, v8, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", minActiveUpdateInterval="

    const-string v2, ", updatePriority="

    invoke-static {v0, v9, v1, v10, v2}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", maxUpdateFrequency="

    const-string v2, ", protocol="

    invoke-static {v0, v11, v1, v12, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", instantCardUrl="

    const-string v2, ", supportSuperChannel="

    move/from16 v3, v16

    invoke-static {v0, v3, v1, v14, v2}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
