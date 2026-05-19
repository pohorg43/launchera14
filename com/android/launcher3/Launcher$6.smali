.class Lcom/android/launcher3/Launcher$6;
.super Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$6(Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/Launcher;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$item:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/Launcher$6;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$6;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$6;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$6;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionFinish(Z)V
    .registers 5

    const-string/jumbo v0, "onTransitionFinish startActivitySafely isRecent "

    const-string v1, "Launcher"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/launcher3/Launcher$6;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/Launcher$6;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$6;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$6;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    :cond_18
    return-void
.end method
