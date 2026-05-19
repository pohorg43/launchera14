.class Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;
.super Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDragAndDropImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    return-void
.end method

.method public static synthetic a([ZLcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->lambda$isReadyToHandleDrag$0([ZLcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method

.method private static synthetic lambda$isReadyToHandleDrag$0([ZLcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 3

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Z

    move-result p1

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    return-void
.end method

.method public isReadyToHandleDrag()Z
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    new-instance v2, Lcom/android/wm/shell/draganddrop/c;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/draganddrop/c;-><init>([Z)V

    const-string v3, "isReadyToHandleDrag"

    invoke-static {p0, v3, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    aget-boolean p0, v1, p0

    return p0
.end method
