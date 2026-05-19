.class public final synthetic Lcom/android/launcher3/taskbar/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;
.implements Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onComputeInsets(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->m(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    return-void
.end method

.method public onTaskLaunched()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->a(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;)V

    return-void
.end method
