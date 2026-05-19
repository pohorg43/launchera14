.class public final synthetic Lcom/android/launcher3/views/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/views/OplusFloatingIconView;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/d;->a:Lcom/android/launcher3/views/OplusFloatingIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/d;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/views/d;->a:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/d;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->i(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V

    return-void
.end method
