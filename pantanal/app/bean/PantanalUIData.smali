.class public final Lpantanal/app/bean/PantanalUIData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/PantanalUIData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/PantanalUIData$Companion;

.field private static final TAG:Ljava/lang/String; = "UIData"


# instance fields
.field private final cardId:I

.field private final data:[B

.field private final extraMsg:Ljava/lang/String;

.field private final forceChangeCardUI:Z

.field private final idMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

.field private final themeId:Ljava/lang/Integer;

.field private final value:[B

.field private final version:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/bean/PantanalUIData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/bean/PantanalUIData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/bean/PantanalUIData;->Companion:Lpantanal/app/bean/PantanalUIData$Companion;

    return-void
.end method

.method public constructor <init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 13
    .param p1  # [B
        .annotation runtime Lv3/q;
            name = "data"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lv3/q;
            name = "cardId"
        .end annotation
    .end param
    .param p3  # Ljava/util/HashMap;
        .annotation runtime Lv3/q;
            name = "idMaps"
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "name"
        .end annotation
    .end param
    .param p5  # Ljava/lang/Long;
        .annotation runtime Lv3/q;
            name = "version"
        .end annotation
    .end param
    .param p6  # Ljava/lang/Integer;
        .annotation runtime Lv3/q;
            name = "themeId"
        .end annotation
    .end param
    .param p7  # [B
        .annotation runtime Lv3/q;
            name = "value"
        .end annotation
    .end param
    .param p8  # Z
        .annotation runtime Lv3/q;
            name = "forceChangeCardUI"
        .end annotation
    .end param
    .param p9  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "layoutName"
        .end annotation
    .end param
    .param p10  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "extraMsg"
        .end annotation
    .end param
    .param p11  # Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
        .annotation runtime Lv3/q;
            name = "seedlingUIData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "[BZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMsg"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    iput p2, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    iput-object p3, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    iput-object p4, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    iput-object p5, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    iput-object p6, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    iput-object p7, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    iput-boolean p8, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    iput-object p9, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    iput-object p10, p0, Lpantanal/app/bean/PantanalUIData;->extraMsg:Ljava/lang/String;

    iput-object p11, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    return-void
.end method

.method public synthetic constructor <init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v6, v2

    goto :goto_b

    :cond_9
    move-object/from16 v6, p3

    :goto_b
    and-int/lit8 v1, v0, 0x8

    const-string v3, ""

    if-eqz v1, :cond_13

    move-object v7, v3

    goto :goto_15

    :cond_13
    move-object/from16 v7, p4

    :goto_15
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_21

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v8, v1

    goto :goto_23

    :cond_21
    move-object/from16 v8, p5

    :goto_23
    and-int/lit8 v1, v0, 0x20

    const/4 v4, 0x0

    if-eqz v1, :cond_2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_30

    :cond_2e
    move-object/from16 v9, p6

    :goto_30
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_36

    move-object v10, v2

    goto :goto_38

    :cond_36
    move-object/from16 v10, p7

    :goto_38
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3e

    move v11, v4

    goto :goto_40

    :cond_3e
    move/from16 v11, p8

    :goto_40
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_46

    move-object v12, v3

    goto :goto_48

    :cond_46
    move-object/from16 v12, p9

    :goto_48
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4e

    move-object v13, v3

    goto :goto_50

    :cond_4e
    move-object/from16 v13, p10

    :goto_50
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_56

    move-object v14, v2

    goto :goto_58

    :cond_56
    move-object/from16 v14, p11

    :goto_58
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v14}, Lpantanal/app/bean/PantanalUIData;-><init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/PantanalUIData;[BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;ILjava/lang/Object;)Lpantanal/app/bean/PantanalUIData;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lpantanal/app/bean/PantanalUIData;->data:[B

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-object v7, v0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    goto :goto_36

    :cond_34
    move-object/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget-object v8, v0, Lpantanal/app/bean/PantanalUIData;->value:[B

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget-boolean v9, v0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    goto :goto_48

    :cond_46
    move/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget-object v10, v0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-object v11, v0, Lpantanal/app/bean/PantanalUIData;->extraMsg:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    move-object/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget-object v1, v0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    goto :goto_63

    :cond_61
    move-object/from16 v1, p11

    :goto_63
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lpantanal/app/bean/PantanalUIData;->copy([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Lpantanal/app/bean/PantanalUIData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()[B
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->extraMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    return p0
.end method

.method public final component3()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component7()[B
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Lpantanal/app/bean/PantanalUIData;
    .registers 25
    .param p1  # [B
        .annotation runtime Lv3/q;
            name = "data"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lv3/q;
            name = "cardId"
        .end annotation
    .end param
    .param p3  # Ljava/util/HashMap;
        .annotation runtime Lv3/q;
            name = "idMaps"
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "name"
        .end annotation
    .end param
    .param p5  # Ljava/lang/Long;
        .annotation runtime Lv3/q;
            name = "version"
        .end annotation
    .end param
    .param p6  # Ljava/lang/Integer;
        .annotation runtime Lv3/q;
            name = "themeId"
        .end annotation
    .end param
    .param p7  # [B
        .annotation runtime Lv3/q;
            name = "value"
        .end annotation
    .end param
    .param p8  # Z
        .annotation runtime Lv3/q;
            name = "forceChangeCardUI"
        .end annotation
    .end param
    .param p9  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "layoutName"
        .end annotation
    .end param
    .param p10  # Ljava/lang/String;
        .annotation runtime Lv3/q;
            name = "extraMsg"
        .end annotation
    .end param
    .param p11  # Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
        .annotation runtime Lv3/q;
            name = "seedlingUIData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "[BZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;",
            ")",
            "Lpantanal/app/bean/PantanalUIData;"
        }
    .end annotation

    const-string v0, "data"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutName"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMsg"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/bean/PantanalUIData;

    move-object v1, v0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lpantanal/app/bean/PantanalUIData;-><init>([BILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;Ljava/lang/String;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lpantanal/app/bean/PantanalUIData;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string v1, "null cannot be cast to non-null type pantanal.app.bean.PantanalUIData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lpantanal/app/bean/PantanalUIData;

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->data:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget v1, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    iget v3, p1, Lpantanal/app/bean/PantanalUIData;->cardId:I

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v2

    :cond_50
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v2

    :cond_5b
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    if-eqz v1, :cond_6b

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->value:[B

    if-nez v3, :cond_64

    return v2

    :cond_64
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_70

    return v2

    :cond_6b
    iget-object v1, p1, Lpantanal/app/bean/PantanalUIData;->value:[B

    if-eqz v1, :cond_70

    return v2

    :cond_70
    iget-boolean v1, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    iget-boolean v3, p1, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    if-eq v1, v3, :cond_77

    return v2

    :cond_77
    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    return v2

    :cond_82
    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    iget-object p1, p1, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    return v2

    :cond_8d
    return v0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    return p0
.end method

.method public final getData()[B
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    return-object p0
.end method

.method public final getExtraMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->extraMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final getForceChangeCardUI()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    return p0
.end method

.method public final getIdMaps()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getLayoutName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeedlingUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    return-object p0
.end method

.method public final getThemeId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getValue()[B
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    return-object p0
.end method

.method public final getVersion()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    if-eqz v1, :cond_4b

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v0, v1, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->hashCode()I

    move-result v2

    :cond_68
    add-int/2addr v0, v2

    return v0
.end method

.method public final setSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    return-void
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 12
    .annotation runtime Lv3/h0;
    .end annotation

    const-class v0, Lpantanal/app/bean/PantanalUIData;

    const-string v1, "cls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Lv3/e0$a;

    invoke-direct {v1}, Lv3/e0$a;-><init>()V

    sget-object v2, Lx8/a;->a:Lx8/a;

    invoke-virtual {v1, v2}, Lv3/e0$a;->b(Lv3/r$a;)Lv3/e0$a;

    new-instance v2, Lpantanal/foundation/moshi/ArrayMapJsonAdapter;

    invoke-direct {v2}, Lpantanal/foundation/moshi/ArrayMapJsonAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lv3/e0$a;->a(Ljava/lang/Object;)Lv3/e0$a;

    new-instance v2, Lpantanal/foundation/moshi/BitmapTypeAdapter;

    invoke-direct {v2}, Lpantanal/foundation/moshi/BitmapTypeAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lv3/e0$a;->a(Ljava/lang/Object;)Lv3/e0$a;

    new-instance v2, Lx3/b;

    invoke-direct {v2}, Lx3/b;-><init>()V

    iget-object v3, v1, Lv3/e0$a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lv3/e0;

    invoke-direct {v2, v1}, Lv3/e0;-><init>(Lv3/e0$a;)V

    invoke-virtual {v2, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object v0

    const-string v1, "Builder()\n              …    .build().adapter(cls)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_5a

    :try_start_41
    new-instance v2, Lv3/z;

    invoke-direct {v2, v1}, Lv3/z;-><init>(Lokio/BufferedSink;)V

    invoke-virtual {v0, v2, p0}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_53
    .catchall {:try_start_41 .. :try_end_49} :catchall_5a

    :try_start_49
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jsonAdapter.toJson(bean)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_81

    :catch_53
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7f

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "toJsonString failed,msg = "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "JsonUtils"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_7f
    const-string p0, ""

    :goto_81
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    iget v0, p0, Lpantanal/app/bean/PantanalUIData;->cardId:I

    iget-object v1, p0, Lpantanal/app/bean/PantanalUIData;->idMaps:Ljava/util/HashMap;

    iget-object v2, p0, Lpantanal/app/bean/PantanalUIData;->name:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/bean/PantanalUIData;->version:Ljava/lang/Long;

    iget-object v4, p0, Lpantanal/app/bean/PantanalUIData;->themeId:Ljava/lang/Integer;

    iget-object v5, p0, Lpantanal/app/bean/PantanalUIData;->extraMsg:Ljava/lang/String;

    iget-boolean v6, p0, Lpantanal/app/bean/PantanalUIData;->forceChangeCardUI:Z

    iget-object v7, p0, Lpantanal/app/bean/PantanalUIData;->layoutName:Ljava/lang/String;

    iget-object v8, p0, Lpantanal/app/bean/PantanalUIData;->data:[B

    array-length v8, v8

    iget-object v9, p0, Lpantanal/app/bean/PantanalUIData;->value:[B

    if-eqz v9, :cond_1d

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1e

    :cond_1d
    const/4 v9, 0x0

    :goto_1e
    iget-object p0, p0, Lpantanal/app/bean/PantanalUIData;->seedlingUIData:Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PantanalUIData(cardId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", idMaps="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", themeId="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",  extraMsg=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' forceChangeCardUI="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", layoutName=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',dataSize ="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", valueSize="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",seedlingUIData="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",)"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
