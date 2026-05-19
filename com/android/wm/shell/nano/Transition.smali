.class public final Lcom/android/wm/shell/nano/Transition;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/Transition;


# instance fields
.field public abortTimeNs:J

.field public dispatchTimeNs:J

.field public handler:I

.field public id:I

.field public mergeRequestTimeNs:J

.field public mergeTimeNs:J

.field public mergedInto:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/Transition;->clear()Lcom/android/wm/shell/nano/Transition;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/Transition;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/Transition;

    sput-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

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
    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/nano/Transition;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/wm/shell/nano/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/nano/Transition;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/Transition;
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1a
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    if-eqz v0, :cond_24

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_24
    iget-wide v2, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_30
    iget-wide v2, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3c
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    if-eqz v0, :cond_46

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_46
    iget-wide v2, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    cmp-long p0, v2, v4

    if-eqz p0, :cond_52

    const/4 p0, 0x7

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v1, p0

    :cond_52
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;
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

    if-eqz v0, :cond_5a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_53

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x18

    if-eq v0, v1, :cond_45

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_37

    const/16 v1, 0x30

    if-eq v0, v1, :cond_30

    const/16 v1, 0x38

    if-eq v0, v1, :cond_29

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    goto :goto_0

    :cond_30
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    goto :goto_0

    :cond_37
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    goto :goto_0

    :cond_3e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    goto :goto_0

    :cond_45
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    goto :goto_0

    :cond_4c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    goto :goto_0

    :cond_53
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    goto :goto_0

    :cond_5a
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/Transition;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_12
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_24
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2e

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2e
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    if-eqz v0, :cond_36

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_36
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_40

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_40
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
