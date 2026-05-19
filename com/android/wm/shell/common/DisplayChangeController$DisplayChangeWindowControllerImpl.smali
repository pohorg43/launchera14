.class Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;
.super Landroid/view/IDisplayChangeWindowController$Stub;
.source ""


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayChangeWindowControllerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayChangeController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-direct {p0}, Landroid/view/IDisplayChangeWindowController$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;Lcom/android/wm/shell/common/DisplayChangeController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->lambda$onDisplayChange$0(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    return-void
.end method

.method private synthetic lambda$onDisplayChange$0(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayChangeController;->access$200(Lcom/android/wm/shell/common/DisplayChangeController;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    return-void
.end method


# virtual methods
.method public onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayChangeController;->access$100(Lcom/android/wm/shell/common/DisplayChangeController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v8, Lcom/android/wm/shell/common/b;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/common/b;-><init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    invoke-interface {v0, v8}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
