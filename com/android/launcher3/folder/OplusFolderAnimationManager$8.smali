.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->addChildrenAnimListeners(Landroid/animation/Animator;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo p1, "onAnimationEnd,addCount = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",currentChildCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", realChildCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$700(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Folder"

    const-string v1, "OplusFolderAnimationManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result p1

    if-lez p1, :cond_65

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$700(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v0

    if-eq p1, v0, :cond_65

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_65
    return-void
.end method
