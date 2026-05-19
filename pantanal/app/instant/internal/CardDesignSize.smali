.class public final Lpantanal/app/instant/internal/CardDesignSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/ICardDesignSize;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/internal/CardDesignSize$Companion;
    }
.end annotation


# static fields
.field public static final CARD_DESIGN_SIZE_INVALID:I = -0x1

.field public static final Companion:Lpantanal/app/instant/internal/CardDesignSize$Companion;


# instance fields
.field private final cardDesignWidth:I

.field private final configDesign:I

.field private final height:I

.field private final width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/internal/CardDesignSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/instant/internal/CardDesignSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/instant/internal/CardDesignSize;->Companion:Lpantanal/app/instant/internal/CardDesignSize$Companion;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    iput p2, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    iput p3, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    iput p4, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, -0x1

    if-eqz p6, :cond_6

    move p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move p4, v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/instant/internal/CardDesignSize;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/instant/internal/CardDesignSize;IIIIILjava/lang/Object;)Lpantanal/app/instant/internal/CardDesignSize;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lpantanal/app/instant/internal/CardDesignSize;->copy(IIII)Lpantanal/app/instant/internal/CardDesignSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    return p0
.end method

.method public final copy(IIII)Lpantanal/app/instant/internal/CardDesignSize;
    .registers 5

    new-instance p0, Lpantanal/app/instant/internal/CardDesignSize;

    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/instant/internal/CardDesignSize;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/instant/internal/CardDesignSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/instant/internal/CardDesignSize;

    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    iget v3, p1, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    iget v3, p1, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    iget v3, p1, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    iget p1, p1, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getCardDesignWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    return p0
.end method

.method public final getConfigDesign()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    return p0
.end method

.method public getContainerHeight()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    return p0
.end method

.method public getContainerWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    return p0
.end method

.method public getDesignSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    return p0
.end method

.method public getDesignWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    return p0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lpantanal/app/instant/internal/CardDesignSize;->width:I

    iget v1, p0, Lpantanal/app/instant/internal/CardDesignSize;->height:I

    iget v2, p0, Lpantanal/app/instant/internal/CardDesignSize;->configDesign:I

    iget p0, p0, Lpantanal/app/instant/internal/CardDesignSize;->cardDesignWidth:I

    const-string v3, "CardDesignSize(width="

    const-string v4, ", height="

    const-string v5, ", configDesign="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardDesignWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
