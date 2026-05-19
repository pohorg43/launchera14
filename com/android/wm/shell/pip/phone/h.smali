.class public final synthetic Lcom/android/wm/shell/pip/phone/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/h;->a:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method


# virtual methods
.method public final onPipTransitionStateChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/h;->a:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->b(Lcom/android/wm/shell/pip/phone/PipController;II)V

    return-void
.end method
