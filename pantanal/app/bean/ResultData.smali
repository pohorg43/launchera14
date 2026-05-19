.class public final Lpantanal/app/bean/ResultData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final des:Ljava/lang/String;

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

.field private final icon:Landroid/graphics/Bitmap;

.field private final importance:I

.field private interactionData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final isMilestone:Z

.field private isRequestShowPanel:Z

.field private final shouldShow:Z

.field private final title:Ljava/lang/String;

.field private voiceContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    iput-boolean p4, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    iput p5, p0, Lpantanal/app/bean/ResultData;->importance:I

    iput-boolean p6, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    iput-boolean p7, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    iput-object p8, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    iput-object p9, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    iput-object p10, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 26

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v9, v1

    goto :goto_b

    :cond_9
    move/from16 v9, p7

    :goto_b
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move-object v10, v2

    goto :goto_14

    :cond_12
    move-object/from16 v10, p8

    :goto_14
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1a

    move-object v11, v2

    goto :goto_1c

    :cond_1a
    move-object/from16 v11, p9

    :goto_1c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_22

    move-object v12, v2

    goto :goto_24

    :cond_22
    move-object/from16 v12, p10

    :goto_24
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v12}, Lpantanal/app/bean/ResultData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/ResultData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;ILjava/lang/Object;)Lpantanal/app/bean/ResultData;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-boolean v5, v0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget v6, v0, Lpantanal/app/bean/ResultData;->importance:I

    goto :goto_2c

    :cond_2a
    move/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget-boolean v7, v0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    goto :goto_35

    :cond_33
    move/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-boolean v8, v0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    goto :goto_3e

    :cond_3c
    move/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget-object v9, v0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    goto :goto_47

    :cond_45
    move-object/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget-object v1, v0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    goto :goto_59

    :cond_57
    move-object/from16 v1, p10

    :goto_59
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lpantanal/app/bean/ResultData;->copy(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;)Lpantanal/app/bean/ResultData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getImportance$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component10()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/ResultData;->importance:I

    return p0
.end method

.method public final component6()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    return p0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    return p0
.end method

.method public final component8()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;)Lpantanal/app/bean/ResultData;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lpantanal/app/bean/ResultData;"
        }
    .end annotation

    new-instance v11, Lpantanal/app/bean/ResultData;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lpantanal/app/bean/ResultData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/ResultData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/ResultData;

    iget-object v1, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    iget-boolean v3, p1, Lpantanal/app/bean/ResultData;->isMilestone:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lpantanal/app/bean/ResultData;->importance:I

    iget v3, p1, Lpantanal/app/bean/ResultData;->importance:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    iget-boolean v3, p1, Lpantanal/app/bean/ResultData;->shouldShow:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-boolean v1, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    iget-boolean v3, p1, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    if-eq v1, v3, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    iget-object v3, p1, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object p0, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    iget-object p1, p1, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    return v2

    :cond_6a
    return v0
.end method

.method public final getDes()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

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

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getImportance()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/ResultData;->importance:I

    return p0
.end method

.method public final getInteractionData()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    return-object p0
.end method

.method public final getShouldShow()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getVoiceContent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpantanal/app/bean/ResultData;->importance:I

    const/16 v4, 0x1f

    invoke-static {v2, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v2, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    if-eqz v2, :cond_3d

    move v2, v3

    :cond_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    if-eqz v2, :cond_45

    goto :goto_46

    :cond_45
    move v3, v2

    :goto_46
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    if-nez v2, :cond_4f

    move v2, v1

    goto :goto_53

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    if-nez v2, :cond_5c

    move v2, v1

    goto :goto_60

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_60
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    if-nez p0, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_6c
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMilestone()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    return p0
.end method

.method public final isRequestShowPanel()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    return p0
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

    iput-object p1, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setInteractionData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    return-void
.end method

.method public final setRequestShowPanel(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    return-void
.end method

.method public final setVoiceContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lpantanal/app/bean/ResultData;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lpantanal/app/bean/ResultData;->title:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/bean/ResultData;->des:Ljava/lang/String;

    iget-boolean v3, p0, Lpantanal/app/bean/ResultData;->isMilestone:Z

    iget v4, p0, Lpantanal/app/bean/ResultData;->importance:I

    iget-boolean v5, p0, Lpantanal/app/bean/ResultData;->shouldShow:Z

    iget-boolean v6, p0, Lpantanal/app/bean/ResultData;->isRequestShowPanel:Z

    iget-object v7, p0, Lpantanal/app/bean/ResultData;->interactionData:Ljava/util/Map;

    iget-object v8, p0, Lpantanal/app/bean/ResultData;->voiceContent:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/bean/ResultData;->extraData:Landroid/util/ArrayMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultData(icon="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", des="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isMilestone="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", importance="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldShow="

    const-string v1, ", isRequestShowPanel="

    invoke-static {v9, v4, v0, v5, v1}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", interactionData="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", voiceContent="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extraData="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
