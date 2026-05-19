.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;
.super Lcom/android/launcher3/folder/FolderAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskBarFolderAnimationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskBarFolderAnimationManager.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,87:1\n42#2:88\n94#2,14:89\n31#2:103\n94#2,14:104\n*S KotlinDebug\n*F\n+ 1 TaskBarFolderAnimationManager.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager\n*L\n76#1:88\n76#1:89,14\n81#1:103\n81#1:104,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:F = 1.0f

.field private static final ALPHA_MIN:F = 0.0f

.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$Companion;

.field private static final DURATION:J = 0x190L

.field private static final SCALE_MAX:F = 1.0f

.field private static final SCALE_MIN:F = 0.8f


# instance fields
.field private final folder:Lcom/android/launcher3/folder/Folder;

.field private final isOpening:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .registers 4

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->isOpening:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnimator()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getAnimator()Landroid/animation/AnimatorSet;
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget v2, v2, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f060819

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const-string v2, "folder.mActivityContext.dragLayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->isOpening:Z

    const/4 v3, 0x3

    const v4, 0x3f4ccccd  # 0.8f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v2, :cond_be

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_126

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_12e

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_136

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_ff

    :cond_be
    new-array v2, v3, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v7, [F

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v10

    aput v10, v9, v6

    aput v4, v9, v5

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v7, [F

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v10

    aput v10, v9, v6

    aput v4, v9, v5

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v7, [F

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v9

    aput v9, v8, v6

    aput v1, v8, v5

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_ff
    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->isOpening:Z

    if-eqz v1, :cond_113

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_115

    :cond_113
    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_115
    new-instance v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;

    invoke-direct {v2, v1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;-><init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnEnd$1;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_126
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data

    :array_12e
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data

    :array_136
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final getFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public final isOpening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->isOpening:Z

    return p0
.end method
