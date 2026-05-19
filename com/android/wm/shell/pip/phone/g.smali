.class public final synthetic Lcom/android/wm/shell/pip/phone/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method


# virtual methods
.method public final onTabletopModeChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->c(Lcom/android/wm/shell/pip/phone/PipController;Z)V

    return-void
.end method
