.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;
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
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 FolderAnimUtil.kt\ncom/android/launcher3/anim/light/FolderAnimUtil\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n519#5,16:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $folder$inlined:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

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
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    instance-of v1, p1, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_21

    iget-object v1, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_21
    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_2c
    if-ge v1, p1, :cond_55

    iget-object v2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v3, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;->$folder$inlined:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    :cond_4e
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_55
    return-void
.end method
