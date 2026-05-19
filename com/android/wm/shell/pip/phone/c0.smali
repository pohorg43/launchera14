.class public final synthetic Lcom/android/wm/shell/pip/phone/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/c0;->a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/c0;->a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->a(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
