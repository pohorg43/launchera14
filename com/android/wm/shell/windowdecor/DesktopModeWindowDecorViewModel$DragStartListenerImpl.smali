.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragStartListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    return-void
.end method


# virtual methods
.method public onDragStart(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    return-void
.end method
