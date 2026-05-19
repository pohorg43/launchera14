.class public final synthetic Lcom/android/wm/shell/windowdecor/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/n;->a:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/n;->a:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->a(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    return-void
.end method
