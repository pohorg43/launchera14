.class public final Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusHoraeThermalHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusHoraeThermalHelper.kt\ncom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1855#2,2:102\n*S KotlinDebug\n*F\n+ 1 OplusHoraeThermalHelper.kt\ncom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1\n*L\n50#1:102,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;->onReceive$lambda$2$lambda$1(I)V

    return-void
.end method

.method private static final onReceive$lambda$2$lambda$1(I)V
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->access$setCurrentLevel$p(I)V

    invoke-static {}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->access$getListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;->onlevelChanged(I)V

    goto :goto_d

    :cond_1d
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_2f

    const-string p0, "thermallevel"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "currenttemperature"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p2

    if-eqz p2, :cond_24

    const-string p2, "onReceive: current temperature is "

    const-string v0, ", current level is "

    invoke-static {p2, p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v0, "OplusHoraeThermalHelper"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/common/util/e1;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/common/util/e1;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method
