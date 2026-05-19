.class Lcom/android/launcher3/LauncherAppState$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$2;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher resume  onReceive secne：action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oplus.intent.action.change.over.restore.end"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "extra_info"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_47

    const-string/jumbo p2, "scene"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string p2, "launcher resume  onReceive secne："

    invoke-static {p2, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    if-eq p0, p2, :cond_40

    const/4 p2, 0x2

    if-eq p0, p2, :cond_40

    const/4 p2, 0x3

    if-ne p0, p2, :cond_47

    :cond_40
    const/4 p0, 0x0

    const-string/jumbo p2, "swipe_up_gesture_guide_had_done"

    invoke-static {p1, p2, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_47
    return-void
.end method
