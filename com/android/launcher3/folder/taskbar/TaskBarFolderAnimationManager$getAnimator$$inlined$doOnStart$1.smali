.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 TaskBarFolderAnimationManager.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n77#5,4:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $tag$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->$tag$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;

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
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->$tag$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-nez p1, :cond_23

    goto :goto_2c

    :cond_23
    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->isOpening()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->setNeedDrawOpeningBg(Z)V

    :goto_2c
    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager$getAnimator$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderAnimationManager;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
