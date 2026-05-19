.class public final synthetic Lcom/android/launcher3/taskbar/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/y0;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/y0;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->b(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
