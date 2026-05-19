.class Lcom/android/wm/shell/transition/Tracer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
        "Lcom/google/protobuf/nano/MessageNano;",
        "Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;",
        "Lcom/android/wm/shell/nano/Transition;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/Tracer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Tracer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/Tracer$1;->this$0:Lcom/android/wm/shell/transition/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBytes(Ljava/lang/Object;)[B
    .registers 2

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Tracer$1;->getBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public getItemSize(Lcom/google/protobuf/nano/MessageNano;)I
    .registers 2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Tracer$1;->getItemSize(Lcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    return p0
.end method

.method public write(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;",
            "Ljava/util/Queue<",
            "Lcom/android/wm/shell/nano/Transition;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/wm/shell/nano/Transition;

    invoke-interface {p2, v0}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/wm/shell/nano/Transition;

    iput-object p2, p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Tracer$1;->getBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Tracer$1;->write(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;Ljava/util/Queue;Ljava/io/OutputStream;)V

    return-void
.end method
