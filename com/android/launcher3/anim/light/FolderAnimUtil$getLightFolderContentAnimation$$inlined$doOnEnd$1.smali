.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 FolderAnimUtil.kt\ncom/android/launcher3/anim/light/FolderAnimUtil\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n536#3,15:129\n97#4:144\n96#5:145\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $folder$inlined:Lcom/android/launcher3/folder/Folder;

.field public final synthetic $folderIcon$inlined:Lcom/android/launcher3/folder/FolderIcon;

.field public final synthetic $isOpening$inlined:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folderIcon$inlined:Lcom/android/launcher3/folder/FolderIcon;

    iput-boolean p3, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$isOpening$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_25

    iget-object v2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_2e

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_46

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$isOpening$inlined:Z

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_46
    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folderIcon$inlined:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->access$resetFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->resetPivot()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
