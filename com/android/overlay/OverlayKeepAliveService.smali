.class public final Lcom/android/overlay/OverlayKeepAliveService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOverlayKeepAliveService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlayKeepAliveService.kt\ncom/android/overlay/OverlayKeepAliveService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"
    }
.end annotation


# static fields
.field private static final ASSISTANT_SCREEN_CONFIG_CHANGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.oplus.assistantscreen.configuration.change.provider"

.field private static final ASSIST_ACTION_HEYTAP_KEEP_ALIVE:Ljava/lang/String; = "oplus.intent.action.assistantscreen.keep.alive"

.field public static final INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

.field public static final META_DATA_SUPPORT_KEEP_ALIVE:Ljava/lang/String; = "processPriorityStrategy"

.field private static final METHOD_NOTIFY_PACKAGE_CHANGE:Ljava/lang/String; = "notifyPackageChange"

.field private static final PACKAGE_CHANGE_ACTION:Ljava/lang/String; = "action"

.field private static final PACKAGE_CHANGE_IS_UPDATED:Ljava/lang/String; = "isUpdated"

.field private static final PACKAGE_CHANGE_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final SERVICE_IMPORTANT_PRIORITY:I = 0x41

.field public static final SERVICE_OOM_MANAGEMENT:I = 0x11

.field public static final START_KEEPALIVE_PROGRESS:I = 0x1

.field private static final STOP_KEEPALIVE_CHECKTIME:I = 0xc8

.field private static final STOP_KEEPALIVE_DELAYTIME:J = 0x3e8L

.field public static final STOP_KEEPALIVE_PROGRESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LauncherClient-OverlayKeepAlive"

.field public static mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeepAliveConnected:Z

.field private static mLastStartTime:J

.field private static mOplusAssistantStopped:Z

.field private static final mUnbindCallBack:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/overlay/OverlayKeepAliveService;

    invoke-direct {v0}, Lcom/android/overlay/OverlayKeepAliveService;-><init>()V

    sput-object v0, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    sget-object v0, Lz/a;->d:Lz/a;

    sput-object v0, Lcom/android/overlay/OverlayKeepAliveService;->mUnbindCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->mUnbindCallBack$lambda$2()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->startKeepAlive$lambda$3()V

    return-void
.end method

.method private final bindKeepAliveService()V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    const-string v0, "LauncherClient-OverlayKeepAlive"

    const-string/jumbo v1, "startKeepAlive"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    sget-object v1, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayKeepAliveService;->getMActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_33

    invoke-direct {v1}, Lcom/android/overlay/OverlayKeepAliveService;->getKeepAliveIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x41

    invoke-virtual {v2, v1, p0, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_35

    goto :goto_3a

    :cond_33
    const/4 p0, 0x0

    goto :goto_3a

    :catchall_35
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_49

    const-string v1, "bindService error = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_49
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;)V
    .registers 1

    invoke-static {p0}, Lcom/android/overlay/OverlayKeepAliveService;->notifyPackageChangedIfNecessary$lambda$6(Landroid/os/Bundle;)V

    return-void
.end method

.method private final getKeepAliveIntent()Landroid/content/Intent;
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr p0, v0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/android/overlay/OverlayProxy;->ASSIST_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "oplus.intent.action.assistantscreen.keep.alive"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeepAliveIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-object p0
.end method

.method public static final getMOplusAssistantStopped()Z
    .registers 1

    sget-boolean v0, Lcom/android/overlay/OverlayKeepAliveService;->mOplusAssistantStopped:Z

    return v0
.end method

.method public static synthetic getMOplusAssistantStopped$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOverlayPriority()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    return v0

    :cond_9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    const/16 v0, 0x41

    return v0
.end method

.method private static final mUnbindCallBack$lambda$2()V
    .registers 3

    const-string v0, "LauncherClient-OverlayKeepAlive"

    const-string/jumbo v1, "stopKeepAlive"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    sget-object v1, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayKeepAliveService;->getMActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1e

    goto :goto_23

    :cond_1c
    const/4 v1, 0x0

    goto :goto_23

    :catchall_1e
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_23
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_33

    const-string/jumbo v2, "unbindService error = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    return-void
.end method

.method public static final notifyPackageChangedIfNecessary(Landroid/content/Intent;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    const-string v1, "LauncherClient-OverlayKeepAlive"

    if-eqz v0, :cond_15

    const-string p0, "google overlay or not support keepAlive oplus overlay version,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragServerBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "assistscreen process alive by drag service,no need notifyPackageChanged"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    if-nez v0, :cond_2e

    const-string/jumbo p0, "notifyPackageChangedIfNecessary.The OverlayService.sInstance is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string p0, "assistscreen process alive by overlay service,no need notifyPackageChanged"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3a
    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string p0, "assistscreen process switch off ,no need notifyPackageChanged"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_5c
    move-object v0, v3

    :goto_5d
    if-nez v0, :cond_60

    return-void

    :cond_60
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_6e
    const/4 v4, 0x0

    if-eqz v3, :cond_79

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_78

    goto :goto_79

    :cond_78
    move v2, v4

    :cond_79
    :goto_79
    if-nez v2, :cond_f0

    sget-object v2, Lcom/android/common/config/Constants$Packages;->ASSIST_PACKAGE:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    goto :goto_f0

    :cond_84
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_f8

    goto :goto_ef

    :sswitch_8c
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    goto :goto_ef

    :sswitch_95
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    goto :goto_ef

    :sswitch_9e
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    goto :goto_ef

    :sswitch_a7
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    :cond_af
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "action"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string v4, "isUpdated"

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyPackageChanged,action:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",packageName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/model/b1;

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/b1;-><init>(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_ef
    :goto_ef
    return-void

    :cond_f0
    :goto_f0
    const-string/jumbo p0, "need notifyPackageChanged packageName:"

    invoke-static {p0, v3, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        -0x304ed112 -> :sswitch_a7
        0xa480416 -> :sswitch_9e
        0x1f50b9c2 -> :sswitch_95
        0x5c1076e2 -> :sswitch_8c
    .end sparse-switch
.end method

.method private static final notifyPackageChangedIfNecessary$lambda$6(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "$extras"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.oplus.assistantscreen.configuration.change.provider"

    const-string/jumbo v2, "notifyPackageChange"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_2c

    :cond_24
    const-string/jumbo v0, "runOnWorkerThread exception:e="

    const-string v1, "LauncherClient-OverlayKeepAlive"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public static final setMOplusAssistantStopped(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/overlay/OverlayKeepAliveService;->mOplusAssistantStopped:Z

    return-void
.end method

.method public static final startKeepAlive(Landroid/app/Activity;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    const-string v1, "LauncherClient-OverlayKeepAlive"

    if-eqz v0, :cond_1a

    const-string p0, "google overlay or not support keepAlive oplus overlay version,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/overlay/OverlayKeepAliveService;->mLastStartTime:J

    const-string/jumbo v2, "readyToStartKeepAlive"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/overlay/OverlayKeepAliveService;->mUnbindCallBack:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    if-eqz v2, :cond_38

    const-string/jumbo p0, "startKeepAlive mKeepAliveConnected is true,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/overlay/OverlayKeepAliveService;->setMActivity(Ljava/lang/ref/WeakReference;)V

    if-eqz p1, :cond_46

    invoke-direct {v0}, Lcom/android/overlay/OverlayKeepAliveService;->bindKeepAliveService()V

    goto :goto_4b

    :cond_46
    sget-object p0, Lcom/android/launcher/folder/recommend/g;->c:Lcom/android/launcher/folder/recommend/g;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :goto_4b
    return-void
.end method

.method private static final startKeepAlive$lambda$3()V
    .registers 1

    sget-object v0, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    invoke-direct {v0}, Lcom/android/overlay/OverlayKeepAliveService;->bindKeepAliveService()V

    return-void
.end method

.method public static final stopKeepAlive(Landroid/app/Activity;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    const-string v1, "LauncherClient-OverlayKeepAlive"

    if-eqz v0, :cond_1a

    const-string p0, "google overlay or not support keepAlive oplus overlay version,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/android/overlay/OverlayKeepAliveService;->INSTANCE:Lcom/android/overlay/OverlayKeepAliveService;

    sget-boolean v2, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    if-nez v2, :cond_21

    return-void

    :cond_21
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getInstance(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getInstance(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    if-eqz v2, :cond_38

    return-void

    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/overlay/OverlayKeepAliveService;->mLastStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_46

    return-void

    :cond_46
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/overlay/OverlayKeepAliveService;->setMActivity(Ljava/lang/ref/WeakReference;)V

    const-string/jumbo p0, "readyToStopKeepAlive"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/overlay/OverlayKeepAliveService;->mUnbindCallBack:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final stopKeepAliveImmediately(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "LauncherClient-OverlayKeepAlive"

    const-string/jumbo v0, "stopKeepAliveImmediately"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/overlay/OverlayKeepAliveService;->mUnbindCallBack:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getMActivity()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/overlay/OverlayKeepAliveService;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mActivity"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMKeepAliveConnected()Z
    .registers 1

    sget-boolean p0, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    return p0
.end method

.method public final getMLastStartTime()J
    .registers 3

    sget-wide v0, Lcom/android/overlay/OverlayKeepAliveService;->mLastStartTime:J

    return-wide v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    const-string p0, "LauncherClient-OverlayKeepAlive"

    const-string/jumbo p1, "onKeepAliveServiceConnected"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const-string p0, "LauncherClient-OverlayKeepAlive"

    const-string/jumbo p1, "onKeepAliveServiceDisconnected"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    return-void
.end method

.method public final setMActivity(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/overlay/OverlayKeepAliveService;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setMKeepAliveConnected(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/overlay/OverlayKeepAliveService;->mKeepAliveConnected:Z

    return-void
.end method

.method public final setMLastStartTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/overlay/OverlayKeepAliveService;->mLastStartTime:J

    return-void
.end method
