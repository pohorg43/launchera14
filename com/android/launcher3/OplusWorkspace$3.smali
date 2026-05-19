.class Lcom/android/launcher3/OplusWorkspace$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/HashSet;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$3;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace$3;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z
    .registers 6

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$3;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p0

    if-eqz p0, :cond_53

    const-string/jumbo p0, "updateRestoreItems:  info.mInstallState = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", info = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v0, "OplusWorkspace"

    invoke-static {p0, p1, v0}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p3, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyPromiseState(ZZZ)V

    goto :goto_53

    :cond_3e
    instance-of p3, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz p3, :cond_53

    instance-of p3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p3, :cond_53

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$3;->val$updates:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    :cond_53
    :goto_53
    return v1
.end method
