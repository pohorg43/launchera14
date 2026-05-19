.class public final Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector$Companion;

.field private static final TAG:Ljava/lang/String; = "RDT_LowPowerDetector"


# instance fields
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

.field private final phoneStateListener:Landroid/telephony/TelephonyCallback$CallStateListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->Companion:Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/a;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dynamictask/sys/a;-><init>(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->phoneStateListener:Landroid/telephony/TelephonyCallback$CallStateListener;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->phoneStateListener$lambda$0(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;I)V

    return-void
.end method

.method private static final phoneStateListener$lambda$0(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    goto :goto_21

    :cond_e
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_21

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_18
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_21

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getInCalling()Z

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    const-string p0, "RDT_LowPowerDetector"

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

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    sget-object p2, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->phoneStateListener:Landroid/telephony/TelephonyCallback$CallStateListener;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->addListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public type()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
