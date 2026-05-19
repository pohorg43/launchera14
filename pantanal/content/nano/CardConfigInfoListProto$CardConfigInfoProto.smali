.class public final Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/nano/CardConfigInfoListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardConfigInfoProto"
.end annotation


# static fields
.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final HOT:I = 0x3

.field public static final INSTANT:I = 0x1

.field public static final NEW:I = 0x2

.field public static final NONE:I = 0x1

.field public static final NOTIFICATION_LG:I = 0x9

.field public static final NOTIFICATION_MD:I = 0x8

.field public static final NOTIFICATION_SM:I = 0x7

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final SEEDING:I = 0x64

.field public static final SERVICE:I = 0x4

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1

.field public static final UNAVAILABLE:I = 0x4

.field public static final WIDGET_ONE_PLUS_ONE:I = 0x6

.field private static volatile _emptyArray:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;


# instance fields
.field public category:I

.field public componentName:Ljava/lang/String;

.field public defaultSubscribed:I

.field public desc:Ljava/lang/String;

.field public displayArea:I

.field public dragonFlySecure:Z

.field public dragonFlyService:Ljava/lang/String;

.field public dragonFlyType:I

.field public groupIcon:Ljava/lang/String;

.field public groupId:I

.field public groupOrder:I

.field public groupTitle:Ljava/lang/String;

.field public identification:Ljava/lang/String;

.field public instantCardUrl:Ljava/lang/String;

.field public isDarkStyle:Z

.field public loadFailDp:Ljava/lang/String;

.field public loadFailPicPath:Ljava/lang/String;

.field public loadingBgIcon:Ljava/lang/String;

.field public loadingIcon:Ljava/lang/String;

.field public minHeight:I

.field public minWidth:I

.field public miniAppIcon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public operatingIcon:I

.field public orderInGroup:I

.field public packageName:Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public previewSw480:Ljava/lang/String;

.field public reservedFlag:I

.field public resizable:Z

.field public serviceId:Ljava/lang/String;

.field public settingUrl:Ljava/lang/String;

.field public showTitle:I

.field public showWhenLocked:Z

.field public size:I

.field public skeletonDarkPicPath:Ljava/lang/String;

.field public skeletonPicPath:Ljava/lang/String;

.field public supportSuperChannel:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->clear()Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    return-void
.end method

.method public static emptyArray()[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
    .registers 2

    sget-object v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->_emptyArray:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->_emptyArray:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    sput-object v1, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->_emptyArray:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->_emptyArray:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    invoke-direct {v0}, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;-><init>()V

    invoke-virtual {v0, p0}, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    invoke-direct {v0}, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    const-string v1, ""

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    iput v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    const/4 v2, -0x1

    iput v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupOrder:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyType:I

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlySecure:Z

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showTitle:I

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->isDarkStyle:Z

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showWhenLocked:Z

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->supportSuperChannel:Z

    iput-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    iput v2, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    if-eqz v1, :cond_50

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    const/16 v1, 0xa

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0xd

    iget-boolean v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0xf

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    if-eqz v1, :cond_91

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_91
    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    if-eqz v1, :cond_9c

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9c
    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    if-eqz v1, :cond_a7

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a7
    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    const/16 v1, 0x13

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ba
    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    const/16 v1, 0x14

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_cb
    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    if-eqz v1, :cond_d6

    const/16 v3, 0x15

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d6
    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    if-eqz v1, :cond_e1

    const/16 v3, 0x16

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e1
    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupOrder:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ed

    const/16 v3, 0x17

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ed
    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    const/16 v1, 0x18

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_fe
    const/16 v1, 0x19

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyType:I

    if-eqz v0, :cond_112

    const/16 v3, 0x33

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_112
    iget-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlySecure:Z

    if-eqz v0, :cond_11d

    const/16 v3, 0x34

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11d
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    const/16 v0, 0x35

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_12e
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13f

    const/16 v0, 0x36

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_13f
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    const/16 v0, 0x37

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_150
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const/16 v0, 0x38

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_161
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_172

    const/16 v0, 0x39

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_172
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showTitle:I

    if-eqz v0, :cond_17d

    const/16 v3, 0x3a

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_17d
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e

    const/16 v0, 0x3b

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_18e
    iget-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->isDarkStyle:Z

    if-eqz v0, :cond_199

    const/16 v3, 0x3c

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_199
    const/16 v0, 0x3d

    iget-boolean v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showWhenLocked:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b3

    const/16 v1, 0x3e

    iget-object v3, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b3
    iget-boolean v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->supportSuperChannel:Z

    if-eqz v1, :cond_1be

    const/16 v3, 0x3f

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1be
    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1cf

    const/16 v1, 0x40

    iget-object p0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1cf
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_14a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->supportSuperChannel:Z

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showWhenLocked:Z

    goto :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->isDarkStyle:Z

    goto :goto_0

    :sswitch_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    goto :goto_0

    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showTitle:I

    goto :goto_0

    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    goto :goto_0

    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_54
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    goto :goto_0

    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlySecure:Z

    goto :goto_0

    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyType:I

    goto :goto_0

    :sswitch_70
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    goto :goto_0

    :sswitch_77
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    goto :goto_0

    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupOrder:I

    goto/16 :goto_0

    :sswitch_86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    goto/16 :goto_0

    :sswitch_8e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    goto/16 :goto_0

    :sswitch_96
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    goto/16 :goto_0

    :sswitch_ae
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    goto/16 :goto_0

    :sswitch_b6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    goto/16 :goto_0

    :sswitch_be
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d8

    goto/16 :goto_0

    :cond_d8
    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    goto/16 :goto_0

    :sswitch_dc
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    goto/16 :goto_0

    :sswitch_e4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    goto/16 :goto_0

    :sswitch_ec
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_fc
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    goto/16 :goto_0

    :sswitch_104
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_1ec

    goto/16 :goto_0

    :pswitch_10d  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    goto/16 :goto_0

    :sswitch_111
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_119
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_121
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_129
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    goto/16 :goto_0

    :sswitch_131
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_139
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_141
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    goto/16 :goto_0

    :sswitch_149
    return-object p0

    :sswitch_data_14a
    .sparse-switch
        0x0 -> :sswitch_149
        0x8 -> :sswitch_141
        0x12 -> :sswitch_139
        0x1a -> :sswitch_131
        0x20 -> :sswitch_129
        0x2a -> :sswitch_121
        0x32 -> :sswitch_119
        0x3a -> :sswitch_111
        0x40 -> :sswitch_104
        0x48 -> :sswitch_fc
        0x52 -> :sswitch_f4
        0x5a -> :sswitch_ec
        0x60 -> :sswitch_e4
        0x68 -> :sswitch_dc
        0x70 -> :sswitch_c6
        0x7a -> :sswitch_be
        0x80 -> :sswitch_b6
        0x88 -> :sswitch_ae
        0x90 -> :sswitch_a6
        0x9a -> :sswitch_9e
        0xa2 -> :sswitch_96
        0xa8 -> :sswitch_8e
        0xb0 -> :sswitch_86
        0xb8 -> :sswitch_7e
        0xc2 -> :sswitch_77
        0xca -> :sswitch_70
        0x198 -> :sswitch_69
        0x1a0 -> :sswitch_62
        0x1aa -> :sswitch_5b
        0x1b2 -> :sswitch_54
        0x1ba -> :sswitch_4d
        0x1c2 -> :sswitch_46
        0x1ca -> :sswitch_3f
        0x1d0 -> :sswitch_38
        0x1da -> :sswitch_31
        0x1e0 -> :sswitch_2a
        0x1e8 -> :sswitch_23
        0x1f2 -> :sswitch_1c
        0x1f8 -> :sswitch_15
        0x202 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1ec
    .packed-switch 0x1
        :pswitch_10d  #00000001
        :pswitch_10d  #00000002
        :pswitch_10d  #00000003
        :pswitch_10d  #00000004
        :pswitch_10d  #00000005
        :pswitch_10d  #00000006
        :pswitch_10d  #00000007
        :pswitch_10d  #00000008
        :pswitch_10d  #00000009
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    if-eqz v0, :cond_3a

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3a
    const/16 v0, 0xa

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/16 v0, 0xb

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/16 v0, 0xc

    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xd

    iget-boolean v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    const/16 v0, 0xe

    iget v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xf

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    if-eqz v0, :cond_6d

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6d
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    if-eqz v0, :cond_76

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_76
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    if-eqz v0, :cond_7f

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7f
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const/16 v0, 0x13

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_90
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const/16 v0, 0x14

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9f
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    if-eqz v0, :cond_a8

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a8
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    if-eqz v0, :cond_b1

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b1
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupOrder:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_bb

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_bb
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    const/16 v0, 0x18

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->previewSw480:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_ca
    const/16 v0, 0x19

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyType:I

    if-eqz v0, :cond_da

    const/16 v2, 0x33

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_da
    iget-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlySecure:Z

    if-eqz v0, :cond_e3

    const/16 v2, 0x34

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_e3
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    const/16 v0, 0x35

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->dragonFlyService:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f2
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    const/16 v0, 0x36

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonPicPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_101
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    const/16 v0, 0x37

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->skeletonDarkPicPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_110
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    const/16 v0, 0x38

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailPicPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11f
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    const/16 v0, 0x39

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadFailDp:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12e
    iget v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showTitle:I

    if-eqz v0, :cond_137

    const/16 v2, 0x3a

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_137
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    const/16 v0, 0x3b

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_146
    iget-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->isDarkStyle:Z

    if-eqz v0, :cond_14f

    const/16 v2, 0x3c

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_14f
    const/16 v0, 0x3d

    iget-boolean v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->showWhenLocked:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    const/16 v0, 0x3e

    iget-object v2, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->instantCardUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_165
    iget-boolean v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->supportSuperChannel:Z

    if-eqz v0, :cond_16e

    const/16 v2, 0x3f

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_16e
    iget-object v0, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17d

    const/16 v0, 0x40

    iget-object v1, p0, Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;->identification:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
