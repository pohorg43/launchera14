.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
.super Lcom/android/launcher3/folder/Folder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskBarFolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskBarFolder.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,319:1\n800#2,11:320\n1855#2,2:331\n*S KotlinDebug\n*F\n+ 1 TaskBarFolder.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolder\n*L\n87#1:320,11\n87#1:331,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;

.field private static final STROKE_INSET_FACTOR:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "TaskBarFolder"


# instance fields
.field private mClipRect:Landroid/graphics/RectF;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private final mIndicatorPaddingHorizon:I

.field private final mIndicatorPaddingVertical:I

.field private mIsElementDark:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private final mRadius:F

.field private mRadiusArr:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {p2, p1}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIsElementDark:Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mClipRect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadiusArr:[F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f9f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070fa4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicatorPaddingHorizon:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070fa5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicatorPaddingVertical:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c21

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$getMFolderIcon$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)Lcom/android/launcher3/folder/FolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherDelegate$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)Lcom/android/launcher3/folder/LauncherDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    return-object p0
.end method

.method public static final synthetic access$setMLauncherDelegate$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;Lcom/android/launcher3/folder/LauncherDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    return-void
.end method

.method public static final synthetic access$setState(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    return-void
.end method

.method private final setClipRadiusArr(FFFF)V
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadiusArr:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p1, p0, v0

    const/4 p1, 0x2

    aput p2, p0, p1

    const/4 p1, 0x3

    aput p2, p0, p1

    const/4 p1, 0x4

    aput p4, p0, p1

    const/4 p1, 0x5

    aput p4, p0, p1

    const/4 p1, 0x6

    aput p3, p0, p1

    const/4 p1, 0x7

    aput p3, p0, p1

    return-void
.end method

.method private final updateElementsColor(Z)V
    .registers 6

    const-string/jumbo v0, "updateElementsColor isDark: "

    const-string v1, ", info: "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v2

    :goto_16
    instance-of v3, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_1d

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    :cond_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskBarFolder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIsElementDark:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz v0, :cond_32

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateFolderTextViewColor(ZLandroid/widget/TextView;)V

    :cond_32
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->updateIndicatorColor(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->updateFolderBgColor(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "iconsInReadingOrder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_4a

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_5c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateFolderTextViewColor(ZLandroid/widget/TextView;)V

    goto :goto_60

    :cond_70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private final updateFolderBgColor(Z)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06081b

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_1a

    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06081a

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :goto_1a
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private final updateIndicatorColor(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_9

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    :cond_9
    return-void
.end method


# virtual methods
.method public animateOpen(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "TaskBarFolder"

    const-string/jumbo v1, "taskbar folder animate Open"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_3b
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    sget-object v1, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->updateElementsColor(Z)V

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_72

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_92

    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening folder ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") which already has a parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    new-instance p2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$1;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-le v1, p1, :cond_d9

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->hasOption(I)Z

    move-result v1

    if-nez v1, :cond_d9

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    xor-int/2addr p1, v1

    new-instance v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;-><init>(ZLcom/android/launcher3/folder/taskbar/TaskBarFolder;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_d9
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_fd
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    return-void
.end method

.method public closeComplete(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    if-eqz p1, :cond_14

    check-cast p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-nez p0, :cond_18

    goto :goto_1c

    :cond_18
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->setNeedDrawOpeningBg(Z)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadiusArr:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadiusArr:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getContentAreaHeight()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v2, v0

    goto :goto_2b

    :cond_1f
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int v2, v0, v1

    :goto_2b
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public onBackKey()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onDarkModeChanged()V
    .registers 5

    sget-object v0, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "onDarkModeChanged isDark: "

    const-string v2, " mIsElementDark: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIsElementDark:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.model.data.FolderInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskBarFolder"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIsElementDark:Z

    if-eq v0, v1, :cond_60

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->updateElementsColor(Z)V

    :cond_60
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a02bd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setFolderHost(Z)V

    invoke-virtual {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTouchInteractive(Z)V

    iget v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicatorPaddingHorizon:I

    iget v3, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicatorPaddingVertical:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070fa2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f9c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    iget v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mRadius:F

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->setClipRadiusArr(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06080e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget p2, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f9b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p2, :cond_34

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setY(F)V

    :cond_34
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    :cond_a
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public startEditingFolderName()V
    .registers 1

    return-void
.end method
