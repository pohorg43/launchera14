.class public final Lcom/android/launcher/layout/Item;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/Item$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/layout/Item$Companion;


# instance fields
.field private final cardType:I

.field private final container:I

.field private final disableAutoFill:Z

.field private final id:I

.field private final originalPosition:Landroid/graphics/Point;

.field private final screenId:I

.field private final span:Landroid/graphics/Point;

.field private final success$delegate:Lh4/f;

.field private final tagName:Ljava/lang/String;

.field private final verifiedPosition:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/layout/Item$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/layout/Item$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/layout/Item;->Companion:Lcom/android/launcher/layout/Item$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZI)V
    .registers 11

    const-string/jumbo v0, "tagName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalPosition"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifiedPosition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "span"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/layout/Item;->id:I

    iput p2, p0, Lcom/android/launcher/layout/Item;->container:I

    iput p3, p0, Lcom/android/launcher/layout/Item;->screenId:I

    iput-object p4, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    iput-object p6, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    iput-object p7, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    iput-boolean p8, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    iput p9, p0, Lcom/android/launcher/layout/Item;->cardType:I

    new-instance p1, Lcom/android/launcher/layout/Item$success$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/Item$success$2;-><init>(Lcom/android/launcher/layout/Item;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/Item;->success$delegate:Lh4/f;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p11, p10, 0x1

    const/4 v0, -0x1

    if-eqz p11, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p11, p10, 0x2

    const/4 v1, 0x0

    if-eqz p11, :cond_c

    move p2, v1

    :cond_c
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_11

    move p3, v0

    :cond_11
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_17

    const-string p4, ""

    :cond_17
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_20

    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_20
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_29

    new-instance p6, Landroid/graphics/Point;

    invoke-direct {p6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_29
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_33

    new-instance p7, Landroid/graphics/Point;

    const/4 p11, 0x1

    invoke-direct {p7, p11, p11}, Landroid/graphics/Point;-><init>(II)V

    :cond_33
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_38

    move p8, v1

    :cond_38
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_3d

    move p9, v0

    :cond_3d
    invoke-direct/range {p0 .. p9}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/layout/Item;IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILjava/lang/Object;)Lcom/android/launcher/layout/Item;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/launcher/layout/Item;->id:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/android/launcher/layout/Item;->container:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/android/launcher/layout/Item;->screenId:I

    goto :goto_1b

    :cond_1a
    move v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-boolean v9, v0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    goto :goto_46

    :cond_44
    move/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget v1, v0, Lcom/android/launcher/layout/Item;->cardType:I

    goto :goto_4f

    :cond_4d
    move/from16 v1, p9

    :goto_4f
    move p1, v2

    move p2, v3

    move p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/android/launcher/layout/Item;->copy(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZI)Lcom/android/launcher/layout/Item;

    move-result-object v0

    return-object v0
.end method

.method public static final getNewPositionUseFill(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher/layout/Item;)Landroid/graphics/Point;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/layout/Item;->Companion:Lcom/android/launcher/layout/Item$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/layout/Item$Companion;->getNewPositionUseFill(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher/layout/Item;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->id:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->container:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->screenId:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final component6()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final component7()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    return p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->cardType:I

    return p0
.end method

.method public final copy(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZI)Lcom/android/launcher/layout/Item;
    .registers 21

    const-string/jumbo v0, "tagName"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalPosition"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifiedPosition"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "span"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/layout/Item;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/layout/Item;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/layout/Item;

    iget v1, p0, Lcom/android/launcher/layout/Item;->id:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->id:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->container:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->screenId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-boolean v1, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    iget-boolean v3, p1, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    if-eq v1, v3, :cond_54

    return v2

    :cond_54
    iget p0, p0, Lcom/android/launcher/layout/Item;->cardType:I

    iget p1, p1, Lcom/android/launcher/layout/Item;->cardType:I

    if-eq p0, p1, :cond_5b

    return v2

    :cond_5b
    return v0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->cardType:I

    return p0
.end method

.method public final getContainer()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->container:I

    return p0
.end method

.method public final getDisableAutoFill()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    return p0
.end method

.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->id:I

    return p0
.end method

.method public final getOriginalPosition()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->screenId:I

    return p0
.end method

.method public final getSpan()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getSuccess()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->success$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTagName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifiedPosition()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher/layout/Item;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Point;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Point;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/launcher/layout/Item;->cardType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Item(id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/layout/Item;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verifiedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableAutoFill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/layout/Item;->disableAutoFill:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/layout/Item;->cardType:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
