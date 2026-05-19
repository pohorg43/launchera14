.class public final Lpantanal/app/groupcard/GroupChildCardIdentity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardType:I

.field private final size:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    iput p2, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/GroupChildCardIdentity;IIILjava/lang/Object;)Lpantanal/app/groupcard/GroupChildCardIdentity;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lpantanal/app/groupcard/GroupChildCardIdentity;->copy(II)Lpantanal/app/groupcard/GroupChildCardIdentity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    return p0
.end method

.method public final copy(II)Lpantanal/app/groupcard/GroupChildCardIdentity;
    .registers 3

    new-instance p0, Lpantanal/app/groupcard/GroupChildCardIdentity;

    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/GroupChildCardIdentity;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/GroupChildCardIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/GroupChildCardIdentity;

    iget v1, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    iget v3, p1, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    iget p1, p1, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    return p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->cardType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lpantanal/app/groupcard/GroupChildCardIdentity;->size:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
