.class Lcom/android/launcher3/folder/OplusFolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderIcon;->onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public final synthetic val$addedItems:Ljava/util/List;

.field public final synthetic val$reorderIcon:Z

.field public final synthetic val$startIndex:I

.field public final synthetic val$workspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;ILjava/util/List;ZLcom/android/launcher3/Workspace;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$startIndex:I

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$addedItems:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$reorderIcon:Z

    iput-object p5, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$startIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItems(IIZ)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$addedItems:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/launcher3/folder/IFolderExt;->showItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$reorderIcon:Z

    if-eqz p1, :cond_4a

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p1, :cond_4a

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_4a
    return-void
.end method
