.class Lcom/android/launcher3/taskbar/OplusRotationButtonController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/OplusRotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusRotationButtonController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusRotationButtonController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController$1;->this$0:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController$1;->this$0:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->access$000(Lcom/android/launcher3/taskbar/OplusRotationButtonController;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->updateResources(ZZ)V

    return-void
.end method
