.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;
.super Lcom/android/launcher3/folder/FolderPagedView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskBarFolderPageView"


# instance fields
.field private final mCellPadding:Landroid/graphics/Rect;

.field private final mCellWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f97

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->mCellWidth:I

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getFolderCellPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->mCellPadding:Landroid/graphics/Rect;

    return-void
.end method

.method private final updateCellLayoutItemColor(Lcom/android/launcher3/CellLayout;)V
    .registers 8

    const-string v0, "Taskbar"

    const-string v1, "TaskBarFolderPageView"

    const-string/jumbo v2, "updateCellLayoutItemColor"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v1, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_57

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_54

    if-nez p0, :cond_39

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    const v5, 0x7f13024c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_42

    :cond_39
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    const v5, 0x7f13024d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_42
    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_54

    const-string/jumbo v4, "sans-serif-medium"

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_57
    return-void
.end method


# virtual methods
.method public amountUpdateAndScroll(III)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getMLastAmount()I

    move-result v0

    int-to-float v1, p1

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount(FI)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->setMLastAmount(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->setMTempAmount(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->amountUpdateAndScroll(III)V

    return-void
.end method

.method public arrangeChildren(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f9d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f9e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_22

    :cond_21
    move v0, p1

    :goto_22
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public createAndAddNewPage()Lcom/android/launcher3/CellLayout;
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070f9d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const-string/jumbo p0, "page"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDesiredFoldCellSize()Landroidx/core/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->mCellPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    new-instance v0, Landroidx/core/util/Pair;

    iget p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->mCellWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getMCellWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;->mCellWidth:I

    return p0
.end method

.method public resetFolderNumColumns()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    const-string v1, "getIDP(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget v2, v2, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    if-eq v1, v2, :cond_3c

    const-string v1, "InvariantDeviceProfile FolderColumns="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TaskBarFolderGridOrganizer maxCountX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget v2, v2, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderPagedView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    :cond_3c
    return-void
.end method
