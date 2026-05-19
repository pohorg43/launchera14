.class Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mInitialized:Z

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mInitialized:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mDestroyed:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->lambda$onTaskRemovalStarted$1()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;Landroid/app/ActivityOptions;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->lambda$onInitialized$0(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method private synthetic lambda$onInitialized$0(Landroid/app/ActivityOptions;)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    const-string v1, "Bubbles"

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "onInitialized: calling startActivity, bubble="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setLaunchedFromBubble(Z)V

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->isAppBubble()Z

    move-result v6

    if-eqz v6, :cond_8d

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$700(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getAppBubbleIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0xc000000

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p1, v0}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto/16 :goto_112

    :cond_8d
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$800(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Z

    move-result v4

    if-nez v4, :cond_b8

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setApplyActivityFlagsForBubbles(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/wm/shell/taskview/TaskView;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto :goto_112

    :cond_b8
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->setIntentActive()V

    :cond_c9
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/taskview/TaskView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$900(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4, v3, p1, v0}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    :try_end_d8
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_d8} :catch_d9

    goto :goto_112

    :catch_d9
    move-exception p1

    const-string v0, "Exception while displaying bubble: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; removing bubble"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$400(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_112
    return-void
.end method

.method private synthetic lambda$onTaskRemovalStarted$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$400(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$200(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I

    move-result v0

    if-ne v0, p1, :cond_1d

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$500(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$500(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onBackPressed()V

    :cond_1d
    return-void
.end method

.method public onInitialized()V
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_31

    const-string/jumbo v0, "onInitialized: destroyed="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " initialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bubble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mDestroyed:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mInitialized:Z

    if-eqz v0, :cond_3a

    goto :goto_52

    :cond_3a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    new-instance v2, Lcom/android/wm/shell/bubbles/l;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/l;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mInitialized:Z

    :cond_52
    :goto_52
    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->mDestroyed:Z

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 4

    sget-boolean p2, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz p2, :cond_1f

    const-string/jumbo p2, "onTaskCreated: taskId="

    const-string v0, " bubble="

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Bubbles"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$202(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)I

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isAppBubble()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$400(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$200(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->setAppBubbleTaskId(Ljava/lang/String;I)V

    :cond_51
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onTaskRemovalStarted: taskId="

    const-string v1, " bubble="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bubbles"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/wm/shell/bubbles/m0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/m0;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    return-void
.end method
