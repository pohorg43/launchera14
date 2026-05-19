.class public final Lpantanal/decision/PantaSceneInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final cardSleeveType:I

.field private combinationStrategy:I

.field private final createTime:J

.field private expectSceneCnt:I

.field private focusTime:J

.field private forceGuaranteed:Z

.field private homeFlag:Z

.field private final sceneID:J

.field private sceneLevel:I

.field private final score:F

.field private final serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private shouldFocus:Z

.field private final updateTime:J


# direct methods
.method public constructor <init>(JILjava/util/List;JJFZIZIJIZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;JJFZIZIJIZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    const-string v2, "serviceList"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    iput-wide v2, v0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    move v2, p3

    iput v2, v0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    iput-object v1, v0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    move-wide v1, p5

    iput-wide v1, v0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    move-wide v1, p7

    iput-wide v1, v0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    move v1, p9

    iput v1, v0, Lpantanal/decision/PantaSceneInfo;->score:F

    move v1, p10

    iput-boolean v1, v0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    move v1, p11

    iput v1, v0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    move/from16 v1, p12

    iput-boolean v1, v0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    move/from16 v1, p13

    iput v1, v0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    move/from16 v1, p16

    iput v1, v0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    return-void
.end method

.method public synthetic constructor <init>(JILjava/util/List;JJFZIZIJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 41

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v6, v2

    goto :goto_b

    :cond_9
    move/from16 v6, p3

    :goto_b
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_13

    const/high16 v1, -0x40800000  # -1.0f

    move v12, v1

    goto :goto_15

    :cond_13
    move/from16 v12, p9

    :goto_15
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1b

    move v13, v2

    goto :goto_1d

    :cond_1b
    move/from16 v13, p10

    :goto_1d
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    move v14, v1

    goto :goto_26

    :cond_24
    move/from16 v14, p11

    :goto_26
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2c

    move v15, v2

    goto :goto_2e

    :cond_2c
    move/from16 v15, p12

    :goto_2e
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_35

    move/from16 v16, v2

    goto :goto_37

    :cond_35
    move/from16 v16, p13

    :goto_37
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_40

    const-wide/16 v3, 0x0

    move-wide/from16 v17, v3

    goto :goto_42

    :cond_40
    move-wide/from16 v17, p14

    :goto_42
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_49

    move/from16 v19, v2

    goto :goto_4b

    :cond_49
    move/from16 v19, p16

    :goto_4b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_52

    move/from16 v20, v2

    goto :goto_54

    :cond_52
    move/from16 v20, p17

    :goto_54
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v20}, Lpantanal/decision/PantaSceneInfo;-><init>(JILjava/util/List;JJFZIZIJIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/decision/PantaSceneInfo;JILjava/util/List;JJFZIZIJIZILjava/lang/Object;)Lpantanal/decision/PantaSceneInfo;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget v4, v0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    goto :goto_16

    :cond_14
    move/from16 v4, p3

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    goto :goto_1f

    :cond_1d
    move-object/from16 v5, p4

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget-wide v6, v0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    goto :goto_28

    :cond_26
    move-wide/from16 v6, p5

    :goto_28
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_2f

    iget-wide v8, v0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    goto :goto_31

    :cond_2f
    move-wide/from16 v8, p7

    :goto_31
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_38

    iget v10, v0, Lpantanal/decision/PantaSceneInfo;->score:F

    goto :goto_3a

    :cond_38
    move/from16 v10, p9

    :goto_3a
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_41

    iget-boolean v11, v0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    goto :goto_43

    :cond_41
    move/from16 v11, p10

    :goto_43
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_4a

    iget v12, v0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    goto :goto_4c

    :cond_4a
    move/from16 v12, p11

    :goto_4c
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_53

    iget-boolean v13, v0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    goto :goto_55

    :cond_53
    move/from16 v13, p12

    :goto_55
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_5c

    iget v14, v0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    goto :goto_5e

    :cond_5c
    move/from16 v14, p13

    :goto_5e
    and-int/lit16 v15, v1, 0x400

    move/from16 p13, v14

    if-eqz v15, :cond_67

    iget-wide v14, v0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    goto :goto_69

    :cond_67
    move-wide/from16 v14, p14

    :goto_69
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_72

    iget v14, v0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    goto :goto_74

    :cond_72
    move/from16 v14, p16

    :goto_74
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7b

    iget-boolean v1, v0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    goto :goto_7d

    :cond_7b
    move/from16 v1, p17

    :goto_7d
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p16, v14

    move/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lpantanal/decision/PantaSceneInfo;->copy(JILjava/util/List;JJFZIZIJIZ)Lpantanal/decision/PantaSceneInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    return-wide v0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    return p0
.end method

.method public final component11()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    return-wide v0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    return p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    return p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    return-wide v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    return-wide v0
.end method

.method public final component6()F
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->score:F

    return p0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    return p0
.end method

.method public final component9()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    return p0
.end method

.method public final copy(JILjava/util/List;JJFZIZIJIZ)Lpantanal/decision/PantaSceneInfo;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;JJFZIZIJIZ)",
            "Lpantanal/decision/PantaSceneInfo;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move/from16 v17, p17

    const-string v0, "serviceList"

    move-wide/from16 p0, v1

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lpantanal/decision/PantaSceneInfo;

    move-object/from16 v0, v18

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lpantanal/decision/PantaSceneInfo;-><init>(JILjava/util/List;JJFZIZIJIZ)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/decision/PantaSceneInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/decision/PantaSceneInfo;

    iget-wide v3, p0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    iget-wide v5, p1, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    iget v3, p1, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    iget-object v3, p1, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-wide v3, p0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    iget-wide v5, p1, Lpantanal/decision/PantaSceneInfo;->createTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_30

    return v2

    :cond_30
    iget-wide v3, p0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    iget-wide v5, p1, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    return v2

    :cond_39
    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->score:F

    iget v3, p1, Lpantanal/decision/PantaSceneInfo;->score:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    iget-boolean v3, p1, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    iget v3, p1, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    if-eq v1, v3, :cond_52

    return v2

    :cond_52
    iget-boolean v1, p0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    iget-boolean v3, p1, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    if-eq v1, v3, :cond_59

    return v2

    :cond_59
    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    iget v3, p1, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    if-eq v1, v3, :cond_60

    return v2

    :cond_60
    iget-wide v3, p0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    iget-wide v5, p1, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_69

    return v2

    :cond_69
    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    iget v3, p1, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    if-eq v1, v3, :cond_70

    return v2

    :cond_70
    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    iget-boolean p1, p1, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    if-eq p0, p1, :cond_77

    return v2

    :cond_77
    return v0
.end method

.method public final getCardSleeveType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    return p0
.end method

.method public final getCombinationStrategy()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    return p0
.end method

.method public final getCreateTime()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    return-wide v0
.end method

.method public final getExpectSceneCnt()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    return p0
.end method

.method public final getFocusTime()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    return-wide v0
.end method

.method public final getForceGuaranteed()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    return p0
.end method

.method public final getHomeFlag()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    return p0
.end method

.method public final getSceneID()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    return-wide v0
.end method

.method public final getSceneLevel()I
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    return p0
.end method

.method public final getScore()F
    .registers 1

    iget p0, p0, Lpantanal/decision/PantaSceneInfo;->score:F

    return p0
.end method

.method public final getServiceList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    return-object p0
.end method

.method public final getShouldFocus()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    return p0
.end method

.method public final getUpdateTime()J
    .registers 3

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    const/16 v0, 0x1f

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->score:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    move v1, v2

    :cond_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    if-eqz v1, :cond_47

    move v1, v2

    :cond_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-wide v3, p0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean p0, p0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    if-eqz p0, :cond_67

    goto :goto_68

    :cond_67
    move v2, p0

    :goto_68
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCombinationStrategy(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    return-void
.end method

.method public final setExpectSceneCnt(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    return-void
.end method

.method public final setFocusTime(J)V
    .registers 3

    iput-wide p1, p0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    return-void
.end method

.method public final setForceGuaranteed(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    return-void
.end method

.method public final setHomeFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    return-void
.end method

.method public final setSceneLevel(I)V
    .registers 2

    iput p1, p0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    return-void
.end method

.method public final setShouldFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lpantanal/decision/PantaSceneInfo;->sceneID:J

    iget v3, v0, Lpantanal/decision/PantaSceneInfo;->sceneLevel:I

    iget v4, v0, Lpantanal/decision/PantaSceneInfo;->score:F

    iget-boolean v5, v0, Lpantanal/decision/PantaSceneInfo;->homeFlag:Z

    iget-boolean v6, v0, Lpantanal/decision/PantaSceneInfo;->shouldFocus:Z

    iget v7, v0, Lpantanal/decision/PantaSceneInfo;->expectSceneCnt:I

    iget v8, v0, Lpantanal/decision/PantaSceneInfo;->combinationStrategy:I

    iget-boolean v9, v0, Lpantanal/decision/PantaSceneInfo;->forceGuaranteed:Z

    iget-wide v10, v0, Lpantanal/decision/PantaSceneInfo;->focusTime:J

    iget-wide v12, v0, Lpantanal/decision/PantaSceneInfo;->createTime:J

    iget-wide v14, v0, Lpantanal/decision/PantaSceneInfo;->updateTime:J

    move-wide/from16 v16, v14

    iget v14, v0, Lpantanal/decision/PantaSceneInfo;->cardSleeveType:I

    iget-object v0, v0, Lpantanal/decision/PantaSceneInfo;->serviceList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string v0, "PantaSceneInfo(sceneID="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",sceneLevel = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",score = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",homeFlag = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",shouldFocus="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",expectSceneCnt = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",combinationStrategy = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",forceGuaranteed = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",focusTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",createTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", updateTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",cardSleeveType=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', serviceList=\n"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
