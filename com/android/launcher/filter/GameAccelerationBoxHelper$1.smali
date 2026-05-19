.class Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/GameAccelerationBoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$000(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHideGameIconModeInSetting(Landroid/content/Context;)I

    move-result p1

    const-string/jumbo v0, "onChange----value:"

    const-string v1, "----settingValue"

    const/4 v2, -0x1

    const-string v3, "GameAccelerationBoxHelper"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-eq p1, v2, :cond_c8

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_20

    move v0, v4

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_27

    move v1, v4

    :cond_27
    invoke-static {v2, v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$102(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange: hideGameBoxIcon old: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", new: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hideGameAppIcon old: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v2}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$300(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$100(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p1

    if-ne v0, p1, :cond_7d

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$100(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$300(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v1

    if-eq p1, v1, :cond_c3

    :cond_7d
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$000(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$400(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v1

    if-eq v0, v1, :cond_99

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1, v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$202(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v1, p1, v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$500(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Landroid/os/Bundle;Z)V

    :cond_99
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$100(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$300(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v0

    if-eq p1, v0, :cond_c3

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$100(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p1

    if-eqz p1, :cond_b5

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$600(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    goto :goto_ba

    :cond_b5
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$700(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    :goto_ba
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$100(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$302(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z

    :cond_c3
    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$800(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    :cond_c8
    return-void
.end method
