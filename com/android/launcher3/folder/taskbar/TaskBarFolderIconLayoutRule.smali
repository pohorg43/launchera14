.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;
.super Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskBarFolderIconLayoutRule"

.field private static final TASK_BAR_FOLDER_PREVIEW_ICON_GAP:F = 1.68f

.field private static final TASK_BAR_FOLDER_PREVIEW_PADDING:F = 3.92f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;-><init>()V

    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 10

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    div-int v0, p1, p2

    rem-int/2addr p1, p2

    iget-boolean v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/4 v2, 0x1

    invoke-static {p2, p1, v2, v1}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    int-to-float v1, p1

    iget v2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget v3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    mul-float/2addr v4, v1

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    add-float/2addr v4, v1

    int-to-float v5, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "computePreviewItemDrawingParams: row = "

    const-string v3, ", col = "

    const-string v5, " , transX = "

    invoke-static {v1, v0, v3, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", transY = "

    const-string v1, ", mPreviewPadding = "

    invoke-static {p1, v4, v0, v2, v1}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mBaselineIconSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mPreviewSubIconGap = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mBaselineIconScale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "TaskBarFolderIconLayoutRule"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    if-nez p3, :cond_6b

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, v4, v2, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_6e

    :cond_6b
    invoke-virtual {p3, v4, v2, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_6e
    return-object p3
.end method

.method public getPreviewStyleBoundOffset()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;IFZ)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxCol(Z)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p3, 0x407ae148  # 3.92f

    mul-float/2addr p3, p1

    iput p3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    iget p4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float v1, v0, p3

    sub-float v1, p4, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewContentSpace:I

    const v1, 0x3fd70a3d  # 1.68f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    mul-float/2addr v0, p3

    sub-float/2addr p4, v0

    iget p3, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    sub-float/2addr p4, p1

    int-to-float p1, p3

    mul-float/2addr p1, p2

    div-float/2addr p4, p1

    iput p4, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    mul-float/2addr p4, p2

    iget p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    div-float/2addr p4, p1

    iput p4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_84

    const-string p1, "init TaskBarFolderIconLayoutRule: mIconSize is : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mPreviewContentSpace is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewContentSpace:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mBaselineIconSize is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "mBaselineIconScale is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string p2, "TaskBarFolderIconLayoutRule"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    return-void
.end method
