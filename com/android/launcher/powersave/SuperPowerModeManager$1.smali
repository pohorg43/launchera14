.class Lcom/android/launcher/powersave/SuperPowerModeManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/SuperPowerModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->lambda$onChange$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->lambda$onChange$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->lambda$onChange$2()V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enterSuperPowerMode(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onChange$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerModeState(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperEnduranceModeSate(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerAutoCloseState(Z)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onChange$2()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const-string v0, "SuperPowerModeManager"

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_5
    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$100(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$002(Lcom/android/launcher/powersave/SuperPowerModeManager;Z)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange , super_powersave_launcher_enter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", super_powersave_mode_state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", super_endurance_mode_sate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperEnduranceModeSate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInSuperPowerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_8c

    const/4 p1, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->setStashedInSpecialPage(ZJ)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->clearDockerAppConnectData(Z)V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$200(Lcom/android/launcher/powersave/SuperPowerModeManager;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    new-instance v3, Lcom/android/launcher/powersave/a;

    invoke-direct {v3, p0}, Lcom/android/launcher/powersave/a;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V

    invoke-static {p1, v3, v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$300(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V

    goto :goto_bd

    :cond_8c
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInAutoCloseSuperPowerState()Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    new-instance v3, Lcom/android/launcher/powersave/b;

    invoke-direct {v3, p0}, Lcom/android/launcher/powersave/b;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V

    invoke-static {p1, v3, v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$300(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V

    goto :goto_bd

    :cond_9f
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeSuperPowerSaveModeDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_bd

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    new-instance v3, Lcom/android/launcher/powersave/c;

    invoke-direct {v3, p0}, Lcom/android/launcher/powersave/c;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V

    invoke-static {p1, v3, v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$300(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b5} :catch_b6

    goto :goto_bd

    :catch_b6
    move-exception p0

    const-string/jumbo p1, "onChange , e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_bd
    :goto_bd
    return-void
.end method
