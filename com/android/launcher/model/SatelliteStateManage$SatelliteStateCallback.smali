.class public final Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;
.super Lcom/oplus/evolution/SatelliteCallback;
.source ""

# interfaces
.implements Lcom/oplus/evolution/SatelliteCallback$ModeStateChangedListener;
.implements Lcom/oplus/evolution/SatelliteCallback$ServiceStateChangedListener;
.implements Lcom/oplus/evolution/SatelliteCallback$RadioStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/model/SatelliteStateManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SatelliteStateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/model/SatelliteStateManage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/model/SatelliteStateManage;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-direct {p0}, Lcom/oplus/evolution/SatelliteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateStateChanged(IZ)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onModeStateStateChanged : mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enable = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SatelliteStateManage"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-virtual {p1, p2}, Lcom/android/launcher/model/SatelliteStateManage;->setMIsSatelliteModeState(Z)V

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-virtual {p0}, Lcom/android/launcher/model/SatelliteStateManage;->updateSatelliteBadge()V

    return-void
.end method

.method public onRadioStateChanged(ZZ)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onRadioStateChanged : avalible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  refresh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SatelliteStateManage"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-virtual {p0, p1}, Lcom/android/launcher/model/SatelliteStateManage;->setMIsSatelliteRadioState(Z)V

    return-void
.end method

.method public onServiceStateChanged(Lcom/oplus/evolution/SatelliteServiceState;)V
    .registers 4

    const-string/jumbo v0, "serviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, " onServiceStateChanged : serviceState = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/evolution/SatelliteServiceState;->isInservice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SatelliteStateManage"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-virtual {p1}, Lcom/oplus/evolution/SatelliteServiceState;->isInservice()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher/model/SatelliteStateManage;->setMIsSatelliteServiceState(Z)V

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;->this$0:Lcom/android/launcher/model/SatelliteStateManage;

    invoke-virtual {p0}, Lcom/android/launcher/model/SatelliteStateManage;->updateSatelliteBadge()V

    return-void
.end method
