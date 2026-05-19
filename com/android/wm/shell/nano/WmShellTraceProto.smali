.class public final Lcom/android/wm/shell/nano/WmShellTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/WmShellTraceProto;


# instance fields
.field public testValue:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/WmShellTraceProto;->clear()Lcom/android/wm/shell/nano/WmShellTraceProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/WmShellTraceProto;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/nano/WmShellTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTraceProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/nano/WmShellTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTraceProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/WmShellTraceProto;

    sput-object v1, Lcom/android/wm/shell/nano/WmShellTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTraceProto;

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
    sget-object v0, Lcom/android/wm/shell/nano/WmShellTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTraceProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/WmShellTraceProto;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/WmShellTraceProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/nano/WmShellTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTraceProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/wm/shell/nano/WmShellTraceProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/WmShellTraceProto;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/WmShellTraceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/nano/WmShellTraceProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/WmShellTraceProto;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-boolean p0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTraceProto;
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

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    goto :goto_0

    :cond_18
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/WmShellTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTraceProto;

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

    iget-boolean v0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
