.class public final Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_THERMAL_LEVEL_CHANGE:Ljava/lang/String; = "oplus.intent.action.THERMAL_LEVEL_CHANGE"

.field public static final INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

.field private static final KEY_CURRENT_TEMPERATURE:Ljava/lang/String; = "currenttemperature"

.field private static final KEY_THERMAL_LEVEL:Ljava/lang/String; = "thermallevel"

.field private static final LEVEL_10:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OplusHoraeThermalHelper"

.field private static currentLevel:I

.field private static final filter$delegate:Lh4/f;

.field private static isRegistered:Z

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final receiver:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->receiver:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->filter$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$setCurrentLevel$p(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->currentLevel:I

    return-void
.end method

.method private final getFilter()Landroid/content/IntentFilter;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->filter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IntentFilter;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isThermalLevelReached10()Z
    .registers 2

    sget p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->currentLevel:I

    const/16 v0, 0xa

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusHoraeThermalHelper"

    const-string v2, "registerReceiver()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isRegistered:Z

    if-nez v2, :cond_2b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isRegistered:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->receiver:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;

    invoke-direct {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->getFilter()Landroid/content/IntentFilter;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p1, v0, p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_30

    :cond_2b
    const-string p0, "registerReceiver(), This receiver is registered !"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method public final removeListener(Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isRegistered:Z

    const-string v0, "OplusHoraeThermalHelper"

    const-string v1, "QuickStep"

    if-eqz p0, :cond_1f

    const-string p0, "unregisterReceiver()"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isRegistered:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->receiver:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_24

    :cond_1f
    const-string p0, "unregisterReceiver(), This receiver is not registered !"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method
