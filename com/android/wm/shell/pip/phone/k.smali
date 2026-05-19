.class public final synthetic Lcom/android/wm/shell/pip/phone/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/k;->a:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/k;->a:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->e(Lcom/android/wm/shell/pip/phone/PipController;I)V

    return-void
.end method
