.class public final Lpantanal/app/bean/SuperChannelInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field private final jsonObject:Lorg/json/JSONObject;

.field private final proxy:Lpantanal/app/manager/ServiceManagerProxy;

.field private final serverBusiness:Lcom/oplus/channel/server/IServerBusiness;


# direct methods
.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;)V
    .registers 6

    const-string v0, "cardViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p3, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    iput-object p4, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/SuperChannelInfo;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;ILjava/lang/Object;)Lpantanal/app/bean/SuperChannelInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lpantanal/app/bean/SuperChannelInfo;->copy(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;)Lpantanal/app/bean/SuperChannelInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public final component2()Lpantanal/app/manager/ServiceManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    return-object p0
.end method

.method public final component3()Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final component4()Lcom/oplus/channel/server/IServerBusiness;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    return-object p0
.end method

.method public final copy(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;)Lpantanal/app/bean/SuperChannelInfo;
    .registers 5

    const-string p0, "cardViewInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/bean/SuperChannelInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/bean/SuperChannelInfo;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/SuperChannelInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/SuperChannelInfo;

    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, p1, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v3, p1, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    iget-object v3, p1, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    iget-object p1, p1, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getCardViewInfo()Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public final getJsonObject()Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final getProxy()Lpantanal/app/manager/ServiceManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    return-object p0
.end method

.method public final getServerBusiness()Lcom/oplus/channel/server/IServerBusiness;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lorg/json/JSONObject;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-nez p0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lpantanal/app/bean/SuperChannelInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v1, p0, Lpantanal/app/bean/SuperChannelInfo;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, p0, Lpantanal/app/bean/SuperChannelInfo;->jsonObject:Lorg/json/JSONObject;

    iget-object p0, p0, Lpantanal/app/bean/SuperChannelInfo;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuperChannelInfo(cardViewInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", proxy="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", jsonObject="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serverBusiness="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
