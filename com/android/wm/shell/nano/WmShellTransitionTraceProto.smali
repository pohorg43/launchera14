.class public final Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field public static final INVALID:I = 0x0

.field public static final MAGIC_NUMBER_H:I = 0x45434152

.field public static final MAGIC_NUMBER_L:I = 0x54534d57

.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;


# instance fields
.field public handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

.field public magicNumber:J

.field public realToElapsedTimeOffsetNanos:J

.field public transitions:[Lcom/android/wm/shell/nano/Transition;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->clear()Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    sput-object v1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

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
    sget-object v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->_emptyArray:[Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    invoke-static {}, Lcom/android/wm/shell/nano/Transition;->emptyArray()[Lcom/android/wm/shell/nano/Transition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    invoke-static {}, Lcom/android/wm/shell/nano/HandlerMapping;->emptyArray()[Lcom/android/wm/shell/nano/HandlerMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    array-length v0, v0

    if-lez v0, :cond_27

    move v0, v2

    :goto_15
    iget-object v3, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    array-length v4, v3

    if-ge v0, v4, :cond_27

    aget-object v3, v3, v0

    if-eqz v3, :cond_24

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-eqz v0, :cond_40

    array-length v0, v0

    if-lez v0, :cond_40

    :goto_2e
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    array-length v3, v0

    if-ge v2, v3, :cond_40

    aget-object v0, v0, v2

    if-eqz v0, :cond_3d

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_40
    iget-wide v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4e

    const/4 p0, 0x4

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result p0

    add-int/2addr v1, p0

    :cond_4e
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_96

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_25

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1e

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    goto :goto_0

    :cond_25
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-nez v1, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    array-length v3, v1

    :goto_30
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/android/wm/shell/nano/HandlerMapping;

    if-eqz v3, :cond_38

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    :goto_38
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4e

    new-instance v1, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v1}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4e
    new-instance v0, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    goto :goto_0

    :cond_5d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    if-nez v1, :cond_67

    move v3, v2

    goto :goto_68

    :cond_67
    array-length v3, v1

    :goto_68
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/android/wm/shell/nano/Transition;

    if-eqz v3, :cond_70

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_70
    :goto_70
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_86

    new-instance v1, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v1}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_86
    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    goto/16 :goto_0

    :cond_96
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    goto/16 :goto_0

    :cond_9e
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    array-length v0, v0

    if-lez v0, :cond_1f

    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    array-length v3, v2

    if-ge v0, v3, :cond_1f

    aget-object v2, v2, v0

    if-eqz v2, :cond_1c

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-eqz v0, :cond_36

    array-length v0, v0

    if-lez v0, :cond_36

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    array-length v2, v0

    if-ge v1, v2, :cond_36

    aget-object v0, v0, v1

    if-eqz v0, :cond_33

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_36
    iget-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_42

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    :cond_42
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
