.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmuteTask"
.end annotation


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final executors:Lcom/oplus/util/OplusLooperExecutor;

.field private keyValuePairs:Ljava/lang/String;

.field private final pid:I

.field private final sp:Landroid/content/SharedPreferences;

.field private final taskId:I

.field private final uid:I


# direct methods
.method public constructor <init>(IIILandroid/media/AudioManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    iput p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    iput p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    iput-object p4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "oplusMuteStream=3:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x7c

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    sget-object p1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getRecentsPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    const-string p2, "key_sp_unmuting_pid_uid"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->run$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;IIILandroid/media/AudioManager;ILjava/lang/Object;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->copy(IIILandroid/media/AudioManager;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->unmute(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    return p0
.end method

.method public final component4()Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public final copy(IIILandroid/media/AudioManager;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;
    .registers 5

    new-instance p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;-><init>(IIILandroid/media/AudioManager;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    iget v3, p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    iget v3, p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    iget v3, p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    iget-object p1, p1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public final getKeyValuePairs()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    return-object p0
.end method

.method public final getPid()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    return p0
.end method

.method public final getTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    return p0
.end method

.method public final getUid()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Landroid/media/AudioManager;->hashCode()I

    move-result p0

    :goto_20
    add-int/2addr v0, p0

    return v0
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;->getUnmuteTask()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget v1, v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    iget v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    if-ne v1, v3, :cond_19

    const/4 v2, 0x1

    :cond_19
    if-eqz v2, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;->setUnmuteTask(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V

    :cond_1f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->executors:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->unmute(Ljava/lang/String;)V

    goto :goto_3f

    :cond_35
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->executors:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_3f
    return-void
.end method

.method public final setKeyValuePairs(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->keyValuePairs:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UnmuteTask(pid="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unmute(Ljava/lang/String;)V
    .registers 6

    const-string v0, "key_sp_unmuting_pid_uid"

    const-string v1, "RFT_SystemNotifier"

    const-string v2, "keyValuePairs"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmute(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->audioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_24
    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3e
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_46
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_60

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unmute(), e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method
