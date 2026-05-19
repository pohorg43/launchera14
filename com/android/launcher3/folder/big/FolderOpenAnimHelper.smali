.class public final Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

.field private static final MAY_NEED_ADD_MAX_COUNT:I = 0xa

.field private static final MAY_NEED_ADD_MIN_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FolderOpenAnimHelper"


# instance fields
.field private currentPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private final folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field private targetPage:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V
    .registers 3

    const-string v0, "folderAnimationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    return-void
.end method

.method private static final getExpandTargetPage(Lcom/android/launcher3/folder/OplusFolderIcon;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;->access$getExpandTargetPage(Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;Lcom/android/launcher3/folder/OplusFolderIcon;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addBubbleTextViewIfNeeded(ZIIILcom/android/launcher3/folder/FolderPagedView;Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 15

    const-string v0, "content"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "page"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_ef

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_ef

    :cond_16
    const/4 p1, 0x4

    if-lt p2, p1, :cond_ef

    const/16 p1, 0xa

    if-le p2, p1, :cond_1f

    goto/16 :goto_ef

    :cond_1f
    add-int/lit8 p2, p2, -0x1

    rem-int p1, p2, p3

    sub-int/2addr p2, p1

    div-int/2addr p2, p3

    iget-object p3, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_2f

    :cond_2e
    move p3, v0

    :goto_2f
    add-int/lit8 v1, p3, -0x1

    rem-int v2, v1, p4

    sub-int v3, v1, v2

    div-int/2addr v3, p4

    if-ne v3, p2, :cond_3b

    sub-int v4, v2, p1

    goto :goto_3d

    :cond_3b
    add-int/lit8 v4, v2, 0x1

    :goto_3d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_68

    const-string v5, "lastBubbleTextViewColumn = "

    const-string v6, ", lastBubbleTextViewRow = "

    const-string v7, ", lastPreviewColumn = "

    invoke-static {v5, p1, v6, p2, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", lastPreviewRow = "

    const-string v5, ",previewSize = "

    invoke-static {p1, v2, p2, v3, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", addCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FolderOpenAnimHelper"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    if-nez v4, :cond_6b

    return v0

    :cond_6b
    const-wide/16 p1, 0x8

    const-string p3, "AddBtv"

    invoke-static {p1, p2, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v4}, Ly4/h;->e(II)Ly4/d;

    move-result-object p3

    const-string v0, "<this>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p3, Ly4/b;->b:I

    iget v2, p3, Ly4/b;->a:I

    iget p3, p3, Ly4/b;->c:I

    neg-int p3, p3

    if-eqz p3, :cond_e7

    const/high16 v3, -0x80000000

    if-eq p3, v3, :cond_df

    invoke-static {v0, v2, p3}, Lp4/c;->a(III)I

    move-result v2

    if-lez p3, :cond_90

    if-le v0, v2, :cond_94

    :cond_90
    if-gez p3, :cond_db

    if-gt v2, v0, :cond_db

    :cond_94
    :goto_94
    sub-int v3, v1, v0

    iget-object v5, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-eqz v5, :cond_d7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    if-eqz v5, :cond_d7

    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v7, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v6, v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p5, v6}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v6

    instance-of v7, v5, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-eqz v7, :cond_bd

    instance-of v7, v6, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v7, :cond_bd

    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_bd
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    rem-int v7, v3, p4

    iput v7, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v3, v7

    div-int/2addr v3, p4

    iput v3, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p6, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_d7
    if-eq v0, v2, :cond_db

    add-int/2addr v0, p3

    goto :goto_94

    :cond_db
    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ef
    :goto_ef
    return v0
.end method

.method public final addPreviewDrawableToBubble(Lcom/android/launcher3/BubbleTextView;IIIIZ)Z
    .registers 9

    const-string v0, "bubbleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_76

    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-eqz p0, :cond_76

    if-ge p5, p3, :cond_76

    if-ge p4, p2, :cond_76

    mul-int/2addr p5, p2

    add-int/2addr p5, p4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p5, p2, :cond_25

    return v1

    :cond_25
    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 p4, 0x1

    if-eqz p3, :cond_54

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p3, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p3, :cond_54

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    move p0, p4

    goto :goto_55

    :cond_54
    move p0, v1

    :goto_55
    if-eqz p2, :cond_76

    if-eqz p6, :cond_63

    sget-object p3, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p3

    if-eq p5, p3, :cond_63

    if-nez p0, :cond_76

    :cond_63
    if-nez p6, :cond_68

    if-eqz p0, :cond_68

    goto :goto_76

    :cond_68
    instance-of p0, p2, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz p0, :cond_70

    invoke-static {p2}, Lcom/android/launcher3/icons/FastBitmapUtils;->newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p2

    :cond_70
    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2, p4}, Lcom/android/launcher3/IBubbleTextViewExt;->setBFPreviewDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return p4

    :cond_76
    :goto_76
    return v1
.end method

.method public final checkCurrentPreviewParams()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->getFirstPageDrawingParams()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    goto :goto_48

    :cond_26
    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    :goto_48
    return-void

    :cond_49
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPreviewParams()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    return-void

    :cond_60
    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    goto :goto_78

    :cond_77
    move v1, v2

    :goto_78
    if-eqz v1, :cond_a7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    return-void

    :cond_a7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final requireAlphaChild(Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;II)Z
    .registers 8

    const-string/jumbo v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_18

    return v2

    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_22

    :cond_21
    move p0, v1

    :goto_22
    sub-int/2addr p0, v1

    iget v0, p1, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewColumn:I

    if-ltz v0, :cond_2b

    if-ge v0, p2, :cond_2b

    move v3, v1

    goto :goto_2c

    :cond_2b
    move v3, v2

    :goto_2c
    if-eqz v3, :cond_33

    iget v3, p1, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    goto :goto_34

    :cond_33
    move v3, v2

    :goto_34
    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_40

    iget p1, p1, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    sub-int/2addr p3, v1

    if-gt p1, p3, :cond_40

    if-le v3, p0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :cond_40
    :goto_40
    return v1
.end method

.method public final setDrawableForBigFolder(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    const-string p0, "bubbleTextView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2, p3}, Lcom/android/launcher3/IBubbleTextViewExt;->setBFPreviewDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public final snapToTargetIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    sget-object v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v1

    const-string v2, "folderAnimationManager.folderIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;->access$getExpandTargetPage(Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;Lcom/android/launcher3/folder/OplusFolderIcon;)I

    move-result v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iput v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->targetPage:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_41
    return-void
.end method

.method public final updatePreviewDrawableAlpha(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 3

    const-string p0, "bubbleTextView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->updateBFPreviewItemAlpha(I)V

    return-void
.end method
