.class public final Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSystemDetectorCamp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemDetectorCamp.kt\ncom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n13309#2,2:97\n1#3:99\n*S KotlinDebug\n*F\n+ 1 SystemDetectorCamp.kt\ncom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp\n*L\n57#1:97,2\n*E\n"
    }
.end annotation


# static fields
.field public static final AUDIO:I = 0x8

.field public static final INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

.field public static final LOW_POWER:I = 0x1

.field public static final PHONE_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RDT_LowPowerDetector"

.field public static final THERMAL:I = 0x4

.field private static final detectorChangeCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private static final detectors:[Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

.field private static volatile inited:Z

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    new-instance v1, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;

    invoke-direct {v1}, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;

    invoke-direct {v1}, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;

    invoke-direct {v1}, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;

    invoke-direct {v1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectors:[Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectorChangeCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addListener(), listener="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RDT_LowPowerDetector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final getActiveDetector()Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;
    .registers 5

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectors:[Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->isActive()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_13

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return-object v2
.end method

.method public final getDetector(I)Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;
    .registers 7

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectors:[Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->type()I

    move-result v4

    if-ne v4, p1, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    if-eqz v4, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    const/4 v3, 0x0

    :goto_19
    return-object v3
.end method

.method public final init()V
    .registers 6

    sget-boolean p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->inited:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->inited:Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectors:[Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_21

    aget-object v3, v0, v1

    const-string v4, "context"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->detectorChangeCallback:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, p0, v4}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->register(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    return-void
.end method

.method public final removeListener(Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
