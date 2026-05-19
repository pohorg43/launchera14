.class public Lq1/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/i;->clearOnDetach()Lq1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq1/i;


# direct methods
.method public constructor <init>(Lq1/i;)V
    .registers 2

    iput-object p1, p0, Lq1/i$a;->a:Lq1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lq1/i$a;->a:Lq1/i;

    invoke-virtual {p0}, Lq1/i;->resumeMyRequest()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lq1/i$a;->a:Lq1/i;

    invoke-virtual {p0}, Lq1/i;->pauseMyRequest()V

    return-void
.end method
