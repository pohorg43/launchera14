.class public final Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector$thermalLevelChangedListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$OnThermalLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector$thermalLevelChangedListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onlevelChanged(I)V
    .registers 3

    sget-object p1, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isThermalLevelReached10()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector$thermalLevelChangedListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;

    invoke-static {p1}, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;->access$getOnChangedAction$p(Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector$thermalLevelChangedListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/sys/ThermalDetector;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method
