.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;,
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;

.field private static final KEY_COMMON_CONFIG:Ljava/lang/String; = "ENTER_SMART_LAUNCHER"

.field private static final KEY_SP_MUTE_PID:Ljava/lang/String; = "key_sp_mute_pid"

.field private static final KEY_SP_MUTE_UID:Ljava/lang/String; = "key_sp_mute_uid"

.field private static final KEY_SP_UNMUTING:Ljava/lang/String; = "key_sp_unmuting_pid_uid"

.field private static final MUTE_CODE:I = 0x4

.field private static final NOTIFY_METHOD:Ljava/lang/String; = "disableScreenStayAwakeOfApp"

.field private static final TAG:Ljava/lang/String; = "RFT_SystemNotifier"

.field private static final UNMUTE_CODE:I = 0x3

.field private static final UNMUTE_DELAY:J = 0x3e8L

.field private static volatile unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;


# instance fields
.field private final audioManager$delegate:Lh4/f;

.field private final bundle$delegate:Lh4/f;

.field private final executors:Lcom/oplus/util/OplusLooperExecutor;

.field private notifyClazz:Ljava/lang/reflect/Method;

.field private final powerManager$delegate:Lh4/f;

.field private volatile recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

.field private volatile savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

.field private final sp$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$powerManager$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$powerManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->powerManager$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$audioManager$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$audioManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->audioManager$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$bundle$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$bundle$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->bundle$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$sp$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$sp$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->sp$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    const-string v1, "DYNAMIC_TASK_EXECUTOR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    return-void
.end method

.method public static synthetic a(ZLcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicFreeze$lambda$11(ZLcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;)V

    return-void
.end method

.method public static final synthetic access$getUnmuteTask$cp()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    return-object v0
.end method

.method public static final synthetic access$setUnmuteTask$cp(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicEnter$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->muteStream$lambda$17(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicEnter$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicExit$lambda$3(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicExit$lambda$5(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->audioManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final getBundle()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->bundle$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method private final getPowerManager()Landroid/os/OplusPowerManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->powerManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/OplusPowerManager;

    return-object p0
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->sp$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final muteStream(ZII)V
    .registers 11

    const-string v0, "muteStream(), "

    const-string v1, ", ["

    const-string v2, ", "

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_21

    :cond_20
    move-object v4, v5

    :goto_21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_35

    :cond_34
    move-object v4, v5

    :goto_35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_49

    :cond_48
    move-object v3, v5

    :goto_49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5d

    :cond_5c
    move-object v3, v5

    :goto_5d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_71

    :cond_70
    move-object v1, v5

    :goto_71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_85

    :cond_84
    move-object v1, v5

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_SystemNotifier"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7c

    if-eqz p1, :cond_f8

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v2

    if-ne v2, p2, :cond_b0

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_b0

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v5, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    :cond_b0
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v2

    if-ne v2, p2, :cond_cb

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_cb

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    :cond_cb
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_f8

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getKeyValuePairs()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v3, v4, v6}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-eqz v2, :cond_f8

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    :cond_f8
    if-ltz p2, :cond_145

    if-gez p3, :cond_fd

    goto :goto_145

    :cond_fd
    if-eqz p1, :cond_101

    const/4 p1, 0x4

    goto :goto_102

    :cond_101
    const/4 p1, 0x3

    :goto_102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oplusMuteStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {p3}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13b

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    if-eqz p0, :cond_13a

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_13a
    return-void

    :cond_13b
    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance p3, Lcom/android/wm/shell/animation/c;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_145
    :goto_145
    return-void
.end method

.method private static final muteStream$lambda$17(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$keyValuePairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_18

    goto :goto_1d

    :cond_16
    const/4 p0, 0x0

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_39

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "muteStream(), e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RFT_SystemNotifier"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method private static final notifyDynamicEnter$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyPowerManager(ZII)V

    return-void
.end method

.method private static final notifyDynamicEnter$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyPowerManager(ZII)V

    return-void
.end method

.method private static final notifyDynamicExit$lambda$3(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyPowerManager(ZII)V

    return-void
.end method

.method private static final notifyDynamicExit$lambda$5(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyPowerManager(ZII)V

    return-void
.end method

.method private static final notifyDynamicFreeze$lambda$11(ZLcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDynamicFreeze(), enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RFT_SystemNotifier"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object p0

    const-string v1, "ENTER_SMART_LAUNCHER"

    invoke-direct {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/oplus/util/OplusCommonConfig;->putConfigInfoAsUser(Ljava/lang/String;Landroid/os/Bundle;II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_35
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDynamicFreeze(), e="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method private final notifyPowerManager(ZII)V
    .registers 12

    const-string v0, "RFT_SystemNotifier"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyClazz:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1d

    const-class v1, Landroid/os/OplusPowerManager;

    const-string v5, "disableScreenStayAwakeOfApp"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyClazz:Ljava/lang/reflect/Method;

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPowerManager(), "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyClazz:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_61

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getPowerManager()Landroid/os/OplusPowerManager;

    move-result-object p0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_63

    goto :goto_68

    :cond_61
    const/4 p0, 0x0

    goto :goto_68

    :catchall_63
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_68
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyPowerManager(), show="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    return-void
.end method


# virtual methods
.method public final getExecutors()Lcom/oplus/util/OplusLooperExecutor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    return-object p0
.end method

.method public final notifyDynamicEnter(III)V
    .registers 13

    const-string v0, "RFT_SystemNotifier"

    const-string v1, ", "

    const/4 v2, -0x1

    if-eq p1, v2, :cond_72

    if-ne p2, v2, :cond_a

    goto :goto_72

    :cond_a
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key_sp_mute_pid"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_sp_mute_uid"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "notifyDynamicEnter(), "

    const-string v8, ", ["

    invoke-static {v7, p3, v8, v3, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v7, "], ["

    invoke-static {p3, v5, v7, p1, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v2, :cond_51

    if-eq v5, v2, :cond_51

    if-ne v3, p1, :cond_42

    if-eq v5, p2, :cond_51

    :cond_42
    const/4 p3, 0x0

    invoke-direct {p0, p3, v3, v5}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->muteStream(ZII)V

    iget-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v3, v5, v1}, Lcom/oplus/quickstep/dynamictask/flexible/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;III)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_51
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->muteStream(ZII)V

    iget-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oplus/quickstep/dynamictask/flexible/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;III)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_72
    :goto_72
    const-string p0, "notifyDynamicEnter(), ["

    const-string p3, "], return."

    invoke-static {p0, p1, v1, p2, p3}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifyDynamicExit(IIIZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "key_sp_mute_pid"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "key_sp_mute_uid"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "notifyDynamicExit(), "

    const-string v10, ", ["

    const-string v11, ", "

    invoke-static {v9, v3, v10, v1, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], ["

    invoke-static {v9, v2, v10, v4, v11}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v10, :cond_3f

    invoke-virtual {v10}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_40

    :cond_3f
    const/4 v10, 0x0

    :goto_40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v10, :cond_53

    invoke-virtual {v10}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_54

    :cond_53
    const/4 v10, 0x0

    :goto_54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RFT_SystemNotifier"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x3e8

    const/4 v9, 0x1

    if-eq v1, v6, :cond_af

    if-eq v2, v6, :cond_af

    iget-object v13, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v14, Lcom/oplus/quickstep/dynamictask/flexible/a;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v1, v2, v15}, Lcom/oplus/quickstep/dynamictask/flexible/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;III)V

    invoke-virtual {v13, v14}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v13, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v13, :cond_8f

    sget-object v13, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v13, :cond_86

    invoke-virtual {v13}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getPid()I

    move-result v13

    if-ne v13, v1, :cond_86

    move v15, v9

    :cond_86
    if-nez v15, :cond_8f

    sget-object v13, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v13, :cond_8f

    invoke-virtual {v13}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->run()V

    :cond_8f
    new-instance v13, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v14

    invoke-direct {v13, v1, v2, v3, v14}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;-><init>(IIILandroid/media/AudioManager;)V

    sput-object v13, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eq v3, v6, :cond_aa

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->getStartingTaskId()I

    move-result v14

    if-ne v3, v14, :cond_aa

    invoke-virtual {v13}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->run()V

    goto :goto_af

    :cond_aa
    iget-object v3, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v3, v13, v11, v12}, Lcom/oplus/util/OplusLooperExecutor;->executeDelay(Ljava/lang/Runnable;J)V

    :cond_af
    :goto_af
    if-eq v4, v6, :cond_fb

    if-eq v7, v9, :cond_fb

    if-eq v4, v1, :cond_fb

    if-eq v7, v2, :cond_fb

    new-instance v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v1, v4, v7, v6, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;-><init>(IIILandroid/media/AudioManager;)V

    iput-object v1, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getKeyValuePairs()Ljava/lang/String;

    move-result-object v1

    goto :goto_cc

    :cond_cb
    const/4 v1, 0x0

    :goto_cc
    iget-object v2, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v2, :cond_d5

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getKeyValuePairs()Ljava/lang/String;

    move-result-object v2

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    :goto_d6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    iget-object v1, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    :cond_ea
    iget-object v1, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    iget-object v2, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->savedUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-virtual {v1, v2, v11, v12}, Lcom/oplus/util/OplusLooperExecutor;->executeDelay(Ljava/lang/Runnable;J)V

    iget-object v1, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v2, Lcom/oplus/quickstep/dynamictask/flexible/a;

    invoke-direct {v2, v0, v4, v7, v9}, Lcom/oplus/quickstep/dynamictask/flexible/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;III)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_fb
    if-eqz p4, :cond_142

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_sp_unmuting_pid_uid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_142

    const-string v2, "notifyDynamicExit(), recovery unmute "

    invoke-static {v2, v1, v10}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    if-eqz v2, :cond_118

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->getKeyValuePairs()Ljava/lang/String;

    move-result-object v2

    goto :goto_119

    :cond_118
    const/4 v2, 0x0

    :goto_119
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    iget-object v2, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->unmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    :cond_12d
    new-instance v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v2, v6, v6, v6, v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;-><init>(IIILandroid/media/AudioManager;)V

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->setKeyValuePairs(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    iget-object v1, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    iget-object v2, v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->recoveryUnmuteTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-virtual {v1, v2, v11, v12}, Lcom/oplus/util/OplusLooperExecutor;->executeDelay(Ljava/lang/Runnable;J)V

    :cond_142
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final notifyDynamicFreeze(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ENTER_SMART_LAUNCHER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p1, p0}, Lcom/android/common/util/q;-><init>(ZLcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
