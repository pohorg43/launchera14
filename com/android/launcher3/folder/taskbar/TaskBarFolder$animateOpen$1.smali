.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->animateOpen(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->access$setState(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendFolderOpenedEventToTest(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-static {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->access$getMFolderIcon$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    return-void
.end method
