.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;
.super Lcom/android/launcher3/folder/OplusFolderIcon;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskBarFolderIcon"


# instance fields
.field private final mInitPadding:Landroid/graphics/Rect;

.field private mTaskBarActivity:Lcom/android/launcher3/views/ActivityContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mInitPadding:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mInitPadding:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$getMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewVerifier$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-object p0
.end method

.method public static final synthetic access$setFolder(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method public static final synthetic access$setMDotRenderer$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/icons/OplusDotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    return-void
.end method

.method public static final synthetic access$setMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public static final synthetic access$setMInfo$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public static final synthetic access$setMPreviewVerifier$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method public static final synthetic access$updatePreviewItems(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method public static final fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dontShowDotInfo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getFolderViewBounds(Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_24
    return-void
.end method

.method public final getMTaskBarActivity()Lcom/android/launcher3/views/ActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mTaskBarActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public getRealFolderIconBounds(Landroid/graphics/Rect;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->getFolderViewBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->init()V

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-void
.end method

.method public onFolderClose(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    instance-of v1, v0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->recreateFirstPage()V

    :cond_f
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->onItemsChanged(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mInitPadding:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setInitPadding(IIII)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mInitPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public final setMTaskBarActivity(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->mTaskBarActivity:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method
