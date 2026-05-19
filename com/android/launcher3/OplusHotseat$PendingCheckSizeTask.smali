.class Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusHotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingCheckSizeTask"
.end annotation


# instance fields
.field public mNeedUpdateDb:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusHotseat;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/OplusHotseat;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->mNeedUpdateDb:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusHotseat$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusHotseat;->runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V

    const-string p0, "Hotseat_expand"

    const-string v0, "OplusHotseat"

    const-string v1, "HotseatExpandAnimating should not checkSize! Post delay."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->access$500(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->mNeedUpdateDb:Z

    invoke-virtual {v0, p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->checkSize(Z)V

    return-void
.end method

.method public start(Landroid/os/Handler;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
