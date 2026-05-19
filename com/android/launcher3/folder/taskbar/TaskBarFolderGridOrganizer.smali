.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;
.super Lcom/android/launcher3/folder/FolderGridOrganizer;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method


# virtual methods
.method public getPosForRank(I)Landroid/graphics/Point;
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int v1, p1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->y:I

    const-string/jumbo p0, "mPoint"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
