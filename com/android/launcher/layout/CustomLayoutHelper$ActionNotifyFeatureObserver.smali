.class Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/CustomLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionNotifyFeatureObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CustomLayoutHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;Lcom/android/launcher/layout/CustomLayoutHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    return-void
.end method


# virtual methods
.method public onFeaturesActionUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V
    .registers 9

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "feature action update "

    const-string v2, " value "

    invoke-static {v1, p1, v2, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout"

    const-string v3, "CustomLayoutHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$1000(Lcom/android/launcher/layout/CustomLayoutHelper;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "cota_app_scan_start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$800(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_66

    :cond_2e
    const-string v1, "cota_app_scan_finish"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$800(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v1, "on observe cota app scan finish event."

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/common/util/AppFeatureUtils;->isCompanyVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "company version with observer, reset layout"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$200(Lcom/android/launcher/layout/CustomLayoutHelper;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$300(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    goto :goto_66

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$1100(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$1200(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    :cond_66
    :goto_66
    invoke-static {p1, p2, p3}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->notifyFeatureActionChange(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V

    return-void
.end method
