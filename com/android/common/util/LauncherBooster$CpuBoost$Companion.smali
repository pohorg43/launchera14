.class public final Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster$CpuBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherBooster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherBooster.kt\ncom/android/common/util/LauncherBooster$CpuBoost$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/HandlerThread;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;->reportKeyThreadToUAF$lambda$1(Landroid/os/HandlerThread;)V

    return-void
.end method

.method private static final reportKeyThreadToUAF$lambda$1(Landroid/os/HandlerThread;)V
    .registers 5

    const-string v0, "$thread"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "thread.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->access$reportKeyThread(Lcom/android/common/util/LauncherBooster$CpuBoost;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/LauncherBooster$CpuBoost;->access$getStaticUxThread$cp()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_33

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    :cond_33
    return-void
.end method


# virtual methods
.method public final reportKeyThreadToUAF(Landroid/os/HandlerThread;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "thread"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/LauncherBooster$CpuBoost;->access$getKeyUxThread$cp()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not key thread, skip reportKeyThread2UAF"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherBooster"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    new-instance p0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/a;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
