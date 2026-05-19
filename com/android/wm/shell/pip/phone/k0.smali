.class public final synthetic Lcom/android/wm/shell/pip/phone/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/k0;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/k0;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->a(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
