.class public final Lpantanal/app/instant/InstantCardStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final status:I

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    iput p2, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/instant/InstantCardStatus;Ljava/lang/String;IILjava/lang/Object;)Lpantanal/app/instant/InstantCardStatus;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lpantanal/app/instant/InstantCardStatus;->copy(Ljava/lang/String;I)Lpantanal/app/instant/InstantCardStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    return p0
.end method

.method public final copy(Ljava/lang/String;I)Lpantanal/app/instant/InstantCardStatus;
    .registers 3

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/instant/InstantCardStatus;

    invoke-direct {p0, p1, p2}, Lpantanal/app/instant/InstantCardStatus;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/instant/InstantCardStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/instant/InstantCardStatus;

    iget-object v1, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget p0, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    iget p1, p1, Lpantanal/app/instant/InstantCardStatus;->status:I

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getStatus()I
    .registers 1

    iget p0, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    return p0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lpantanal/app/instant/InstantCardStatus;->uri:Ljava/lang/String;

    iget p0, p0, Lpantanal/app/instant/InstantCardStatus;->status:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCardStatus(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
