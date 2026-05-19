.class Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;
.super Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlexibleFoldSwitchStateObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;


# direct methods
.method private constructor <init>(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;->this$0:Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;

    invoke-direct {p0}, Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;-><init>(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)V

    return-void
.end method


# virtual methods
.method public onFoldingSwitchStateChanged(Landroid/os/Bundle;)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;->this$0:Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;

    invoke-static {p1}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->access$100(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "FlexibleActivityTransitionHandler"

    const-string v3, "onFoldingSwitchStateChanged end animations"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;->this$0:Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;

    invoke-static {v2}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->access$200(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/c1;

    invoke-direct {v3, v1}, Lcom/android/quickstep/c1;-><init>(Landroid/animation/Animator;)V

    invoke-interface {v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a

    :cond_42
    return-void
.end method
