.class public final synthetic Lcom/oplus/quickstep/dock/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/dock/DockFeedbackEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/a;->a:Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/dock/a;->a:Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->a(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
