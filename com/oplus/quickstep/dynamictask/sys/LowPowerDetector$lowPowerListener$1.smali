.class public final Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    sget-object p1, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {p1}, Lcom/android/common/observer/LowPowerObserver;->isOpen()Z

    move-result p1

    const-string v0, "onLowPowerModeChanged, "

    const-string v1, "RDT_LowPowerDetector"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;

    invoke-static {v0}, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;->access$getOnChangedAction$p(Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector$lowPowerListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/LowPowerDetector;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method
