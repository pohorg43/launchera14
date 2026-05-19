.class public final synthetic Lcom/oplus/zoom/zoommenu/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/a;->a:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/a;->a:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->d(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
