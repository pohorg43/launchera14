.class Lcom/android/launcher3/taskbar/TaskbarView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarView;

.field public final synthetic val$icon:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/launcher3/BubbleTextView;Z)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->val$icon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->val$icon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v1, "click action injected subscribeItem="

    const-string v2, "TaskbarView"

    if-eqz p2, :cond_31

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onSubscribeItemClicked(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-static {v1, v0, v2}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->val$icon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_56

    :cond_31
    invoke-static {p1, v0, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onSubscribeItemClicked(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView$1;->val$icon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method
