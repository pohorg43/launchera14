.class final Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarInsetsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/DeviceProfile;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;->invoke(Lcom/android/launcher3/DeviceProfile;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    return-void
.end method
