.class public final Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/big/BigFolderIcon;
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

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml$lambda$1(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml$lambda$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V

    return-void
.end method

.method private static final fromXml$lambda$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V
    .registers 3

    const-string p2, "$launcher"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$icon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result p0

    if-nez p0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result p0

    if-eqz p0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->openFolderByClick(Ljava/lang/String;)V

    return-void
.end method

.method private static final fromXml$lambda$1(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/View;)V
    .registers 2

    const-string p1, "$icon"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->openFolderByClick(Ljava/lang/String;)V

    return-void
.end method

.method private final relayoutOnAttached(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMGlobalLayoutListener$p(Lcom/android/launcher3/folder/big/BigFolderIcon;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    if-nez p0, :cond_e

    new-instance p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;

    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMGlobalLayoutListener$p(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_e
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMGlobalLayoutListener$p(Lcom/android/launcher3/folder/big/BigFolderIcon;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public final fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "launcher.deviceProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p3, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    const p3, 0x7f0a02ba

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusBubbleTextView;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    const p3, 0x7f0a02b9

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->updatePageIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    iget-object v3, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->relayoutOnAttached(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher/Launcher;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result p3

    if-eqz p3, :cond_84

    invoke-virtual {p1, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    :cond_84
    invoke-virtual {p1, p4}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-static {p1, p4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMInfo$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMLauncher$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Launcher;)V

    iput-object p2, p1, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget-object p3, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMDotRenderer$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/icons/OplusDotRenderer;)V

    const p3, 0x7f12026d

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {p2, p3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p3, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-static {p2}, Lcom/android/launcher3/folder/OplusFolder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p3

    const-string v0, "BigFolderIcon"

    if-eqz p3, :cond_ce

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-static {p1, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/Folder;)V

    goto :goto_d3

    :cond_ce
    const-string p3, "folder xml file inflate error"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d3
    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$initPageIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->applyDotState()V

    invoke-virtual {p4, p1}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object p0, p2, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->initTouch()V

    invoke-static {p1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$updatePreviewItems(Lcom/android/launcher3/folder/big/BigFolderIcon;Z)V

    iget-object p0, p4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    sget-object p3, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p3

    if-le p0, p3, :cond_108

    new-instance p0, Lcom/android/launcher3/Alarm;

    invoke-direct {p0}, Lcom/android/launcher3/Alarm;-><init>()V

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$setAlarm$p(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    :cond_108
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    new-instance p3, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {p3, p2, p1}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p0

    if-eqz p0, :cond_122

    new-instance p3, Lcom/android/launcher/u;

    invoke-direct {p3, p1}, Lcom/android/launcher/u;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_122
    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    const-string p0, "fromXml: bigFolder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I
    .registers 2

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    int-to-float p0, p0

    sget-object p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final getSCROLL_INDICATOR_SHOW_PATH()Landroid/view/animation/PathInterpolator;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getSCROLL_INDICATOR_SHOW_PATH$cp()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public final getSCROLL_SHOW_CONTENT_DURATION()J
    .registers 3

    invoke-static {}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getSCROLL_SHOW_CONTENT_DURATION$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final placeFolderName(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 11

    const-string p0, "icon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "grid"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070832

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p3, v1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v1

    const/4 v2, 0x2

    const v3, 0x3eaaaaab

    if-eqz v1, :cond_62

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v4

    iget v4, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v1, v4

    sub-int v1, v0, v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    goto :goto_74

    :cond_62
    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v4

    iget v4, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v1, v4

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v4, v2

    mul-float/2addr v1, v4

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    :goto_74
    iget v4, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v5, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    add-int v2, v1, v4

    sub-int v2, v0, v2

    sub-int/2addr v2, v5

    iget v5, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v5, 0x7f0701b7

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget v5, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v5, v6

    sub-int/2addr v5, p0

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_c5

    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le p0, v3, :cond_b8

    iget-object p0, p3, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-eqz p0, :cond_b4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result p0

    goto :goto_e0

    :cond_b4
    add-int/2addr v2, v4

    add-int p0, v2, p2

    goto :goto_e0

    :cond_b8
    iget-object p0, p3, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-eqz p0, :cond_c1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result p0

    goto :goto_e0

    :cond_c1
    sub-int/2addr v0, v1

    sub-int p0, v0, v5

    goto :goto_e0

    :cond_c5
    iget-object p0, p3, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-eqz p0, :cond_ce

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result p0

    goto :goto_e0

    :cond_ce
    iget-object p0, p3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    invoke-static {p0}, Lu4/a;->b(F)I

    move-result p0

    :goto_e0
    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_eb

    goto :goto_ed

    :cond_eb
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_ed
    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_fa

    :cond_f9
    move-object p1, p2

    :goto_fa
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_101

    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    :cond_101
    if-nez p2, :cond_104

    goto :goto_109

    :cond_104
    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_109
    return-void
.end method

.method public final updatePageIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V
    .registers 4

    const-string p0, "indicator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604bb

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setTraceDotColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604b9

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setPageIndicatorDotsColor(I)V

    goto :goto_47

    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604ba

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setTraceDotColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604b8

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setPageIndicatorDotsColor(I)V

    :goto_47
    return-void
.end method
