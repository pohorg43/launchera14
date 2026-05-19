.class public final Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "PhoneStateMonitorHelper"


# instance fields
.field private inCalling:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/TelephonyCallback$CallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field private final telephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;-><init>(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getListeners$p(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public final addListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public final getInCalling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->inCalling:Z

    return p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-object p0
.end method

.method public final registerTelephonyCallback()V
    .registers 4

    const-string v0, "PhoneStateMonitorHelper"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v1, v2, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_11
    const-string p0, "QuickStep"

    const-string v1, "registerTelephonyCallback()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2b

    const-string v1, "registerTelephonyCallback error, "

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

.method public final removeListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setInCalling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->inCalling:Z

    return-void
.end method

.method public final setMGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-void
.end method

.method public final unregisterTelephonyCallback()V
    .registers 3

    const-string v0, "PhoneStateMonitorHelper"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_b
    const-string p0, "QuickStep"

    const-string v1, "unregisterTelephonyCallback()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string v1, "unregisterTelephonyCallback error, "

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    return-void
.end method
