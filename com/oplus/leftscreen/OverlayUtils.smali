.class public final Lcom/oplus/leftscreen/OverlayUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/leftscreen/OverlayUtils;

.field public static final SUPPORT:Z = true

.field public static final TAG:Ljava/lang/String; = "OverlayUtils"

.field public static final UNSUPPORT:Z

.field private static final memorySupport$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/leftscreen/OverlayUtils;

    invoke-direct {v0}, Lcom/oplus/leftscreen/OverlayUtils;-><init>()V

    sput-object v0, Lcom/oplus/leftscreen/OverlayUtils;->INSTANCE:Lcom/oplus/leftscreen/OverlayUtils;

    sget-object v0, Lcom/oplus/leftscreen/OverlayUtils$memorySupport$2;->INSTANCE:Lcom/oplus/leftscreen/OverlayUtils$memorySupport$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/leftscreen/OverlayUtils;->memorySupport$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/leftscreen/OverlayUtils;->showHiAssistant$lambda$0(Lcom/android/launcher/Launcher;Landroid/content/Intent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$getTotalMemoryInfo(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/oplus/leftscreen/OverlayUtils;->getTotalMemoryInfo(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private final getMemorySupport()Z
    .registers 1

    sget-object p0, Lcom/oplus/leftscreen/OverlayUtils;->memorySupport$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final getTotalMemoryInfo(Landroid/content/Context;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getTotalMemory()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getbogusTotalMemory(J)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final isSupportRealmeHiAssistant(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "com.oplus.leftscreen"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_21

    if-eqz p0, :cond_21

    sget-object p0, Lcom/oplus/leftscreen/OverlayUtils;->INSTANCE:Lcom/oplus/leftscreen/OverlayUtils;

    invoke-direct {p0}, Lcom/oplus/leftscreen/OverlayUtils;->getMemorySupport()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static final resolveHiAssistantState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "com.oplus.leftscreen"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string p2, "getLauncher  = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const-string v1, "OverlayUtils"

    invoke-static {p2, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p1, :cond_3d

    sget-object p2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {p2, p0}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setHiAssistantAppEnable(Z)V

    :cond_3d
    return-void
.end method

.method public static final showHiAssistant(Lcom/android/launcher/Launcher;Ljava/lang/Runnable;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    const-string v1, "OverlayUtils"

    if-eqz v0, :cond_19

    const-string p0, "split screen no hiassistant"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_19
    const-string v0, "showHiAssistant"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.HIASSISTANT_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oplus.leftscreen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oplus.leftscreen.activity.PullDownActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStart(Landroid/content/Intent;)V

    :cond_46
    sget-object v1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/quickstep/f1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/quickstep/f1;-><init>(Lcom/android/launcher/Launcher;Landroid/content/Intent;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final showHiAssistant$lambda$0(Lcom/android/launcher/Launcher;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    const-string p0, "OverlayUtils"

    const-string p1, "start activity failed, HiAssistantMainActivity not found!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1d
    return-void
.end method
