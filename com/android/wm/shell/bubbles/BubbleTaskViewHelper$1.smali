.class Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mInitialized:Z

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->lambda$onInitialized$0(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$onInitialized$0(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInitialized: calling startActivity, bubble="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchedFromBubble(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->isAppBubble()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$100(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/Bubble;->getAppBubbleIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x2000000

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$200(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v3

    invoke-virtual {v3, v2, v1, p1, p2}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto/16 :goto_e5

    :cond_64
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setApplyActivityFlagsForBubbles(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$200(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/wm/shell/taskview/TaskView;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto :goto_e5

    :cond_87
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->setIntentActive()V

    :cond_98
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$200(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$800(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1, p2}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_a7} :catch_a8

    goto :goto_e5

    :catch_a8
    move-exception p1

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Exception while displaying bubble: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; removing bubble"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$700(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_e5
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$400(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)I

    move-result v0

    if-ne v0, p1, :cond_1d

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$700(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$500(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;->onBackPressed()V

    :cond_1d
    return-void
.end method

.method public onInitialized()V
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInitialized: destroyed="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " initialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bubble="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    if-nez v0, :cond_63

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    if-eqz v0, :cond_3c

    goto :goto_63

    :cond_3c
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$100(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$200(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$300(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/g;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/bubbles/g;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_63
    :goto_63
    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 5

    sget-boolean p2, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz p2, :cond_21

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onTaskCreated: taskId="

    const-string v1, " bubble="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$402(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;I)I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$500(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;->onTaskCreated()V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTaskRemovalStarted: taskId="

    const-string v2, " bubble="

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$700(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :cond_3d
    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->access$500(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;->onContentVisibilityChanged(Z)V

    return-void
.end method
