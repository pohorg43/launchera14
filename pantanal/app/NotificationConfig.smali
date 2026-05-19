.class public final Lpantanal/app/NotificationConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final serviceId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/NotificationConfig;IILjava/lang/Object;)Lpantanal/app/NotificationConfig;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    :cond_6
    invoke-virtual {p0, p1}, Lpantanal/app/NotificationConfig;->copy(I)Lpantanal/app/NotificationConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    return p0
.end method

.method public final copy(I)Lpantanal/app/NotificationConfig;
    .registers 2

    new-instance p0, Lpantanal/app/NotificationConfig;

    invoke-direct {p0, p1}, Lpantanal/app/NotificationConfig;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/NotificationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/NotificationConfig;

    iget p0, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    iget p1, p1, Lpantanal/app/NotificationConfig;->serviceId:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getServiceId()I
    .registers 1

    iget p0, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget p0, p0, Lpantanal/app/NotificationConfig;->serviceId:I

    const-string v0, "NotificationConfig(serviceId="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
