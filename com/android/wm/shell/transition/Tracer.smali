.class public Lcom/android/wm/shell/transition/Tracer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;
    }
.end annotation


# static fields
.field private static final ACTIVE_TRACING_BUFFER_CAPACITY:I = 0x4e2000

.field private static final ALWAYS_ON_TRACING_CAPACITY:I = 0x3c00

.field private static final MAGIC_NUMBER_VALUE:J = 0x4543415254534d57L

.field private static final TRACE_FILE:Ljava/lang/String; = "/data/misc/wmtrace/shell_transition_trace.winscope"

.field public static final WINSCOPE_EXT:Ljava/lang/String; = ".winscope"


# instance fields
.field private mActiveTracingEnabled:Z

.field private final mEnabledLock:Ljava/lang/Object;

.field private final mHandlerIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerUseCountInTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

.field private final mRemovedFromTraceCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTraceBuffer:Lcom/android/internal/util/TraceBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/TraceBuffer<",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;",
            "Lcom/android/wm/shell/nano/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/Tracer;->mActiveTracingEnabled:Z

    new-instance v0, Lcom/android/wm/shell/transition/Tracer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/Tracer$1;-><init>(Lcom/android/wm/shell/transition/Tracer;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    new-instance v1, Lcom/android/internal/util/TraceBuffer;

    new-instance v2, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/j;-><init>(Lcom/android/wm/shell/transition/Tracer;)V

    const/16 v3, 0x3c00

    invoke-direct {v1, v3, v0, v2}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Tracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Tracer;->lambda$logDispatched$1(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/Tracer;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Tracer;->lambda$new$0(Ljava/lang/Object;)V

    return-void
.end method

.method private handleOnEntryRemovedFromTrace(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method private synthetic lambda$logDispatched$1(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Tracer;->handleOnEntryRemovedFromTrace(Ljava/lang/Object;)V

    return-void
.end method

.method private writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v3, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v3, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v3}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_4a
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    iput-object p0, p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    return-void
.end method

.method private writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 8

    const-string v0, "TransitionTracer#writeTraceToFileLocked"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;-><init>()V

    const-wide v1, 0x4543415254534d57L  # 4.655612620672777E25

    iput-wide v1, v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    invoke-direct {p0, v0}, Lcom/android/wm/shell/transition/Tracer;->writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$100(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p0

    const-string p2, "Unable to write buffer to file"

    invoke-static {p1, p2, p0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$200(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_55
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public logAborted(I)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_26

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    new-instance v1, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v1}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v1, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    iput v0, v1, Lcom/android/wm/shell/nano/Transition;->handler:I

    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    new-instance v0, Lcom/android/wm/shell/transition/i;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/transition/i;-><init>(Lcom/android/wm/shell/transition/Tracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public logMergeRequested(II)V
    .registers 6

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    iput p2, v0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public logMerged(II)V
    .registers 6

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    iput p2, v0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5e

    goto :goto_36

    :sswitch_13
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_36

    :cond_1d
    const/4 v3, 0x2

    goto :goto_36

    :sswitch_1f
    const-string/jumbo v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_36

    :cond_29
    const/4 v3, 0x1

    goto :goto_36

    :sswitch_2b
    const-string/jumbo v4, "save-for-bugreport"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    packed-switch v3, :pswitch_data_6c

    const-string v1, "Invalid command: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Tracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v0

    :pswitch_51  #0x2
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/transition/Tracer;->startTrace(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_55  #0x1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/transition/Tracer;->stopTrace(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_59  #0x0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/transition/Tracer;->saveForBugreport(Ljava/io/PrintWriter;)V

    return v2

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x174ab7ac -> :sswitch_2b
        0x360802 -> :sswitch_1f
        0x68ac462 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_55  #00000001
        :pswitch_51  #00000002
    .end packed-switch
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Start tracing the transitions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stop"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Stop tracing the transitions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "save-for-bugreport"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Flush in memory transition trace to file."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string p0, "Tracing is not supported on user builds."

    invoke-static {p1, p0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$000(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "TransitionTracer#saveForBugreport"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/shell_transition_trace.winscope"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/transition/Tracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .registers 3

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string p0, "Tracing is not supported on user builds."

    invoke-static {p1, p0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$000(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "Tracer#startTrace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "Starting shell transition trace."

    invoke-static {p1, v0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$100(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_18
    iput-boolean v0, p0, Lcom/android/wm/shell/transition/Tracer;->mActiveTracingEnabled:Z

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const v0, 0x4e2000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2c

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/shell_transition_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/transition/Tracer;->stopTrace(Ljava/io/PrintWriter;Ljava/io/File;)V

    return-void
.end method

.method public stopTrace(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string p0, "Tracing is not supported on user builds."

    invoke-static {p1, p0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$000(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "Tracer#stopTrace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "Stopping shell transition trace."

    invoke-static {p1, v0}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->access$100(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_18
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/Tracer;->mActiveTracingEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const/16 p1, 0x3c00

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2e

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method
