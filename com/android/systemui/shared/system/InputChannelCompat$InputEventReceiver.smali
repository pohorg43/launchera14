.class public Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/InputChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputEventReceiver"
.end annotation


# instance fields
.field private final mReceiver:Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;

.field private pw:Ljava/io/PrintWriter;

.field private writer:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->writer:Ljava/io/StringWriter;

    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->writer:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->pw:Ljava/io/PrintWriter;

    new-instance v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;-><init>(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/StringWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->writer:Ljava/io/StringWriter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;)Ljava/io/PrintWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->pw:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->getInputEventHandledTips(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInputEventHandledTips(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "batched inputEvent handled id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "get inputEvent tips has error: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "InputChannelCompat"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;

    invoke-virtual {p0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    return-void
.end method

.method public setBatchingEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->setBatchingEnabled(Z)V

    return-void
.end method
