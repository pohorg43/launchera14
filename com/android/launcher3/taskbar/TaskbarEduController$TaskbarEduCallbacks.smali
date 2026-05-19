.class Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarEduController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarEduCallbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->lambda$onPageChanged$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->lambda$onPageChanged$3(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->lambda$onPageChanged$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->lambda$onPageChanged$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onPageChanged$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private synthetic lambda$onPageChanged$1(ILandroid/view/View;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->snapToPage(I)V

    return-void
.end method

.method private synthetic lambda$onPageChanged$2(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private synthetic lambda$onPageChanged$3(ILandroid/view/View;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->snapToPage(I)V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .registers 7

    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    const v1, 0x7f120600

    new-instance v2, Lcom/android/launcher3/taskbar/x0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/x0;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateStartButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_26

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    const v1, 0x7f120605

    new-instance v2, Lcom/android/launcher3/taskbar/v0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/launcher3/taskbar/v0;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateStartButton(ILandroid/view/View$OnClickListener;)V

    :goto_26
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_3c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p1

    const p2, 0x7f120602

    new-instance v0, Lcom/android/launcher3/taskbar/w0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/w0;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateEndButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_4d

    :cond_3c
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p2}, Lcom/android/launcher3/taskbar/TaskbarEduController;->access$100(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object p2

    const v1, 0x7f120603

    new-instance v2, Lcom/android/launcher3/taskbar/v0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/taskbar/v0;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;II)V

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateEndButton(ILandroid/view/View$OnClickListener;)V

    :goto_4d
    return-void
.end method
