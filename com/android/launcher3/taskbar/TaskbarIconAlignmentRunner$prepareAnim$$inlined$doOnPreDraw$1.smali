.class public final Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->prepareAnim(Ljava/util/function/Consumer;Ljava/lang/Float;Ljava/lang/Float;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnPreDraw$1\n+ 2 TaskbarIconAlignmentRunner.kt\ncom/android/launcher3/taskbar/TaskbarIconAlignmentRunner\n*L\n1#1,411:1\n193#2,2:412\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $itemAnimParam$inlined:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

.field public final synthetic $this_doOnPreDraw:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;->$itemAnimParam$inlined:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;->$itemAnimParam$inlined:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setBgViewDrawn(Z)V

    return-void
.end method
