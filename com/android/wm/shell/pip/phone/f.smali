.class public final synthetic Lcom/android/wm/shell/pip/phone/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/f;->a:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method


# virtual methods
.method public final onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/f;->a:Lcom/android/wm/shell/pip/phone/PipController;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->g(Lcom/android/wm/shell/pip/phone/PipController;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
