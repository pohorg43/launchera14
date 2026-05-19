.class public final Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final desiredHeight:I

.field private final desiredHeightResId:I

.field private final isDismissable:Z

.field private final key:Ljava/lang/String;

.field private final locus:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final shortcutId:Ljava/lang/String;

.field private final taskId:I

.field private final title:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V
    .registers 18

    move-object v0, p0

    const-string/jumbo v2, "packageName"

    const-string/jumbo v4, "shortcutId"

    const-string v6, "key"

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    move v1, p6

    iput v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 27

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v10, v2

    goto :goto_b

    :cond_9
    move-object/from16 v10, p7

    :goto_b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_11

    move-object v12, v2

    goto :goto_13

    :cond_11
    move-object/from16 v12, p9

    :goto_13
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    move v13, v0

    goto :goto_1c

    :cond_1a
    move/from16 v13, p10

    :goto_1c
    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget v6, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    goto :goto_2c

    :cond_2a
    move/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget v7, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    goto :goto_35

    :cond_33
    move/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-object v8, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget v9, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    goto :goto_47

    :cond_45
    move/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    goto :goto_59

    :cond_57
    move/from16 v1, p10

    :goto_59
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    return p0
.end method

.method public final component10()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
    .registers 23

    const-string/jumbo v0, "packageName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    move-object v1, v0

    move v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    if-eq v1, v3, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    if-eq p0, p1, :cond_66

    return v2

    :cond_66
    return v0
.end method

.method public final getDesiredHeight()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    return p0
.end method

.method public final getDesiredHeightResId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocus()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortcutId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    move v1, v2

    goto :goto_33

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    if-nez v1, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    if-eqz p0, :cond_4f

    const/4 p0, 0x1

    :cond_4f
    add-int/2addr v0, p0

    return v0
.end method

.method public final isDismissable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "BubbleEntity(userId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desiredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desiredHeightResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDismissable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
