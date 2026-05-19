.class public final Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;,
        Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAudioDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioDetector.kt\ncom/oplus/quickstep/dynamictask/sys/AudioDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,334:1\n1#2:335\n1#2:352\n1747#3,3:336\n1747#3,3:339\n1603#3,9:342\n1855#3:351\n1856#3:353\n1612#3:354\n766#3:355\n857#3,2:356\n1549#3:358\n1620#3,3:359\n*S KotlinDebug\n*F\n+ 1 AudioDetector.kt\ncom/oplus/quickstep/dynamictask/sys/AudioDetector\n*L\n307#1:352\n223#1:336,3\n276#1:339,3\n307#1:342,9\n307#1:351\n307#1:353\n307#1:354\n311#1:355\n311#1:356,2\n314#1:358\n314#1:359,3\n*E\n"
    }
.end annotation


# static fields
.field private static final ACTION_AUDIOEFFECT_AUDIOTRACK_BROADCAST:Ljava/lang/String; = "android.Multimedia.AudioEffect.AudioTrack_BROADCAST"

.field private static final ACTION_WHITE_LIST_CHANGED:Ljava/lang/String; = "oplus.intent.action.INIT_LIVELOCK_AUDIO_KEEP_FINISH"

.field public static final Companion:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.EXTRA_PACKAGE_NAME"

.field private static final EXTRA_PLAYBACK_PID:Ljava/lang/String; = "android.media.EXTRA_PLAYBACK_PID"

.field private static final EXTRA_PLAYBACK_STATE:Ljava/lang/String; = "android.media.EXTRA_PLAYBACK_STATE"

.field private static final INVALID_PKG:Ljava/lang/String; = "invalid_pkg"

.field private static final KEY_WHITE_LIST:Ljava/lang/String; = "default_livelock_audio_keep_list"

.field private static final STATE_ACTIVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RDT_AudioDetector"

.field private static detachingDynamicPkgName:Ljava/lang/String;

.field private static runningDynamicPkgName:Ljava/lang/String;


# instance fields
.field private volatile activePid:I

.field private volatile activePkgName:Ljava/lang/String;

.field private final activityManager$delegate:Lh4/f;

.field private final audioManager$delegate:Lh4/f;

.field private final audioObserver:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;

.field private audioWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isAudioActive:Z

.field private final mainHandler$delegate:Lh4/f;

.field private onChangedAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->Companion:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;-><init>(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioObserver:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$activityManager$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$activityManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activityManager$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioManager$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$mainHandler$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$mainHandler$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->mainHandler$delegate:Lh4/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->handleAudioWhiteListChanged()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getActiveAudioList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->inWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    check-cast v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    if-eqz v1, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(), active="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RDT_AudioDetector"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPid()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    :cond_51
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->invokeChanged$lambda$18(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Z)V

    return-void
.end method

.method public static final synthetic access$getAudioWhiteList$p(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getDetachingDynamicPkgName$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRunningDynamicPkgName$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->runningDynamicPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleAudioStateChanged(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->handleAudioStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$handleAudioWhiteListChanged(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->handleAudioWhiteListChanged()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAudioWhiteList$p(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setDetachingDynamicPkgName$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRunningDynamicPkgName$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->runningDynamicPkgName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->_init_$lambda$2(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;)V

    return-void
.end method

.method private final getActiveAudioList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const-string v4, "get_deepbuffer_music_pid"

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v3

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-string v0, "RDT_AudioDetector"

    if-eqz v2, :cond_ee

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    move v1, v6

    :goto_26
    if-eqz v1, :cond_2a

    goto/16 :goto_ee

    :cond_2a
    const-string v1, ":"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x6

    invoke-static {v2, v1, v6, v6, v7}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3e

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    goto :goto_64

    :cond_63
    move-object p0, v3

    :goto_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    if-eqz p0, :cond_c3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_74
    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_91
    new-instance v3, Ljava/util/ArrayList;

    const/16 p0, 0xa

    invoke-static {v1, p0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v7, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v1, :cond_b7

    const-string v1, ""

    goto :goto_bc

    :cond_b7
    const-string v11, "it.processName ?: \"\""

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_bc
    invoke-direct {v7, v8, v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_c3
    const-string p0, "getActiveAudioList(), cost=["

    const-string v1, ", "

    invoke-static {p0, v4, v5, v1}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], pidStrList="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pidList="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioList="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_ee
    :goto_ee
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveAudioList(), getParaCost="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pidStrList invalid, return."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final getActivityManager()Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activityManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final getMainHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->mainHandler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getPackageNameByPid(I)Ljava/lang/String;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    if-eqz v4, :cond_14

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_4b

    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p0, :cond_4b

    const-string v2, ":"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {p0, v2, v3, v3, v4}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-static {p0, v3}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4b

    goto :goto_4d

    :cond_4b
    const-string p0, "None"

    :goto_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageNameByPid(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cost="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RDT_AudioDetector"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final handleAudioStateChanged(Landroid/os/Bundle;)V
    .registers 15

    const/4 v0, -0x1

    if-eqz p1, :cond_a

    const-string v1, "android.media.EXTRA_PLAYBACK_PID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    if-eqz p1, :cond_14

    const-string v2, "android.media.EXTRA_PLAYBACK_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_15

    :cond_14
    move v2, v0

    :goto_15
    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    const-string v4, "android.media.EXTRA_PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v3

    :goto_20
    if-nez p1, :cond_24

    const-string p1, ""

    :cond_24
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    iget v5, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    if-ne v1, v5, :cond_2c

    return-void

    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", dynamic=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->runningDynamicPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], whiteListSize="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    const-string v8, "RDT_AudioDetector"

    const/4 v9, 0x0

    if-ne v2, v4, :cond_7f

    sget-object v10, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->runningDynamicPkgName:Ljava/lang/String;

    if-nez v10, :cond_73

    const-string v10, "invalid_pkg"

    :cond_73
    invoke-static {p1, v10, v9, v7}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v10

    if-eqz v10, :cond_7f

    const-string p0, "onReceive, AudioTrack_BROADCAST, Active, flexible, "

    invoke-static {p0, v5, v8}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7f
    if-eq v1, v0, :cond_1cc

    if-ne v2, v0, :cond_85

    goto/16 :goto_1cc

    :cond_85
    const-string v10, ", isAudioActive="

    if-ne v2, v4, :cond_c9

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->inWhiteList(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "onReceive, AudioTrack_BROADCAST, Active, "

    invoke-static {v4, v5, v10}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    const-string v6, ", inWhite="

    const-string v7, ", whiteSize="

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    if-eqz v4, :cond_b2

    if-eqz v2, :cond_1cb

    :cond_b2
    iput-boolean v2, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    iget-boolean v2, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    if-eqz v2, :cond_b9

    move v0, v1

    :cond_b9
    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    if-eqz v0, :cond_c0

    move-object v3, p1

    :cond_c0
    iput-object v3, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->invokeChanged(Z)V

    goto/16 :goto_1cb

    :cond_c9
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getActiveAudioList()Ljava/util/List;

    move-result-object v1

    const-string v11, "onReceive, AudioTrack_BROADCAST, Inactive, "

    if-eqz v1, :cond_17f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_d9

    goto/16 :goto_17f

    :cond_d9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_dd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    invoke-virtual {v6}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->inWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_100

    invoke-virtual {v6}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isNotDynamicPkg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_100

    move v6, v4

    goto :goto_101

    :cond_100
    move v6, v9

    :goto_101
    if-eqz v6, :cond_dd

    goto :goto_105

    :cond_104
    move-object v2, v3

    :goto_105
    check-cast v2, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    if-eqz v2, :cond_136

    iput-boolean v4, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPid()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " also has active whitelist audio: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->invokeChanged(Z)V

    goto/16 :goto_1cb

    :cond_136
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13d

    goto :goto_158

    :cond_13d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_141
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isNotDynamicPkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_141

    goto :goto_159

    :cond_158
    :goto_158
    move v4, v9

    :goto_159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", active audios all not in whitelist and isNotDynamicPkg="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    iput-object v3, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    if-nez v4, :cond_1cb

    invoke-direct {p0, v9}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->invokeChanged(Z)V

    goto :goto_1cb

    :cond_17f
    :goto_17f
    iput-boolean v9, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    iput-object v3, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeAudio empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    if-eqz v0, :cond_1a7

    invoke-static {p1, v0, v9, v7}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-ne p1, v4, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    move v4, v9

    :goto_1a8
    if-eqz v4, :cond_1c8

    sput-object v3, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, AudioTrack_BROADCAST, detachingDynamicPkg, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    invoke-static {p1, p0, v8}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_1cb

    :cond_1c8
    invoke-direct {p0, v9}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->invokeChanged(Z)V

    :cond_1cb
    :goto_1cb
    return-void

    :cond_1cc
    :goto_1cc
    iput-boolean v9, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePid:I

    iput-object v3, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->activePkgName:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onReceive, AudioTrack_BROADCAST, invalid, state="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleAudioWhiteListChanged()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object p0

    const-string v0, "default_livelock_audio_keep_list"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_3a

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_27

    const v1, 0x7f030025

    goto :goto_2a

    :cond_27
    const v1, 0x7f030024

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppContext().resource…te_list\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "handleAudioWhiteListChanged, size="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RDT_AudioDetector"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-object p0
.end method

.method private final inWhiteList(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioWhiteList:Ljava/util/ArrayList;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_29

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_29
    :goto_29
    return v0
.end method

.method private final invokeChanged(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final invokeChanged$lambda$18(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;Z)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method private final isNotDynamicPkg(Ljava/lang/String;)Z
    .registers 5

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->runningDynamicPkgName:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_d

    invoke-static {p1, p0, v1, v0}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    xor-int/2addr p0, v2

    goto :goto_e

    :cond_d
    move p0, v2

    :goto_e
    if-eqz p0, :cond_1e

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->detachingDynamicPkgName:Ljava/lang/String;

    if-eqz p0, :cond_1a

    invoke-static {p1, p0, v1, v0}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    xor-int/2addr p0, v2

    goto :goto_1b

    :cond_1a
    move p0, v2

    :goto_1b
    if-eqz p0, :cond_1e

    move v1, v2

    :cond_1e
    return v1
.end method


# virtual methods
.method public isActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->isAudioActive:Z

    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    const-string p0, "RDT_AudioDetector"

    return-object p0
.end method

.method public register(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.Multimedia.AudioEffect.AudioTrack_BROADCAST"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "oplus.intent.action.INIT_LIVELOCK_AUDIO_KEEP_FINISH"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->audioObserver:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioObserver$1;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0
.end method

.method public type()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method
