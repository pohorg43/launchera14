.class public final synthetic Lcom/android/wm/shell/common/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/DevicePostureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DevicePostureController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/a;->a:Lcom/android/wm/shell/common/DevicePostureController;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/a;->a:Lcom/android/wm/shell/common/DevicePostureController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/DevicePostureController;->c(Lcom/android/wm/shell/common/DevicePostureController;I)V

    return-void
.end method
