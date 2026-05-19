.class public final Lcom/android/wm/shell/nano/HandlerMapping;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/HandlerMapping;->clear()Lcom/android/wm/shell/nano/HandlerMapping;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/HandlerMapping;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/HandlerMapping;

    sput-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

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
    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/nano/HandlerMapping;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/wm/shell/nano/HandlerMapping;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/nano/HandlerMapping;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/HandlerMapping;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;
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

    if-eqz v0, :cond_23

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    goto :goto_0

    :cond_23
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/HandlerMapping;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
