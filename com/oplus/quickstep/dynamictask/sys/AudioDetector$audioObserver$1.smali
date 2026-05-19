.class public final Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;->onReceive$lambda$0(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/content/Intent;)V

    return-void
.end method

.method private static final onReceive$lambda$0(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$handleAudioStateChanged(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string v0, "android.Multimedia.AudioEffect.AudioTrack_BROADCAST"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object p1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4e

    :cond_1d
    const-string p2, "oplus.intent.action.INIT_LIVELOCK_AUDIO_KEEP_FINISH"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;

    invoke-static {p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$handleAudioWhiteListChanged(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$setAudioWhiteList$p(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_WHITE_LIST_CHANGED, audioWhiteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$getAudioWhiteList$p(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RDT_AudioDetector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method
