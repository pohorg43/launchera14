.class Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;
.super Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public final synthetic val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V
    .registers 6

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iput-object p5, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 9

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "InputChannelCompat"

    if-eqz v0, :cond_30

    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2a

    sget-boolean v5, Lcom/android/systemui/shared/system/InputChannelCompat;->sIsOpenDebug:Z

    if-eqz v5, :cond_2a

    const-string/jumbo v5, "onInputEvent: sequenceNumber = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-static {v4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move v5, v1

    goto :goto_32

    :cond_30
    move-object v4, p1

    move v5, v2

    :goto_32
    iget-object v6, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    invoke-interface {v6, v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)V

    if-eqz v5, :cond_3c

    invoke-virtual {v4}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    :cond_3c
    if-eqz v0, :cond_97

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_97

    sget-boolean v0, Lcom/android/systemui/shared/system/InputChannelCompat;->sIsOpenDebug:Z

    if-eqz v0, :cond_97

    :try_start_4b
    iget-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-static {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->access$000(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-static {v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->access$000(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/StringWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-static {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->access$100(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/view/BatchedInputEventReceiver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInputEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-static {v2}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->access$000(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/StringWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-static {v0, p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->access$200(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x8

    if-eqz v0, :cond_a4

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_a4
    invoke-virtual {p0, p1, v1}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    if-eqz v0, :cond_ac

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_ac
    return-void
.end method
