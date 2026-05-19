.class Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
