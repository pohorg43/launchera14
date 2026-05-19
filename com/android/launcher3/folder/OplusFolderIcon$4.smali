.class Lcom/android/launcher3/folder/OplusFolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderIcon;->onDropFolder(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public final synthetic val$item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->val$item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->val$item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->val$item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/Boolean;)V

    return-void
.end method
