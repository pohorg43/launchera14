.class public final Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->moveNavButtonsToNewWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    invoke-static {p1, p0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->addOnComputeInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    invoke-static {p0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->removeOnComputeInsetsListener(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    return-void
.end method
