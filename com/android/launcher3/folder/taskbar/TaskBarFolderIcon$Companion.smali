.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "launcher"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "taskBarActivity"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    const/4 v1, 0x2

    const-string/jumbo v2, "\u00a0"

    invoke-static {p0, v2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    goto :goto_25

    :cond_24
    move p0, v0

    :goto_25
    iput-boolean p0, p4, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    iget-object p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p5, p0}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const-string/jumbo v2, "taskBarActivity.deviceProfile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p3, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolderIcon"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    const p3, 0x7f0a02ba

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$setMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/OplusBubbleTextView;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$getMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$getMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$getMFolderName$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {p1, p4}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-static {p1, p4}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$setMInfo$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->setLauncher(Lcom/android/launcher/Launcher;)V

    iput-object p2, p1, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p1, p5}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->setMTaskBarActivity(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p3, v1, Lcom/android/launcher3/DeviceProfile;->mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$setMDotRenderer$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/icons/OplusDotRenderer;)V

    const p3, 0x7f12026d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p5, p3, v2}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;

    iget-object p3, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p0, p3}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$setMPreviewVerifier$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$getMPreviewVerifier$p$s-1331258155(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$updatePreviewItems(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Z)V

    sget-object p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;

    invoke-virtual {p5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v0, "taskBarActivity.dragLayer.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;->fromXml(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->access$setFolder(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->applyDotState()V

    invoke-virtual {p4, p1}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object p0, p2, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method
