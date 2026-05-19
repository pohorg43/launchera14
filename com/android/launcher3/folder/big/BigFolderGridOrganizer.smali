.class public final Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;
.super Lcom/android/launcher3/folder/FolderGridOrganizer;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBigFolderGridOrganizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigFolderGridOrganizer.kt\ncom/android/launcher3/folder/big/BigFolderGridOrganizer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
    }
.end annotation


# instance fields
.field private doClosingAnim:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return-void
.end method


# virtual methods
.method public calculateGridSize(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->calculateGridSize(I)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    return-void
.end method

.method public final getCurrentPreviewAndStackedItems(ILjava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->calculateGridSize(I)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_ALL_PREVIEW_AND_STACKED()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v1, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2d
    if-ge p1, v0, :cond_39

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :cond_39
    return-object p0
.end method

.method public final getDoClosingAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->doClosingAnim:Z

    return p0
.end method

.method public final getMaxItemForExpand()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return p0
.end method

.method public final getPreviewPageForClose(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    const-string p0, "contents"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final getStackedItems(ILjava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->calculateGridSize(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->doClosingAnim:Z

    if-eqz v1, :cond_18

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    goto :goto_1e

    :cond_18
    sget-object p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p0

    :goto_1e
    mul-int/2addr p0, p1

    sget-object p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p1

    add-int/2addr p1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p1, p0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_38
    if-ge p0, p1, :cond_44

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_38

    :cond_44
    return-object v0
.end method

.method public previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::TT;>(I",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->calculateGridSize(I)V

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->doClosingAnim:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    goto :goto_1b

    :cond_15
    sget-object v1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    :goto_1b
    mul-int/2addr v1, p1

    sget-object v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_2f
    if-ge v1, v2, :cond_4f

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v5

    if-ne v4, v5, :cond_4a

    goto :goto_4f

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public final setDoClosingAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->doClosingAnim:Z

    return-void
.end method
