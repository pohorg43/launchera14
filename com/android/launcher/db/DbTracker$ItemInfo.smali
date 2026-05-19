.class public final Lcom/android/launcher/db/DbTracker$ItemInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/db/DbTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemInfo"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDbTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DbTracker.kt\ncom/android/launcher/db/DbTracker$ItemInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,583:1\n1#2:584\n*E\n"
    }
.end annotation


# instance fields
.field private appWidgetId:I

.field private appWidgetProvider:Ljava/lang/String;

.field private cardType:I

.field private cellX:I

.field private cellY:I

.field private container:I

.field private id:I

.field private intent:Ljava/lang/String;

.field private itemType:I

.field private screen:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 15

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

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher/db/DbTracker$ItemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    iput-object p2, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    iput p5, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    iput p6, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    iput p7, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    iput p8, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    iput p9, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    iput-object p10, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    iput p11, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p13, p12, 0x2

    const/4 v1, 0x0

    if-eqz p13, :cond_c

    move-object p2, v1

    :cond_c
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_11

    move-object p3, v1

    :cond_11
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_16

    move p4, v0

    :cond_16
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_1b

    move p5, v0

    :cond_1b
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_20

    move p6, v0

    :cond_20
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_25

    move p7, v0

    :cond_25
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_2a

    move p8, v0

    :cond_2a
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_2f

    move p9, v0

    :cond_2f
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_34

    move-object p10, v1

    :cond_34
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_39

    move p11, v0

    :cond_39
    invoke-direct/range {p0 .. p11}, Lcom/android/launcher/db/DbTracker$ItemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/db/DbTracker$ItemInfo;ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;IILjava/lang/Object;)Lcom/android/launcher/db/DbTracker$ItemInfo;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    goto :goto_24

    :cond_22
    move/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget v6, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    goto :goto_2d

    :cond_2b
    move/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget v7, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    goto :goto_36

    :cond_34
    move/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget v8, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    goto :goto_3f

    :cond_3d
    move/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget v9, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    goto :goto_48

    :cond_46
    move/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget v10, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    goto :goto_51

    :cond_4f
    move/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-object v11, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    move-object/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget v1, v0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    goto :goto_63

    :cond_61
    move/from16 v1, p11

    :goto_63
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/android/launcher/db/DbTracker$ItemInfo;->copy(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)Lcom/android/launcher/db/DbTracker$ItemInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    return p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)Lcom/android/launcher/db/DbTracker$ItemInfo;
    .registers 25

    new-instance v12, Lcom/android/launcher/db/DbTracker$ItemInfo;

    move-object v0, v12

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher/db/DbTracker$ItemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/db/DbTracker$ItemInfo;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    if-eq v1, v3, :cond_45

    return v2

    :cond_45
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    if-eq v1, v3, :cond_4c

    return v2

    :cond_4c
    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    iget v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    if-eq v1, v3, :cond_53

    return v2

    :cond_53
    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    :cond_5e
    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    iget p1, p1, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    if-eq p0, p1, :cond_65

    return v2

    :cond_65
    return v0
.end method

.method public final getAppWidgetId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    return p0
.end method

.method public final getAppWidgetProvider()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    return-object p0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    return p0
.end method

.method public final getCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    return p0
.end method

.method public final getCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    return p0
.end method

.method public final getContainer()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    return p0
.end method

.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    return p0
.end method

.method public final getIntent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public final getItemType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    return p0
.end method

.method public final getScreen()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    if-nez v1, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_52
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAppWidgetId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    return-void
.end method

.method public final setAppWidgetProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    return-void
.end method

.method public final setCardType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    return-void
.end method

.method public final setCellX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    return-void
.end method

.method public final setCellY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    return-void
.end method

.method public final setContainer(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    return-void
.end method

.method public final setId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    return-void
.end method

.method public final setIntent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    return-void
.end method

.method public final setItemType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    return-void
.end method

.method public final setScreen(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->title:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    if-eqz v4, :cond_26

    const-string v4, ", title="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_95

    const/16 v4, 0x64

    if-eq v1, v4, :cond_8a

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->intent:Ljava/lang/String;

    if-eqz p0, :cond_b5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v3

    :goto_6d
    if-eqz v2, :cond_b5

    invoke-static {p0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b5

    const-string v1, ", cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_8a
    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->cardType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_95
    const-string v1, ", appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/db/DbTracker$ItemInfo;->appWidgetProvider:Ljava/lang/String;

    if-eqz p0, :cond_b5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    if-eqz v2, :cond_b5

    const-string v1, ", appWidgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    :goto_b5
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stringBuilder.append(\"}\").toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
