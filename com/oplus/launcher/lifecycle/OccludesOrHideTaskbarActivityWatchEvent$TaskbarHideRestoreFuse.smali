.class public final Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskbarHideRestoreFuse"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {v0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$topActivityNotEqual(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {v0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$illegalTaskbarAlpha(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_11
    const-string v0, "restore taskbar hidden state,frontName:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {v2}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$getFrontTaskActivityName$p(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",HideName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {v2}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$getCurrentHideTaskbarActivityName$p(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OOHTBAWE"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onTaskbarHidden(ZZ)V

    :cond_3c
    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;->this$0:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$getCurrentHideTaskbarActivityName$p(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$onNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;Ljava/lang/String;Z)V

    return-void
.end method
