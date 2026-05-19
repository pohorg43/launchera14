.class Lcom/android/launcher/Launcher$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;

.field public final synthetic val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/launcher3/BubbleTextView;Z)V
    .registers 6

    const-string p1, "click action injected subscribeItem="

    const-string v0, "OLauncher"

    if-eqz p2, :cond_2c

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onSubscribeItemClicked(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_55

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v1, v2, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onSubscribeItemClicked(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p2

    if-eqz p2, :cond_55

    iget-object p2, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2, v1}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/Launcher$7;->val$info:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method
