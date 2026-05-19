.class public final Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$Companion;

.field private static final TAG:Ljava/lang/String; = "RDT_LowPowerDetector"


# instance fields
.field private final lowPowerListener:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;

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

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->Companion:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;-><init>(Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->lowPowerListener:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;

    return-void
.end method

.method public static final synthetic access$getOnChangedAction$p(Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;)Lkotlin/jvm/functions/Function2;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public isActive()Z
    .registers 1

    sget-object p0, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {p0}, Lcom/android/common/observer/LowPowerObserver;->isOpen()Z

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

    const-string p1, "onChanged"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->onChangedAction:Lkotlin/jvm/functions/Function2;

    sget-object p1, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->lowPowerListener:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public type()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
